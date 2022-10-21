import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
      ),
      home: login()
    );
  }
}

class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email =TextEditingController();
  TextEditingController password  =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                 hintText: "username@gmail.com"
                ),
              ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "passworld"
                ),
               ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: FlatButton(onPressed:
                (){}, child: Text("login")),
                ),
            ],
        ),
      ),
      )
    );
  }
}



