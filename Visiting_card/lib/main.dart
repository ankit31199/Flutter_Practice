import 'package:flutter/material.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                foregroundImage: AssetImage('assets/images/beharamii.jpg'),


              ),
              Text('Beharamii', style: TextStyle(fontSize: 48.0,
                  fontWeight: FontWeight.bold,
              fontFamily: 'BarlowCondensed' ),),
              Text('FLUTTER DEVELOPER', style: TextStyle(
                fontSize: 18.0, fontFamily: 'BarlowCondensed',color: Colors.pink, fontStyle: FontStyle.italic,
              ), ),

              SizedBox(height: 20.0,
                width: 150.0,
                child: Divider(
                  height: 10.0,
                  color: Colors.black,
                ),),
              Padding(padding: EdgeInsets.all(2.0),
                child: Card(
                                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: Padding(padding: EdgeInsets.all(5.0),
                    child:ListTile(
                      leading: Icon(Icons.phone, size: 30.0,color: Colors.black,),
                      title: Text('+91 7607549474', style: TextStyle(
                        color: Colors.teal,fontSize: 20.0,fontFamily: 'BarlowCondensed',
                      ),),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(2.0),
                child: Card(


                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),

                  child: Padding(padding: EdgeInsets.all(5.0),
                    child: ListTile(
                        leading:Icon(Icons.email,color: Colors.black,size: 30.0,),
                        title: Text('ankit@xyz',style: TextStyle(fontFamily: 'BarlowCondensed',fontSize: 20.0,color: Colors.teal,
                        ),),
                    ),
                    ),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}


