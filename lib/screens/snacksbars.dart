import 'package:flutter/material.dart';


class SnackBars extends StatelessWidget {
  const SnackBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var snackbar=SnackBars();
    return Scaffold(
      appBar: AppBar(title: Text("SnackBars "),
      backgroundColor: Colors.green,),
      body: Container(
    child: Center(child: ElevatedButton(child: Text('Press to show'),onPressed: (){
      final snackbar=SnackBar(content: Text('Hellow How Are you ?'),
      behavior: SnackBarBehavior.floating,
      elevation: 10.0,
      
      );
     ScaffoldMessenger.of(context).showSnackBar(snackbar);
    },),),
  ),
      
    );
  }
}

