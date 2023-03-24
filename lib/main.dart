import 'package:chatapp/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 플러터 코어엔진 초기화 Firebase.initializeApp 실행시 필요
  await Firebase.initializeApp( // 파이어베이스 실행
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatting app',
      theme: ThemeData(
        primarySwatch: Colors.cyan

      ),
      home: LoginSignupScreen(),
    );
  }
}
