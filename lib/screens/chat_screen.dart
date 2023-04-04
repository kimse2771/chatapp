import 'package:chatapp/chatting/chat/message.dart';
import 'package:chatapp/chatting/chat/new_message.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);


  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _authencation = FirebaseAuth.instance;
  User? loggedUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try{
      final user = _authencation.currentUser;
      if (user != null) {
        loggedUser = user;
        print(loggedUser!.email);
      }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat screen'),
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app_sharp),//로그아웃
            onPressed: (){
              _authencation.signOut();


            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded
              (
                child: Messages()
            ),
            NewMessage(),
          ],
        ),
      )
    );
  }
}
