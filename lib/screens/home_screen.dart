import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_flutter/components/event_card.dart';
import 'package:lesson_flutter/models/event.dart';

class HomeScreen extends StatelessWidget {
  final List<Event> events = [
    Event(
        name: "Первое занятие",
        location: "Москва",
        startDateTime: DateTime.now()),
    Event(
        name: "Второе занятие",
        location: "Крастногорск",
        startDateTime: DateTime.now()),
    Event(
        name: "Третье занятие",
        location: "Пенза",
        startDateTime: DateTime.now()),
    Event(
        name: "Четвертое занятие",
        location: "Воронеж",
        startDateTime: DateTime.now()),
    Event(
        name: "Пятое занятие",
        location: "Москва",
        startDateTime: DateTime.now()),
    Event(
        name: "Шестое занятие",
        location: "Санкт-петербург",
        startDateTime: DateTime.now()),
    Event(
        name: "седьмое занятие",
        location: "Москва",
        startDateTime: DateTime.now()),
    Event(
        name: "Восьмое занятие",
        location: "Красногорск",
        startDateTime: DateTime.now()),
    Event(
        name: "Девятое занятие",
        location: "Магадан",
        startDateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Учим Flutter"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        itemCount: events.length,
        itemBuilder: (_, index) => EventCard(events: events[index]),
      ),
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add_box),
        backgroundColor: Colors.black87,
        onPressed: null,
      ),
      //backgroundColor: Colors.white70,
    );
  }
}

