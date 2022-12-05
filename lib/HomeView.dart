import 'package:flutter/material.dart';
import 'Signup.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(shrinkWrap: true, children: [
      const Text(
        "Welcome",
        style: TextStyle(fontSize: 30),
      ),
      Expanded(
        flex: 3,
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(30.0),
          color: Colors.white,
          child: Image.asset('assets/images/NPSLogo.png'),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          child: const Text(
            "Park List",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      getTextWidgets(context),
    ]));
  }

  Widget getTextWidgets(BuildContext c) {
    List<Widget> list = <Widget>[];
    List<String> strings = [
      'Acadia National Park',
      'Arches National Park',
      'Badlands National Park',
      'Big Bend National Park',
      'Biscayne National Park',
      'Black Canyon of the Gunnison National Park',
      'Bryce Canyon National Park',
      'Canyonlands National Park',
      'Capitol Reef National Park',
      'Carlsbad Caverns National Park',
      'Channel Islands National Park',
      'Clayton Co International Park, Jonesboro GA',
      'Congaree National Park',
      'Congaree National Park Wilderness',
      'Crater Lake National Park',
      'Cuyahoga Valley National Park',
      'Death Valley National Park',
      'Denali National Park',
      'Dry Tortugas National Park',
      'Everglades National Park',
      'Fort Hunt National Park',
      'Fort Pickens National Park',
      'Gateway Arch National Park',
      'Glacier Bay National Park',
      'Glacier National Park',
      'Grand Canyon National Park',
      'Grand Teton National Park',
      'Great Basin National Park',
      'Great Sand Dunes National Park and Preserve',
      'Great Smoky Mountains National Park',
      'Guadalupe Mountains National Park',
      'Haleakala National Park',
      'Hawaii Volcanoes National Park',
      'Hot Springs National Park',
      'Indiana Dunes National Park',
      'Isle Royale National Park',
      'Joshua Tree National Park',
      'Katmai National Park',
      'Kenai Fjords National Park',
      'Kings Canyon National Park',
      'Lassen Volcanic National Park',
      'Mammoth Cave National Park',
      'Mesa Verde National Park',
      'Mount Rainier National Park',
      'North Cascades National Park',
      'Olympic National Park',
      'Petrified Forest National Park',
      'Pinnacles National Park',
      'Redwood National Park',
      'Rocky Mountain National Park',
      'Saguaro National Park',
      'Sequoia National Park',
      'Shenandoah National Park',
      'Theodore Roosevelt National Park',
      'Voyageurs National Park',
      'Wind Cave National Park',
      'Wolf Trap National Park for the Performing Arts',
      'Yellowstone National Park',
      'Yosemite National Park',
      'Zion National Park'
    ];

    for (var i = 0; i < strings.length; i++) {
      list.add(Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(c).size.width,
          child: Text(
            strings[i],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )));
    }

    return Column(children: list);
  }
}
