import 'dart:ffi';

import 'package:flutter/material.dart';


class sum extends StatefulWidget {
  const sum({ Key? key }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}


class _MyTextFieldState extends State<sum> {
  String name='';
  String name1='';
  String res='';
  bool validate=false;
  bool validate1=false;


  //step-1

  TextEditingController mycontroller=TextEditingController();
  TextEditingController mycontroller1=TextEditingController();

  @override
  //step1
  void dispose(){
    mycontroller.dispose();
    mycontroller1.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField retrive')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column
        (children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              //step 2
              controller: mycontroller,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration( 
                labelText: 'First number',
                border: OutlineInputBorder(),
                errorText: validate? "field cannot be empty":null,
                errorStyle: TextStyle(fontSize: 20),

              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              //step 2
              controller: mycontroller1,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration( 
                labelText: 'Second number',
                // hintText: 'Enter your Last name',
                border: OutlineInputBorder(),
                errorText: validate1? "field cannot be empty":null,
                errorStyle: TextStyle(fontSize: 20),

              ),
            ),
          ),


          SizedBox(height: 20),
          // Text(name,textScaleFactor: 3,),
          // Text(name1,textScaleFactor: 3,),
          FloatingActionButton(
        onPressed: (){
          setState(() {
            //step3 retriving the data
            
            name=mycontroller.text;
            name1=mycontroller1.text;

            name.isEmpty? validate = true : validate = false;
            
            name1.isEmpty? validate1 = true : validate1 = false;
            if( name.isNotEmpty && name1.isNotEmpty){
                int sum= int.parse(name)+ int.parse(name1); 
                res= sum.toString();
            }else{
              res='';
            }
            
          });
        },
        child:Text("sum"),
      ),
      SizedBox(
        height:20,
      ),
      Text(
        res,
        textScaleFactor: 2,
      ),


        ],
        ),
      ),
      
    );
  }
}