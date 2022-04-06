
import 'package:flutter/material.dart';

import '../../main.dart';

 class menuprincipal  extends StatelessWidget {

   final String titulo;
   final int icone;
   final String tela;

  const menuprincipal(this.titulo, this.icone, this.tela, {Key? key}) : super(key: key);

   @override
    Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 150.0,
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(  
            width: 80,
            height: 80,
            child: const Icon(const IconData(7777, fontFamily: 'icomoon'), size: 48.0, color: Colors.red),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 192, 192, 192),
              ),
           ),   
           SizedBox(height: 10),   
           Text(
            this.titulo,
            style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 96, 177, 154)),
            ),
         ],
        ),
        onTap: () {
      
        },
      ),
    );
  }
}