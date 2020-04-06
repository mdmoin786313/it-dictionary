// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:first_app/home.dart';

// final FirebaseApp app = FirebaseApp(
//   options: FirebaseOptions(
//     googleAppID: '',
//     apiKey: '',
//     databaseURL: ''
//     )
//   )

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(title: 'Flutter app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              validator: (input) {
                if(input.isEmpty) {
                  return 'Please Provide a username';
                }
              },
              onSaved: (input) => _email = input,
              ),
              TextFormField(
              validator: (input) {
                if(input.isEmpty) {
                  return 'Please Provide a username';
                }
              },
              onSaved: (input) => _email = input,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Login'),
                )
          ],
        ),
      ),
    );
  }

  // Future<void> signIn() async {
  //   final formState = _formkey.currentState;
  //   if(formState.validate()) {
  //     formState.save();
  //     try {
  //       FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)).user;
  //       print(user);
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => Home(user: user)));
  //     } catch(e) {
  //       print(e.message);
  //     }
  //   }
  // }
}
