


import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  var name;
  var password;
  var phoneNumber;
  SignUpPage(String name, String password, String phoneNumber ){
    this.name = name;
    this.password = password;
    this.phoneNumber = phoneNumber;

  }

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.name),

      ),
      body: TextButton(onPressed: (){

      Navigator.pop(context);
      },child: Text('Go back to Login page'),),
    );
  }
}


class ThirdPage extends StatelessWidget {
  //const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Third Page'),
      ),
    );
  }
}












