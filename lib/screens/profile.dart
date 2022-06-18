import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 470,
                width: double.infinity,
                child: Text('Hello '),
              ),
              Container(
                height: 430,
                width: double.infinity,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/30/bc/b1/30bcb12a62d96fdf82a8dc68d00fe0da.jpg')),
              ),
              Positioned(
                  bottom: 0,
                  right: 10,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/originals/30/bc/b1/30bcb12a62d96fdf82a8dc68d00fe0da.jpg'),
                    radius: 45,
                  ))
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Will Madrid win this Season ?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'This is small Description dummy text.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconrow('20', Icons.favorite_sharp),
                  iconrow('20', Icons.upload_file_outlined),
                  iconrow('20', Icons.comment_bank),
                  iconrow('20', Icons.face_outlined)
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
                "Dummy text is also used to demonstrate the appearance of different typefaces and layouts, and in general the content of dummy text is nonsensical. Due to its ext usually consists of a more or less random series of words or syllables. This prevents repetitive patterns from impairing the overall visual impression and facilitates the comparison of different typefaces. Furthermore, it is advantageous when the dummy text is relatively realistic so that the layout impression of the final publication is not compromised."),
          )
        ],
      ),
    );
  }
}

Widget iconrow(String text, IconData icon) {
  return Row(
    children: [
      Text(text),
      SizedBox(
        width: 10,
      ),
      Icon(
        icon,
        color: Colors.red,
      )
    ],
  );
}
