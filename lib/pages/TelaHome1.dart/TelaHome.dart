import 'package:flutter/material.dart';
import '../TelaPrincipal.dart';
import '../../main.dart';
import 'menuprincipal.dart';


class TelaHome extends StatelessWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONEXIA'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Show Snackbar',
            onPressed: () {
             
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            child: Column(          
                      children: <Widget>[
                        const SizedBox(height: 30),
                        const Text(  
                           "O que deseja pesquisar?",  
                            style: TextStyle(  
                            fontSize: 15,  
                            color: Color.fromARGB(255, 47, 102, 86),                     
                            ),  
                        ),
                        const Padding(                         
                          padding:  EdgeInsets.fromLTRB(15, 10, 15, 15),
                          child: TextField(
                          decoration: InputDecoration(
                          labelText: "Procurar",
                          hintText: "pesquise por titulo ou segmento",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)))),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(0),
                          child: Center(               
                          child: Wrap(
                          spacing: 1,
                          runSpacing: 5,
                          children:  const <Widget>[
                            menuprincipal('Secretaria', 0xe146, 'teste'),
                            menuprincipal('Chats', 0xe146, 'teste'),
                            menuprincipal('Professores', 0xe146, 'teste'),
                            menuprincipal('Notas', 0xe146, 'teste'),
                            menuprincipal('Boletos', 0xe146, 'teste'),
                            menuprincipal('Secretaria', 0xe146, 'teste'),
                              ],
                            ),
                          ),
                         )
                       ],
                    )                                                             
            )
      ),
       );
  }
}