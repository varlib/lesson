import 'package:flutter/material.dart';
import 'package:lesson_flutter/event.dart';

void main() => runApp(FlutterTuttorialApp());

class FlutterTuttorialApp extends StatelessWidget {
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
    return MaterialApp(
      title: "Обучающий пример",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Учим Flutter"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20),
          itemCount: events.length,
          itemBuilder: (_, index) => Card(
            color: Colors.blueAccent,
            elevation: 10,
            margin: EdgeInsets.symmetric(vertical: 7),
            child: ListTile(
              title: Text(
                events[index].name,
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text(
                events[index].location,
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(
                Icons.ac_unit,
                size: 40,
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: null,
              ),
              onTap: () => print(
                  "${events[index].name} - ${events[index].startDateTime}"),
              onLongPress: () =>
                  print("Не надо долго жать, ничего не получиться."),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_box),
          backgroundColor: Colors.black87,
          onPressed: null,
        ),
        //backgroundColor: Colors.white70,
      ),
    );
  }
}
