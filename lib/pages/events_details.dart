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
              Image.asset(
                data['image'],
                width: double.infinity,
                // height: double.infinity,
              ),
              //  Image.network(data['image']),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  data['name']?.toUpperCase() ?? '',
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 2,
                // width: 100, // Largeur de la ligne
                color: Colors.blueGrey, // Couleur de la ligne
              ),
              const SizedBox(height: 10),
              Text(
                data['description'],
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
