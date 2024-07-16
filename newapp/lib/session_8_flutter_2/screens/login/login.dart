/// to transfer between screens we can use "Navigator" function
/// add Navigator function in the "onPress" factor in ElevatedButton
/// Navigator.pushNamed: keep the old screen open in background and open the new one
///back arrow will generated automatically in App bar as we use pushNamed and the old screen stiull exist in backgrounf
///Navigator.pushReplacementNamed: close old screen and open new screen, therfore it sis not have a back arrow in Appbar
///Navigator.pop: close currant screen (such as back)
///
///

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
                        context, "home2"); // to transfear to anouther screen
                  },
                  child: Text("Home Screen")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "register");
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
