import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_flutter/models/event.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.events,
  }) : super(key: key);

  final Event events;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;

  @override
  void initState() {
    super.initState();
    //print("initState");
  }

  @override
  Widget build(BuildContext context) {
    //print("build");
    return Card(
      color: Colors.blueAccent,
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        enabled: _isEnabled,
        title: Text(
          widget.events.name,
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text(
          widget.events.location,
          style: TextStyle(fontSize: 18),
        ),
        leading: const Icon(
          Icons.ac_unit,
          size: 40,
        ),
        trailing: IconButton(
          icon: _isEnabled ? Icon(Icons.lock_open_outlined):Icon(Icons.lock_outline),
          onPressed:() => setState(() =>_isEnabled = !_isEnabled),
        ),
        onTap: () =>
            print("${widget.events.name} - ${widget.events.startDateTime}"),
        onLongPress: () => print("Не надо долго жать, ничего не получиться."),
      ),
    );
  }
}
