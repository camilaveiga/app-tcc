
import 'package:app_tcc/pages/TelaHome1.dart/TelaHome.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'TelaPerfil/TelaPerfil.dart';

//
// TELA PRINCIPAL
//
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  //Index da tela que será carregada
  var telaAtual = 0;

  //Controlador utilizado na troca das telas (páginas)
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // BODY
      //
      body: PageView(
        controller: pageController,
        children: const [
          TelaHome(),
          TelaPesquisar(),
          TelaCalendario(),
          TelaPerfil(),
        ],

        //Mudança de página: quando ocorrer a mudança de página
        //por meio da interação do usuário, é necessário
        //atualizar o valor da variável telaAtual
        onPageChanged: (index) {
          setState(() {
            telaAtual = index;
          });
        },
      ),

      //
      // BARRA DE NAVEGAÇÃO
      //
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,

        iconSize: 32,

        selectedItemColor:  Theme.of(context).primaryColor,
        unselectedItemColor:  Theme.of(context).focusColor.withOpacity(0.60),

        selectedFontSize: 12,
        unselectedFontSize: 12,

        //Index do botão selecionado
        currentIndex: telaAtual,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],

        //Mudança de página através da interação com os
        //botões do BottomNavigationBar
        onTap: (index) {
          //atualizar o valor da variável telaAtual
          setState(() {
            telaAtual = index;
          });

          //efetuar a troca da página
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}
