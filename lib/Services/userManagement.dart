 import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserManagement{
  
  storeNewUser(userData,context)
  {
    Firestore.instance.collection('/user').add(userData).then((value)
    
        {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed('/homepage');
        }).catchError((e)
    {
      print(e);
    }
    );
  }
}  