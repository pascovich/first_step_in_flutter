import 'package:flutter/material.dart';

class EventsDetails extends StatelessWidget {
  final Map<String, dynamic> data;
  const EventsDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text("Details Evenements"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(data['imageUrl']),
            const SizedBox(height: 10),
            Center(
              child: Text(
                data['title']?.toUpperCase() ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 2,
              // width: 100, // Largeur de la ligne
              color: Colors.black, // Couleur de la ligne
            ),
            const SizedBox(height: 10),
            Text(
              data['subtitle'],
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
