import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken);

  final UserCredential authResult =
      await _auth.signInWithCredential(credential);
  final User? user1 = authResult.user;

  if (user1 != null) {
    assert(user1.isAnonymous);
  }
  assert(await user1?.getIdToken() != null);

  final User currentUser = await _auth.currentUser!;
  assert(currentUser.uid == user1?.uid);

  return user1;
}

void signOutGoogle() async {
  await googleSignIn.signOut();
}
