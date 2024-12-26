import 'package:calapp_app/constant.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              MyButton(title: 'login'),
              MyButton(title: 'signup'),
              MyButton(title: 'email'),
              MyButton(title: 'contact'),






















            ],
          ),
        ),
      ),
    );
  }
}

// Text('murari kuamer', style: TextStyle(color: blue)),
// Text('murari kuamer', style: TextStyle(color: blue)),
// Text('murari kuamer', style: TextStyle(color: blue)),
// Text('murari kuamar',style: codingTech),
// Text('murari kuamer', style: TextStyle(color: green)),
// Text('murari kuamer', style: TextStyle(color: g)),
// Text('murari kuamer', style: TextStyle(color: blue)),
// Text('murari kuamer', style: TextStyle(color: blue)),
// Text('murari kuamer', style: TextStyle(color: blue)),
// Text('murari kuamer', style: TextStyle(color: blue)),

// Container(
//   height: 50,
//   decoration: BoxDecoration(
//     color:g,
//     borderRadius: BorderRadius.circular(20),
//
//   ),
//   child: Center(child: Text('LOGIN')),
// ),Container(
//   height: 50,
//   decoration: BoxDecoration(
//     color:g,
//     borderRadius: BorderRadius.circular(20),
//
//   ),
//   child: Center(child: Text('LOGIN')),
// ),
// Container(
//   height: 50,
//   decoration: BoxDecoration(
//     color:g,
//     borderRadius: BorderRadius.circular(20),
//
//   ),
//   child: Center(child: Text('LOGIN')),
// ),
// Container(
//   height: 50,
//   decoration: BoxDecoration(
//     color:g,
//     borderRadius: BorderRadius.circular(20),
//
//   ),
//   child: Center(child: Text('LOGIN')),
// ),
// Container(
//   height: 50,
//   decoration: BoxDecoration(
//     color:g,
//     borderRadius: BorderRadius.circular(20),
//
//   ),
//   child: Center(child: Text('LOGIN')),
// ),







class MyButton extends StatelessWidget {
  final String title;
  const MyButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color:red,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Center(child: Text(title,style: TextStyle(color:colorOne,fontWeight: FontWeight.w100,fontSize: 25),),),
      ),
    );
  }
}

