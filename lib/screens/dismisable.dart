import 'package:flutter/material.dart';

class DisMissible extends StatefulWidget {
  const DisMissible({Key? key}) : super(key: key);

  @override
  State<DisMissible> createState() => _DisMissibleState();
}

class _DisMissibleState extends State<DisMissible> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = [
      'Mango',
      'Banana',
      'Kivy',
      'apple',
      'Graps',
      'gavava'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible widget"),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: ((context, index) {
            final faal = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text('Successfully implemented swipped right')));
                  }
                  if (direction == DismissDirection.endToStart) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Swipped left')));
                  }
                },
                key: Key(faal),
                background: Container(color: Colors.red),
                secondaryBackground: Container(color: Colors.green),
                child: Card(
                  child: ListTile(title: Text(fruits[index])),
                ));
          })),
    );
  }
}
