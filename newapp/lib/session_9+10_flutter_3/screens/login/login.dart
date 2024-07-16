/// to transfer between screens we can use "Navigator" function
/// add Navigator function in the "onPress" factor in ElevatedButton
/// Navigator.pushNamed: keep the old screen open in background and open the new one
///back arrow will generated automatically in App bar as we use pushNamed and the old screen stiull exist in backgrounf
///Navigator.pushReplacementNamed: close old screen and open new screen, therfore it sis not have a back arrow in Appbar
///Navigator.pop: close currant screen (such as back)
///
///

import 'package:flutter/material.dart';
import 'package:newapp/session_9+10_flutter_3/screens/home2/home_screen2.dart';
import 'package:newapp/session_9+10_flutter_3/screens/register/register.dart';

class LoginScreen extends StatelessWidget {
  static String routename = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Login",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context,
                        HomeScreen2
                            .routename); // to transfear to anouther screen
                  },
                  child: Text("Home Screen")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.routename);
                  },
                  child: Text("Register Screen")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("POP check")),
            ],
          ),
        ));
  }
}
