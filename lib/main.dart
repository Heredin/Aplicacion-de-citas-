import 'package:email_validator/email_validator.dart';
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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _emailForm=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dr Simmy'),),
      body: Form(
        key: _emailForm,
              child: Center(
                child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

  SizedBox(
     width: 300,
     child: TextFormField(
       validator: (value)=>value.isEmpty?"Correo requerido":EmailValidator.validate(value)?null:"Correo Inavalido",
         decoration: InputDecoration(labelText: 'Email'),
     )),
 Padding(
   padding: const EdgeInsets.all(8.0),
   child: TextButton(onPressed: ()=>{
     if(_emailForm.currentState.validate()){
print('Acceso concedido!')
     }
   }, child: Text('Entrar')),
 )
          ]
        ),
              ),
      ),
    );
  }
}