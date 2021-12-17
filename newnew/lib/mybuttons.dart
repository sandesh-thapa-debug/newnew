import 'package:flutter/material.dart';

class MyButoonsState extends StatefulWidget {
  const MyButoonsState({ Key? key }) : super(key: key);

  @override
  __MyButoonsStateState createState() => __MyButoonsStateState();
}

class __MyButoonsStateState extends State<MyButoonsState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('buttom example'),),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 20,),
            TextButton(
              style: TextButton.styleFrom(
                side: BorderSide(color: Colors.blue, width: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
                minimumSize: Size(150, 70),
                padding: EdgeInsets.all(20),
                // textStyle: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 30,
                // ),
                primary: Colors.red,
                backgroundColor: Colors.red,
                elevation: 50,
                shadowColor: Colors.amber
              ),
              onPressed: (){
                print('u have sigle click');
              }, 
              child: Text('text'),),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('elevated'),),

             SizedBox(height: 20,),
            OutlinedButton(onPressed: (){}, child: Text('outline'),),
            ElevatedButton(onPressed: () {}, 
            child: Icon(
              Icons.wifi,
              size: 40,
            ),),
            SizedBox(height: 20,),
            OutlinedButton.icon(onPressed: (){},
             icon: Icon(
               Icons.people,
               size: 40,
             ),
              label: Text('click here',
              textScaleFactor: 2,),)
          ],),
        ),
      
    );
  }
}