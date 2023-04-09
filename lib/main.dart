import 'package:flutter/material.dart';
import 'package:tugas4_tpm/login.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}