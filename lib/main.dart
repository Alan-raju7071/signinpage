import 'package:flutter/material.dart';
import 'package:signinpage/view/home1/home1.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home1(
        
      ),
      
    );
  }
}
void main(){
  runApp(Myapp());
}