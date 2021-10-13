import 'package:flutter/material.dart';

const kRegisterLoginButtonText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500
);
const kRegisterLoginButton = Color(0xFF0A0D22);

class RegisterLoginButton extends StatelessWidget {
  RegisterLoginButton({@required this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                  onTap: onTap,
                  child: Container(
                   child: Center(
                      child: Text(
                        buttonTitle,
                         style: kRegisterLoginButtonText),
                         ),
                    color: kRegisterLoginButton,
                    margin: EdgeInsets.only(top: 10.0),
                    width: double.infinity,
                    height: 60.0,
                    // shape: RoundedRectangleBorder(
                    //      borderRadius: BorderRadius.circular(12), 
                    // )
                  ),
                );
  }
}

