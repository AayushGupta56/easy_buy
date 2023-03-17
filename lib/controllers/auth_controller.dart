import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_buy/consts/consts.dart';
import 'package:get/get.dart';

class authController extends GetxController{
  Future<UserCredential?> loginMethod({email,password,context})async{
    UserCredential? userCredential;
    try{
       userCredential=await auth.signInWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch(e){
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }
  Future<UserCredential?> signupMethod({email,password,context})async{
    UserCredential? userCredential;
    try{
      userCredential=await auth.createUserWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch(e){
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }
}