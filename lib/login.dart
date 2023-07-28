
import 'package:flutter/material.dart';
import 'package:healthapp/signup.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeObscureText = true;

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            children: [
              SizedBox(height: 150,),
              //1st item of column
              Center(child: Image.asset('assets/logo.png', scale: 3)),
              //Giving space between logo and text
              SizedBox(height: 30,),
              //Space
              Text('Log In'),
              SizedBox(height: 30,),
              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  hintText: 'Login',
                  prefixIcon: Icon(Icons.person, color: Colors.blue,),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 2, color: Colors.blue), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),

              ),
              SizedBox(
                height: 30,
              ),

              TextField(
                controller: passwordController,
                obscureText: changeObscureText ,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.blue,),
                  suffixIcon: GestureDetector(
                      onTap: (){

                        setState(() {
                          changeObscureText = !changeObscureText;
                        });

                      },
                      child: Icon(Icons.remove_red_eye, color: Colors.blue,)),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 2, color: Colors.blue), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password'),
                ],
              ),

              TextButton(onPressed: (){

               // if(userNameController.text == 'suman@gmail.com' && passwordController.text == 'suman123'){

                  Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SignUpPage('Texas', 'texas@123', '98123456');

                  }));
               // }
                //else{
                //  print('error');
               // }



                print(userNameController.text);
                print(passwordController.text);

              }, child: Text('go to sign up'))



            ],
          ),
        ),

      ),
    );
  }
}



