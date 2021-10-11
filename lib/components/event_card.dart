import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_flutter/models/event.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.events,
  }) : super(key: key);

  final Event events;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        title: Text(
          events.name,
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text(
          events.location,
          style: TextStyle(fontSize: 18),
        ),
        leading: const Icon(
          Icons.ac_unit,
          size: 40,
        ),
        trailing: const IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: null,
        ),
        onTap: () => print(
            "${events.name} - ${events.startDateTime}"),
        onLongPress: () =>
            print("Не надо долго жать, ничего не получиться."),
      ),
    );
  }
}
