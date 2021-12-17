import 'dart:ffi';

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({ Key? key }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}


class _MyTextFieldState extends State<MyTextField> {
  String name='';
  bool validate=false;


  //step-1

  TextEditingController mycontroller=TextEditingController();

  @override
  //step1
  void dispose(){
    mycontroller.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField retrive')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column
        (children: [
          TextField(
            //step 2
            controller: mycontroller,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            decoration: InputDecoration( 
              labelText: 'Name',
              hintText: 'Enter your name',
              border: OutlineInputBorder(),
              errorText: validate? "field cannot be empty":null,
              errorStyle: TextStyle(fontSize: 20),

            ),
          ),
          
          SizedBox(height: 20),
          Text(name,textScaleFactor: 3,),

        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            //step3 retriving the data
            name=mycontroller.text;
            name.isEmpty? validate = true : validate = false;
          });
        }
      ,child: Icon(Icons.add),
      ),
    );
  }
}