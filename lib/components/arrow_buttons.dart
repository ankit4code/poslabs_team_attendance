import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poslabs_team_attendance/utils/const.dart';

class ArrowButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const ArrowButton({Key key,@required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onPressed(),
      child: Container(
        child: Center(child: Icon(FontAwesomeIcons.arrowRight,color: Colors.white,)),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [kThemeBlue, kThemeBlueDark]),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}