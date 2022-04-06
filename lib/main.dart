import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../utils.dart';
import 'pages/TelaLogin.dart';
import 'pages/TelaPrincipal.dart';

// test

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppTCC',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 53, 207, 169),
        backgroundColor: Colors.grey.shade900,
        focusColor: Color.fromARGB(255, 218, 218, 218),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey.shade700), //TextStyle
          headline3: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      initialRoute: 'TelaLogin',
      routes: {
        'TelaLogin': (context) => TelaLogin(),
        'TelaPrincipal': (context) => TelaPrincipal(),
      }, // passar informações
    ),
  );
}

//
// TELA PESQUISAR
//
class TelaPesquisar extends StatelessWidget {
  const TelaPesquisar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade200,
      child: const Center(
        child: Text(
          'Pagina vazia',
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}

//
// TELA NOTIFICAÇÕES
//
class TelaCalendario extends StatefulWidget {
  const TelaCalendario({Key? key}) : super(key: key);

  @override
  _TelaCalendarioState createState() => _TelaCalendarioState();
}

class _TelaCalendarioState extends State<TelaCalendario> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendário'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: TableCalendar(
        firstDay: kFirstDay,
        lastDay: kLastDay,
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        selectedDayPredicate: (day) {
          // Use `selectedDayPredicate` to determine which day is currently selected.
          // If this returns true, then `day` will be marked as selected.

          // Using `isSameDay` is recommended to disregard
          // the time-part of compared DateTime objects.
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            // Call `setState()` when updating the selected day
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            // Call `setState()` when updating calendar format
            setState(() {
              _calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          // No need to call `setState()` here
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}




