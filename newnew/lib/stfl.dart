import 'package:flutter/material.dart';
class stflExample extends StatefulWidget {
  const stflExample({ Key? key }) : super(key: key);

  @override
  _stflExampleState createState() => _stflExampleState();
}

class _stflExampleState extends State<stflExample> {
  String name='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black54,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value){  //onSubmitted
                  setState(() {
                    name=value;
                  });
                  
                  print('Entred named is $name');
                },
                
                //autocorrect:true,

                // maxLines: null,
                // maxLength: 4,
                //textInputAction: TextInputAction.continueAction, send tick lai change garne
                //keyboardType: TextInputType.number.emailaddress.phone,
                // autocorrect: true,
                // obscuringCharacter: '%', 
                // obscureText: true,
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  ),
                decoration: InputDecoration(
                  labelText: 'Name:',
                   hintText: 'enter your name:',
                   icon: Icon(Icons.people),
                   border: OutlineInputBorder(),
                   
                ),
              ),
              Text('your name is $name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              

            ],),
        ),),
      
    );
  }
}