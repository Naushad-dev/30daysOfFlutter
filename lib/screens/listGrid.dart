import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //one way of giving data to listView builder
    // var names=['Naushad','Kaif','Anwar','chetan','Ram','Arman','Israr','Khanshab'];
    // var numbers=['123456','87896','78965','456221','4569','78546','4785','78896'];

    // another way of giving data to listView builder
    Map names1 = {
      'sname': ['Naushad', 'Kaif', 'Anwar'],
      'lname': ['Khan', 'shah', 'khan']
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade800,
        title: Text('ListGrid'),
      ),
      body: gridviewbuilder(),
    );
  }
}

Widget listview2() {
  Map names1 = {
    'sname': ['Naushad', 'Kaif', 'Anwar'],
    'lname': ['Khan', 'shah', 'khan']
  };
  return ListView.builder(
    //listviewbuilder leta hai itemcount jisme hame uper ki list ka length dena hota hai aur itembuilder mai ek function dena hota hai jisme list ka index aur  context pass karte hai
    itemCount: names1.length + 1,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text(names1['sname'][index]),
            subtitle: Text(names1['lname'][index])),
      );
    },
  );
}

Widget gridview() {
  return GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
    children: [
      Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.yellow, blurRadius: 10.0)]),
          child: Card(
            child: Center(
              child: Text('Naushad'),
            ),
          )),
      Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.yellow, blurRadius: 10.0)]),
          child: Card(
            child: Center(
              child: Text('Naushad'),
            ),
          )),
      Container(
          child: Card(
        child: Center(
          child: Text('Naushad'),
        ),
      )),
      Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.yellow, blurRadius: 10.0)]),
          child: Card(
            child: Center(
              child: Text('Naushad'),
            ),
          )),
      Container(
          child: Card(
        child: Center(
          child: Text('Naushad'),
        ),
      )),
      Container(
          child: Card(
        child: Center(
          child: Text('Naushad'),
        ),
      )),
      Container(
          child: Card(
        child: Center(
          child: Text('Naushad'),
        ),
      )),
      Container(
          child: Card(
        child: Center(
          child: Text('Naushad'),
        ),
      ))
    ],
  );
}

Widget gridviewbuilder() {
  Map names1 = {
    'sname': ['Naushad', 'Kaif', 'Anwar'],
    'lname': ['Khan', 'shah', 'khan']
  };
  return GridView.builder(
      itemCount: names1.length + 1,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.yellow, blurRadius: 10.0)]),
            child: Card(
              child: Center(
                child: Text(names1['sname'][index]),
              ),
            ));
      });
}
