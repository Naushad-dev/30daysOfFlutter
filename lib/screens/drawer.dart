
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
        backgroundColor: Colors.green.shade600,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green.shade500,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/30/bc/b1/30bcb12a62d96fdf82a8dc68d00fe0da.jpg',
                        ),
                      ),
                      Text(
                        'Naushad Khan',
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                )),
            Divider(
              height: 10.0,
            ),
            ListTile(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Contacts for mail'),
                  ),
                );
              },
              leading: Icon(Icons.contact_mail),
              title: Text('All Inbox'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Send'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text('Q1'),
                        content: Text('So do you like my app ?'),
                      );
                    });
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('All Contacts'),
            ),
            ListTile(
              leading: Icon(Icons.download_done_rounded),
              title: Text('Downloads'),
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          
          Center(
            child: ElevatedButton(
              child: Text('Click me'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text('Q1'),
                        content: Text('So do you like my app ?'),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
