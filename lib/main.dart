import 'package:flutter/material.dart';
import 'package:flutter_app/pages/events_Page.dart';
import 'package:flutter_app/pages/events_details.dart';
import 'package:flutter_app/pages/index_page.dart';
// import 'package:flutter_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IndexPage(),
        '/events': (context) => const EventsPage(),
        '/details': (context) {
          final args = ModalRoute.of(context)?.settings.arguments
              as Map<String, dynamic>;
          return EventsDetails(data: args);
        }
        // Add more routes here as needed
      },
    );
  }
}
