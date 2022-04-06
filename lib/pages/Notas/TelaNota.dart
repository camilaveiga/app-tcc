import 'package:flutter/material.dart';
import '../TelaPrincipal.dart';
import '../../main.dart';



class TelaNota extends StatelessWidget {
  const TelaNota({Key? key}) : super(key: key);

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
                           "Joaquim José da Silva",  
                            style: TextStyle(  
                            fontSize: 25,  
                            color: Color.fromARGB(255, 88, 194, 164),                     
                            ),  
                        ),
                        const SizedBox(height: 30),
                        const Text(  
                            "1 semestre",  
                            style: TextStyle(  
                            fontSize: 25,  
                            color: Color.fromARGB(255, 88, 194, 164),                     
                            ),  
                        ),
                         Padding(
                          padding: const EdgeInsets.all(0),
                          child: Center(               
                          child: Wrap(
                          spacing: 1,
                          runSpacing: 5,
                          children:   <Widget>[
                            Container(  
                               width: 80,
                               height: 80,
                               child: const Icon(const IconData(7777, fontFamily: 'icomoon'), size: 48.0, color: Colors.red),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 192, 192, 192),
                                ),
                              ), 
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