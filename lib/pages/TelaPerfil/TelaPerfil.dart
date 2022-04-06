import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Meu Perfil'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        ),
        body:(
          Padding( 
            padding:  const EdgeInsets.all(10),
            child: Column(
              children: const [
                 SizedBox(height: 30),
                 Text(  
                  "ALTERAR DADOS:",  
                    style: TextStyle(  
                    fontSize: 20,  
                    color: Color.fromARGB(255, 86, 201, 168),                     
                    ),  
                  ),
                 Padding(                         
                  padding:  EdgeInsets.fromLTRB(15, 10, 15, 15),
                  child: TextField(
                  decoration: InputDecoration(
                  labelText: "Nome:",
                  border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(25.0)))),
                  ),
                ),
                Padding(                         
                  padding:  EdgeInsets.fromLTRB(15, 10, 15, 15),
                  child: TextField(
                  decoration: InputDecoration(
                  labelText: "Endereço:",
                  border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(25.0)))),
                  ),
                ),
                Padding(                         
                  padding:  EdgeInsets.fromLTRB(15, 10, 15, 15),
                  child: TextField(
                  decoration: InputDecoration(
                  labelText: "Telefone:",
                  border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(25.0)))),
                  ),
                ),
                Padding(                         
                  padding:  EdgeInsets.fromLTRB(15, 10, 15, 15),
                  child: TextField(
                  decoration: InputDecoration(
                  labelText: "Email:",
                  border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(25.0)))),
                  ),
                )
              ],
            ),
          )
          
        ),
      );
  }
}