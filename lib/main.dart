import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agendar citas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dr Simmy'),),
      body: Column(
       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

 Center(
   child: SizedBox(
     width: 300,
     child: TextFormField(
       decoration: InputDecoration(labelText: 'Email'),
     )),
 ),
 Padding(
   padding: const EdgeInsets.all(8.0),
   child: TextButton(onPressed: ()=>{}, child: Text('Entrar')),
 )
        ]
      ),
    );
  }
}