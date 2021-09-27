import 'package:flutter/material.dart';
import 'package:profiles_app/classes/authenticationProfile.dart';
import 'package:profiles_app/screens/homeScreen.dart';
import 'package:provider/provider.dart';

import 'classes/accountProvider.dart';
import 'screens/loginScreen.dart';
import 'screens/signUpScreen.dart';
import 'screens/splashScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AccountProvider>(
          create: (ctx)=>AccountProvider(),
        ),
        ChangeNotifierProvider<AuthenticationProfile>(
          create: (ctx)=>AuthenticationProfile(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignUpScreen.routeName: (context) => SignUpScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        LoginScreen.routeName:(context)=> LoginScreen()
      },
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
          accentColor: Colors.red),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}
