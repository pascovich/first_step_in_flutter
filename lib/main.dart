import 'package:flutter/material.dart';
import 'package:flutter_app/pages/events_Page.dart';
import 'package:flutter_app/pages/dashboard_page.dart';
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
        '/': (context) => const DashboardPage(),
        '/events': (context) => const EventsPage(),
        // Add more routes here as needed
      },
    );
  }
}
