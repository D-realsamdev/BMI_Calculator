import 'dart:ui';
import 'package:bmi_calculator/components/login_register_button.dart';
import 'package:bmi_calculator/components/reusable_form_feild.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical:80.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Expanded(
                child: Image.asset('images/logo.png',
                 width: 100.0,
                height: 100.0,
                    ),
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
            ReusableFormField(
              hintText: 'Confirm Password',
              prefixIcon: Icon(Icons.password_outlined),
            ),
            SizedBox(
              height: 40.0
            ),
             RegisterLoginButton(
                buttonTitle: 'Sign Up',
                onTap: (){}
          ),
          SizedBox(
              height: 70.0
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 5.0,
                ),
              GestureDetector(
                child: Text(
                  'Sign In',
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
    );
  }
}
