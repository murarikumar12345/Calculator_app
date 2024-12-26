import 'package:calapp_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'components/component_button.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
   var userInpurt ='';
   var result ='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(child: Text(userInpurt.toString(),style: TextStyle(color: Colors.white,fontSize: 30),)),
                      Text(result.toString(),style: TextStyle(color: Colors.white,fontSize: 30),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(title: 'Ac',onpress: (){
                          userInpurt ='';
                          result ='';
                          setState(() {

                          });
                        },),
                        Button(title: '+/-',onpress: (){
                          userInpurt +='+/-';
                          setState(() {

                          });
                        },),
                        Button(title: '%',onpress: (){
                          userInpurt +='%';
                          setState(() {

                          });
                        },),
                        Button(title: '/',color: gr,onpress: (){
                          userInpurt +='/';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '7',onpress: (){
                          userInpurt +='7';
                          setState((){

                          });
                        },),
                        Button(title: '8',onpress: (){
                          userInpurt +='8';
                          setState(() {

                          });
                        },),
                        Button(title: '9',onpress: (){
                          userInpurt +='9';
                          setState(() {

                          });
                        },),
                        Button(title: 'x',color: gr,onpress: (){
                          userInpurt +='x';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '4',onpress: (){
                          userInpurt +='4';
                          setState(() {

                          });
                        },),
                        Button(title: '5',onpress: (){
                          userInpurt +='5';
                          setState(() {

                          });
                        },),
                        Button(title: '6',onpress: (){
                          userInpurt +='6';
                          setState(() {

                          });
                        },),
                        Button(title: '-',color: gr,onpress: (){
                          userInpurt +='-';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '1',onpress: (){
                          userInpurt +='1';
                          setState(() {

                          });
                        },),
                        Button(title: '2',onpress: (){
                          userInpurt +='2';
                          setState(() {

                          });
                        },),
                        Button(title: '3',onpress: (){
                          userInpurt +='3';
                          setState(() {

                          });
                        },),
                        Button(title: '+',color: gr,onpress: (){
                          userInpurt +='+';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '0',onpress: (){
                          userInpurt +='0';
                          setState(() {

                          });
                        },),
                        Button(title: '.',onpress: (){
                          userInpurt +='.';
                          setState(() {

                          });
                        },),
                        Button(title: 'DEL',onpress: (){
                          userInpurt=userInpurt.substring(0,userInpurt.length-1);
                          setState(() {

                          });
                        },),
                        Button(title: '=',color: gr,onpress: (){
                          equalpress();
                          setState(() {

                          });
                        },),

                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );;
  }

  void equalpress(){
    String  finalUserInput =userInpurt;
    finalUserInput =userInpurt.replaceAll('x', '*');
    Parser p=Parser();
    Expression expression=p.parse(finalUserInput);
    ContextModel contextModel=ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result=eval.toString();

  }
}

