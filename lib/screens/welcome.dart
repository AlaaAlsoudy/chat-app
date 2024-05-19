import 'package:chaaaaaaaaaaaaaat/screens/registeration.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  static const String screenRoute='welcome_screen';
  const WelcomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset("images/logo.png"),
                ),
                const Text("Message me",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff2e386b),
                ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            MyButton(
                  color: Colors.yellow[900]!,
                  title:"Sign in",
                  onPressed: (){
                    Navigator.pushNamed(context, LoginScreen.screenRoute);
                  },
                ),
            MyButton(
              color: Colors.blue[800]!,
              title:"Register",
              onPressed: (){
                Navigator.pushNamed(context, RegisterationScreen.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}


