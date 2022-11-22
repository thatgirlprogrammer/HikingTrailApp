import 'package:flutter/material.dart';
//import 'package:starflut/starflut.dart';

enum SingingCharacter { Easy, Medium, Hard }

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  SingingCharacter? _difficulty = SingingCharacter.Easy;

  List features = [];
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  bool _value8 = false;
  bool _value9 = false;
  bool _value10 = false;
  bool _value11 = false;
  bool _value12 = false;
  bool _value13 = false;
  bool _value14 = false;
  bool _value15 = false;
  bool _value16 = false;
  bool _value17 = false;
  bool _value18 = false;
  bool _value19 = false;
//['views', 'waterfall', 'wild-flowers', 'wildlife', 'lake', 'hot-springs', 'cave', 'historic-site', 'city-walk', 'rails-trails',]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: 400,
          height: 600,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      "Select Features",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Ada'),
                      subtitle: const Text('The trail is ada accessible'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value,
                      dense: true,
                      value: _value,
                      onChanged: (bool? value) {
                        setState(() {
                          _value = value!;
                        });
                        if (_value == true) {
                          features.add('ada');
                        } else {
                          features.remove('ada');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Beach'),
                      subtitle: const Text('The trail is at a beach'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value1,
                      dense: true,
                      value: _value1,
                      onChanged: (bool? value) {
                        setState(() {
                          _value1 = value!;
                        });
                        if (_value1 == true) {
                          features.add('beach');
                        } else {
                          features.remove('beach');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Dogs-no'),
                      subtitle: const Text('Dogs are not allowed on trail '),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value2,
                      dense: true,
                      value: _value2,
                      onChanged: (bool? value) {
                        setState(() {
                          _value2 = value!;
                        });
                        if (_value2 == true) {
                          features.add('dogs-no');
                        } else {
                          features.remove('dogs-no');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Dogs'),
                      subtitle: const Text('Dogs are allowed'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value3,
                      dense: true,
                      value: _value3,
                      onChanged: (bool? value) {
                        setState(() {
                          _value3 = value!;
                        });
                        if (_value3 == true) {
                          features.add('dogs');
                        } else {
                          features.remove('dogs');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Dogs-leash'),
                      subtitle: const Text('Dogs must be on leashes'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value4,
                      dense: true,
                      value: _value4,
                      onChanged: (bool? value) {
                        setState(() {
                          _value4 = value!;
                        });
                        if (_value4 == true) {
                          features.add('dogs-leash');
                        } else {
                          features.remove('dogs-leash');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Forest'),
                      subtitle: const Text('The trail is in a forest'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value5,
                      dense: true,
                      value: _value5,
                      onChanged: (bool? value) {
                        setState(() {
                          _value5 = value!;
                        });
                        if (_value5 == true) {
                          features.add('forest');
                        } else {
                          features.remove('forest');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Kids'),
                      subtitle: const Text('The trail is kid friendly'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value6,
                      dense: true,
                      value: _value6,
                      onChanged: (bool? value) {
                        setState(() {
                          _value6 = value!;
                        });
                        if (_value6 == true) {
                          features.add('kids');
                        } else {
                          features.remove('kids');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Partially-paved'),
                      subtitle: const Text('Trail is partially-paved'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value7,
                      dense: true,
                      value: _value7,
                      onChanged: (bool? value) {
                        setState(() {
                          _value7 = value!;
                        });
                        if (_value7 == true) {
                          features.add('partially-paved');
                        } else {
                          features.remove('partially-paved');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Paved'),
                      subtitle: const Text('Trail is paved'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value8,
                      dense: true,
                      value: _value8,
                      onChanged: (bool? value) {
                        setState(() {
                          _value8 = value!;
                        });
                        if (_value8 == true) {
                          features.add('paved');
                        } else {
                          features.remove('paved');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('River'),
                      subtitle: const Text('Trail has a river'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value8,
                      dense: true,
                      value: _value8,
                      onChanged: (bool? value) {
                        setState(() {
                          _value8 = value!;
                        });
                        if (_value8 == true) {
                          features.add('river');
                        } else {
                          features.remove('river');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Strollers'),
                      subtitle: const Text('Trail can be used by strollers'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value9,
                      dense: true,
                      value: _value9,
                      onChanged: (bool? value) {
                        setState(() {
                          _value9 = value!;
                        });
                        if (_value9 == true) {
                          features.add('strollers');
                        } else {
                          features.remove('strollers');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Views'),
                      subtitle: const Text('Trail has views'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value10,
                      dense: true,
                      value: _value10,
                      onChanged: (bool? value) {
                        setState(() {
                          _value10 = value!;
                        });
                        if (_value10 == true) {
                          features.add('views');
                        } else {
                          features.remove('views');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                    /** CheckboxListTile Widget **/
                    child: CheckboxListTile(
                      title: const Text('Waterfall'),
                      subtitle: const Text('Trail has a waterfall'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value11,
                      dense: true,
                      value: _value11,
                      onChanged: (bool? value) {
                        setState(() {
                          _value11 = value!;
                        });
                        if (_value11 == true) {
                          features.add('waterfall');
                        } else {
                          features.remove('waterfall');
                        }
                      },
                    ), //CheckboxListTile
                  ),
                  Container(
                      child: Column(
                    children: features.map<Widget>((e) => Text(e)).toList()
                      ..addAll([
                        Container() //You can use addAll method and add some juicy widgets
                      ]),
                  ))
                ],
              ), //Container
            ), //Padding
          ),
        ), //Center
      ), //SizedBox
    );

    /*Column(children: <Widget>[

      TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed: () {},
        child: const Text('Search', style: TextStyle(fontSize: 20.0)),
      )
    ]));
    */
  }
}

Future<void> initPlatformState() async {
  String platformVersion;
  // Platform messages may fail, so we use a try/catch PlatformException.

  int TestCase = 3;

  /*if (TestCase == 3) {
      String Path1  = await Starflut.getResourcePath();
      String Path2 = await Starflut.getAssetsPath();
      StarCoreFactory starcore = await Starflut.getFactory();

      String FrameTag = Starflut.newLocalFrame();

      StarServiceClass Service = await starcore.initSimple("test", "123", 0, 0, []);
      await starcore.regMsgCallBackP(
              (int serviceGroupID, int uMsg, Object wParam, Object lParam) async{
            print("$serviceGroupID  $uMsg   $wParam   $lParam");
            return null;
          });
      StarSrvGroupClass SrvGroup = await Service["_ServiceGroup"];

      int Platform = await Starflut.getPlatform();
      if( Platform == Starflut.MACOS ) {
        await starcore.setShareLibraryPath(
            Path1); //set path for interface library
        bool LoadResult = await Starflut.loadLibrary(Path1+"/libpython3.9.dylib");
        print("$LoadResult");  //--load
        await Starflut.setEnv("PYTHONPATH","/Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9");
        String pypath = await Starflut.getEnv("PYTHONPATH");
        print("$pypath");
      }else if( Platform == Starflut.WINDOWS ) {
        //await starcore.setShareLibraryPath(
        //    Path1.replaceAll("\\","/")); //set path for interface library
      }
      /*---script python--*/
      bool isAndroid = await Starflut.isAndroid();
      if( isAndroid == true ){
        await Starflut.copyFileFromAssets("testcallback.py", "flutter_assets/starfiles","flutter_assets/starfiles");
        await Starflut.copyFileFromAssets("testpy.py", "flutter_assets/starfiles","flutter_assets/starfiles");
        await Starflut.copyFileFromAssets("python3.9.zip", null,null);   //desRelatePath must be null

        var nativepath = await Starflut.getNativeLibraryDir();
        var LibraryPath = "";
        if( nativepath.contains("x86_64"))
          LibraryPath = "x86_64";
        else if( nativepath.contains("arm64"))
          LibraryPath = "arm64-v8a";
        else if( nativepath.contains("arm"))
          LibraryPath = "armeabi";
        else if( nativepath.contains("x86"))
          LibraryPath = "x86";

        await Starflut.copyFileFromAssets("zlib.cpython-39.so", LibraryPath,null);
        await Starflut.copyFileFromAssets("unicodedata.cpython-39.so", LibraryPath,null);
        await Starflut.loadLibrary("libpython3.9.so");
      }

      String docPath = await Starflut.getDocumentPath();
      print("docPath = $docPath");

      String resPath = await Starflut.getResourcePath();
      print("resPath = $resPath");

      String assetsPath = await Starflut.getAssetsPath();
      print("assetsPath = $assetsPath");

      print("begin init Raw)");
      bool rr1 = await SrvGroup.initRaw("python39", Service);
      print("initRaw = $rr1");

      StarObjectClass python = await Service.importRawContext(FrameTag,"python", "", false, "");

      python.lock();

      print(await python.getValue(["_Service","_Class","_ID","_Name"]));

      print("python = "+ await python.getString());

      await SrvGroup.doFile("python", assetsPath + "/flutter_assets/starfiles/" + "testcallback.py");

      StarObjectClass CallBackObj = await Service.newObject(FrameTag,[]);
      await python.setValue("CallBackObj", CallBackObj);

      await CallBackObj.regScriptProcP("PrintHello", (StarObjectClass cleObject, String FrameTag,List paras ) async {
        print("$paras");
        return ["return from python", {"pa":1, "pb":2, "pc":3},345.4];
      });

      /*
        StarObjectClass retobj = await python.call("tt", ["hello ", "world"]);
        print("retobj  = $retobj");
        */

      var rrr = await python.call("tt", [{"a":1, "b":2, "c":3}, "world"]);
      print("return from python $rrr");

      Starflut.freeLocalFrame(FrameTag);

      await starcore.moduleExit();

      print("finish");

    }*/
}
