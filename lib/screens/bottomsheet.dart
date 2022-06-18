import 'package:flutter/material.dart';
import 'package:flutter30concept/screens/drawer.dart';
import 'package:flutter30concept/screens/listGrid.dart';
import 'package:flutter30concept/screens/profile.dart';

class BottmSheetTut extends StatefulWidget {
  const BottmSheetTut({Key? key}) : super(key: key);

  @override
  State<BottmSheetTut> createState() => _BottmSheetTutState();
}

class _BottmSheetTutState extends State<BottmSheetTut> {
  int navindex = 0;
  List<Widget> widgets = [Text('Home'), MyDrawer(), ListGrid(), ProfilePage()];

  void Ontap(int index) {
    setState(() {
      navindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.upload), label: "Upload"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: Ontap,
        currentIndex: navindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.yellow,
      ),
      body: Center(child: widgets.elementAt(navindex)),
    );
  }
}

Widget BottomMain(context) {
  return Container(
      child: ElevatedButton(
    child: Text("Click me"),
    onPressed: () {
      showModalBottomSheet(
          context: context,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('T shirts'),
                  subtitle: Text("500 💲"),
                ),
                ListTile(
                  title: Text(' shirts'),
                  subtitle: Text("400 💲"),
                ),
                ListTile(
                  title: Text('Pants'),
                  subtitle: Text("300 💲"),
                ),
                ListTile(
                  title: Text('Socks'),
                  subtitle: Text("50 💲"),
                ),
                ListTile(
                  title: Text('Jeans'),
                  subtitle: Text("500 💲"),
                ),
              ],
            );
          });
    },
  ));
}
