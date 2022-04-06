import 'package:flutter/services.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'TelaPrincipal.dart';

// TELA LOGIN
class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var ra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.book,
              color: Theme.of(context).primaryColor,
              size: 100.0,
            ),
            const SizedBox(height: 150),
             TextField(
               keyboardType: TextInputType.number,
               inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              decoration: InputDecoration(
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "RA/CPF",
                fillColor: Theme.of(context).focusColor),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Senha",
                fillColor: Theme.of(context).focusColor,),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(color:  Theme.of(context).focusColor, fontSize: 12),
              ),
              child: const Text('Esqueci a senha'),
              onPressed: () {},
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaPrincipal()),
                );
              },
              child: const Text('Avançar'),
              style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              fixedSize: const Size(150, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
              ),
              const SizedBox(height: 20),
              TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(color: Colors.red.shade900, fontSize: 17),
              ),
              child: const Text('Não possuo cadastro'),
              onPressed: () {},
            ),
          ], // <wedgie>
        ), //Column
      ), //body SingleChildScrollView
    ); //Scaford
  }
}