import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_app/pages/events_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dio = Dio();
  List pays = [];
  getCountries() async {
    final response = await dio.get("https://restcountries.com/v3.1/all");

    setState(() {
      pays = response.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          elevation: 10,
          actions: [
            IconButton(
                onPressed: () {
                  getCountries();
                },
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: ListView.builder(
            itemCount: pays.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  pays[index]["flag"],
                  style: const TextStyle(fontSize: 30),
                ),
                title: Text(pays[index]["name"]["common"]),
                subtitle: Text(pays[index]["capital"][0]),
                onTap: () {},
              );
            })

        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       const Text('Welcome to the Home Page'),
        //       ElevatedButton(
        //         onPressed: () {
        //           Navigator.pushNamed(context, '/events');
        //           // Navigator.push(
        //           //     context,
        //           //     MaterialPageRoute(
        //           //         builder: (context) => const EventsPage())
        //           // );
        //         },
        //         child: const Text('Go to events Page'),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
