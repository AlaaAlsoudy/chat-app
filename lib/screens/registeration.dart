import 'package:flutter/material.dart';

import '../widgets/my_button.dart';
import 'login.dart';

class RegisterationScreen extends StatelessWidget {
  static const String screenRoute='registeration_screen';
  const RegisterationScreen({super.key});

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
                const SizedBox(height: 50,),
                TextField(
                  textAlign: TextAlign.center,
                  //دا ياخد القيمة اللي اليوزر دخلها ويشتغل عليها
                  onChanged: (value){},
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                    contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange,
                      width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,
                          width: 2,
                        ),
                  ),
                ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  textAlign: TextAlign.center,
                  //دا ياخد القيمة اللي اليوزر دخلها ويشتغل عليها
                  onChanged: (value){},
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                MyButton(
                    color: Colors.blue[800]!,
                    title: 'Register',
                    onPressed: (){
                      Navigator.pushNamed(context, LoginScreen.screenRoute);
                    },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

