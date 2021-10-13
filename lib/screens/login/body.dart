import 'dart:ui';
import 'package:bmi_calculator/components/login_register_button.dart';
import 'package:bmi_calculator/components/reusable_form_feild.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/screens/signup/register.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical:80.0, horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('images/logo.png',
                 width: 100.0,
                height: 100.0,
                    ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'BMI',
                  style: TextStyle(
                   color: Color(0xFF0A0D22),
                   fontWeight: FontWeight.w900,
                   fontSize: 80.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0
              ),
              ReusableFormField(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
              SizedBox(
                height: 15.0
                ),
              ReusableFormField(
                hintText: 'Password',
                prefixIcon: Icon(Icons.password_outlined),
              ),
              SizedBox(
                height: 15.0
                ),
              GestureDetector(
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFF0A0D22),
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0
              ),
               RegisterLoginButton(
                  buttonTitle: 'Login',
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
                  }
            ),
            SizedBox(
                height: 70.0
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account yet?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                  ),
                GestureDetector(
                    onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage()),
                  );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF0A0D22),
                    ),
                  ),
                )
              ],
            )
            ],
            ),
        ),
      ),
    );
  }
}
