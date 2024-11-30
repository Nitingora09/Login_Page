import 'package:flutter/material.dart';
import 'package:loginpage/RegistrationPage.dart';

import 'LoginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    initialRoute: 'login page',
    routes: {'login': (context)=> LoginPage(),
      'register' : (context)=> RegistrationPage(),
    },
  ));
}

