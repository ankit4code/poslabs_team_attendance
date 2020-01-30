import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:poslabs_team_attendance/components/arrow_buttons.dart';
import 'package:poslabs_team_attendance/dialogs/phone_otp_dialog.dart';
import 'package:poslabs_team_attendance/screens/home_screen.dart';
import 'package:poslabs_team_attendance/utils/Poslabs.dart';
import 'package:poslabs_team_attendance/utils/const.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = "/register";
  bool showMobErr=false, showMailErr=false;
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  String phone,mail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 120.0),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/poslabs_logo.png",
                height: 90.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "TEAM ATTENDANCE",
                style: TextStyle(
                  color: kThemeBlueDark,
                  fontSize: 24.0,
                  fontFamily: Poslabs.montserrat_family_bold,
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 5.0,),
                        CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'US',
                          favorite: ['US', '+91'],
                          // optional. aligns the flag and the Text left
                          alignLeft: false,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                          child: Container(
                            width: 1.0,
                            height: double.infinity,
                            color: Colors.grey,
                          ),
                        ),
                        Flexible(
                          child: TextField(
                            onChanged: (value) =>phone=value,
                            style: kTextFieldStyle,
                            keyboardType: TextInputType.phone,
                            decoration: kTextFieldDecoration,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80,
                          height: double.infinity,
                          child: ArrowButton(
                            text: "ok",
                            onPressed: (){
                              if(phone==null || phone.length==0){
                                setState(() {
                                  widget.showMailErr=false;
                                  widget.showMobErr=true;
                                });
                              }
                              else{
                                _showPhoneOTPDialog();
                              }
                            },
                          ),
                        )
                      ],
                    ),
                    decoration: kInnerDecoration,
                  ),
                ),
                height: 66.0,
                decoration: kGradientBoxDecoration,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.info,color: widget.showMobErr?kThemeRed:Colors.transparent),
                  Text("Incorrect Mobile Number",style: TextStyle(
                    fontFamily: Poslabs.montserrat_family_medium,
                      color: widget.showMobErr?kThemeRed:Colors.transparent,
                    fontSize: 16.0
                  ),)
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "OR",
                style: TextStyle(
                  color: kLightBlack,
                  fontSize: 22.0,
                  fontFamily: Poslabs.montserrat_family_semibold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 5.0,),
                        Flexible(
                          child: TextField(
                            onChanged: (value) =>mail=value,
                            style: kTextFieldStyle,
                            keyboardType: TextInputType.emailAddress,
                            decoration: kTextFieldDecoration.copyWith(
                                hintText: strEmailAddrs),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80,
                          height: double.infinity,
                          child: ArrowButton(
                            text: "ok",
                            onPressed: (){
                              if(mail==null || mail.length==0){

                                setState(() {
                                  widget.showMailErr=true;
                                  widget.showMobErr=false;
                                });
                              }
                            },
                          ),
                        )
                      ],
                    ),
                    decoration: kInnerDecoration,
                  ),
                ),
                height: 66.0,
                decoration: kGradientBoxDecoration,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.info, color: widget.showMailErr?kThemeRed:Colors.transparent),
                  Text("Incorrect Email Address",style: TextStyle(
                      fontFamily: Poslabs.montserrat_family_medium,
                      color: widget.showMailErr?kThemeRed:Colors.transparent,
                      fontSize: 16.0
                  ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPhoneOTPDialog() {
    showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6), // background color
      barrierDismissible:
      false, // should dialog be dismissed when tapped outside
      barrierLabel: "Dialog", // label for barrier
      transitionDuration: Duration(
          milliseconds:
          400), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) {
        // your widget implementation
        return SizedBox.expand(
          // makes widget fullscreen
          child: Center(child: PhoneOTP()),
        );
      },
    );
  }
}
