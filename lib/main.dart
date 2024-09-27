import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(colorSchemeSeed: Colors.blue),
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(Icons.menu),
            title: const Center(child: Text("E-Booking")),
            elevation: 10,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
            ]),
        body: const Center(child: Text("menus fluterdd")),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.4))),
            child: NavigationBar(
                // selectedIndex: pageIndex,
                onDestinationSelected: (int index) {
                  // setState(() {
                  //   pageIndex = index;
                  // });
                },
                backgroundColor: Colors.white,
                destinations: [
                  NavigationDestination(
                      icon: Icon(Icons.alarm), label: "Evenements"),
                  NavigationDestination(
                      icon: Icon(Icons.book_rounded),
                      label: "Mes reservations"),
                  NavigationDestination(
                      icon: Icon(Icons.person), label: "Profile"),
                  NavigationDestination(
                      icon: Icon(Icons.phone), label: "Appels"),
                ])));
  }
}
