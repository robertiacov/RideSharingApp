

import 'package:firebase_database/firebase_database.dart';

class Userh{
  String fullName;
  String email;
  String phone;
  String id;

  Userh({

   this.email,
   this.fullName,
   this.phone,
   this.id,
  });

  Userh.fromSnapshot(DataSnapshot snapshot){
    id = snapshot.key;
    phone = snapshot.value['phone'];
    email = snapshot.value['email'];
    fullName = snapshot.value['fullname'];
  }

}