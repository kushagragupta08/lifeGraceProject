
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
/*import 'package:firebase_auth/firebase_auth.dart';
import 'firestore_class.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; */

class HomePage extends  StatefulWidget
{
  @override
  HomePageState createState()=> HomePageState();

}

class HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You are now logged in !!'),
              SizedBox(height: 15.0),

              OutlineButton(
                child: Text('Logout'),
                onPressed: (){
                  FirebaseAuth.instance.signOut().then((value){
                    Navigator.of(context).pushReplacementNamed('/landingpage');

                  }).catchError((e){
                    print(e);
                  });
                },
                borderSide: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 3.0
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }

} 