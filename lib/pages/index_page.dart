import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard_page.dart';
import 'package:flutter_app/pages/events_page.dart';
import 'package:flutter_app/pages/booking_page.dart';
import 'package:flutter_app/pages/profile_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List pages = [
    const DashboardPage(),
    const EventsPage(),
    const BookingPage(),
    const ProfilePage(),
  ];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            // foregroundColor: Colors.pinkAccent,
            // backgroundColor: Colors.pinkAccent,
            // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            title: const Text("E-Booking"),
            // title: const Center(child: Text("E-Booking")),
            elevation: 10,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ]),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Text("Menu"),
                // decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text("Profile"),
                subtitle: const Text("Mes informations"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text("Help"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Parametres"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: pages[pageIndex],
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.4))),
            child: NavigationBar(
                selectedIndex: pageIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                backgroundColor: Colors.white,
                destinations: [
                  NavigationDestination(
                      icon: Icon(Icons.bar_chart), label: "Index"),
                  NavigationDestination(
                      icon: Icon(Icons.alarm), label: "Evenements"),
                  NavigationDestination(
                      icon: Icon(Icons.book_rounded),
                      label: "Mes reservations"),
                  NavigationDestination(
                      icon: Icon(Icons.account_box), label: "Profile"),
                ])),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
