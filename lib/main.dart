import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poslabs_team_attendance/screens/auth/register_screen.dart';
import 'package:poslabs_team_attendance/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/const.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();



  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  prefs = await SharedPreferences.getInstance();

  runApp(
      BotToastInit(
        child:MaterialApp(
            navigatorObservers: [BotToastNavigatorObserver()],
            theme: ThemeData(
              primarySwatch: Colors.red,
              primaryColor: Colors.white,
              disabledColor: Colors.grey[50],
              cardColor: Colors.white,
              canvasColor: Colors.white,
              appBarTheme: AppBarTheme(
                elevation: 3.0,
              ),
            ),
          home: (RegisterScreen()),
          debugShowCheckedModeBanner: false,
          routes: {
             RegisterScreen.routeName:(context)=>RegisterScreen(),
             HomePage.routeName:(context)=>HomePage(),
          },
        )
      )
  );

}

