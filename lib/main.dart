import 'package:chaaaaaaaaaaaaaat/screens/chat.dart';
import 'package:chaaaaaaaaaaaaaat/screens/login.dart';
import 'package:chaaaaaaaaaaaaaat/screens/registeration.dart';
import 'package:chaaaaaaaaaaaaaat/screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';


import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: WelcomeScreen.screenRoute,
        routes:{
          WelcomeScreen.screenRoute: (context) =>const WelcomeScreen(),
          LoginScreen.screenRoute: (context) =>const LoginScreen(),
          RegisterationScreen.screenRoute: (context) =>const RegisterationScreen(),
          ChatScreen.screenRoute: (context) =>const ChatScreen(),
        }
    );
  }
}

