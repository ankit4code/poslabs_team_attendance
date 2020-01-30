import 'package:flutter/material.dart';

class PhoneOTP extends StatefulWidget {

  @override
  _PhoneOTPState createState() => _PhoneOTPState();
}

class _PhoneOTPState extends State<PhoneOTP> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)), //this right here
        margin: EdgeInsets.symmetric(horizontal: 16.0),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  child: Image.asset("images/ic_close.png",width: 22,),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
            
        ])
        ),
      ),
    );
  }
}
