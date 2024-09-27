import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('List of events goes here'),
            const SizedBox(
              height: 10,
              child: Text("sidd"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the EventDetails page when the button is clicked
                Navigator.pop(context);
              },
              child: const Text('retour home'),
            ),
          ],
        ),
      ),
    );
  }
}
