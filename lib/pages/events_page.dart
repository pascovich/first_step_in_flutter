import 'package:flutter/material.dart';
import 'package:flutter_app/components/Event_widget.dart';
import 'package:flutter_app/pages/events_details.dart';
import 'package:flutter_app/components/Hero_widget.dart';
import 'package:flutter_app/components/Categorie_widget2.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final List<Map<String, dynamic>> dataList = [
    {
      'title': 'Conference sur les energies',
      'subtitle': 'Une conference dans laquelle vous apprendiez comment coder',
      'placeDispo': '50',
      'imageUrl':
          'https://th.bing.com/th/id/R.583c31af648d4b62fc8f04c3c9c5d930?rik=ZlR4jk5McZsLFA&riu=http%3a%2f%2fwww.pic-event.fr%2fwp-content%2fuploads%2f2015%2f10%2fOrganisation_Evenement.jpg&ehk=f6cxof0hINDBQLXQm3zdzGvuqTGoj8KmR4oHRz82Stw%3d&risl=&pid=ImgRaw&r=0'
    },
    {
      'title': 'Élément 2',
      'subtitle': 'Description de l\'élément 2',
      'placeDispo': '25',
      'imageUrl':
          'https://th.bing.com/th/id/R.7b0c142b76f5ec753d0bd4dded1c6360?rik=wFhq2R1d4lU54w&pid=ImgRaw&r=0&sres=1&sresct=1'
    },
    {
      'title': 'Élément 3',
      'subtitle': 'Description de l\'élément 3',
      'placeDispo': '5',
      'imageUrl':
          'https://th.bing.com/th/id/R.e93a3f9c8f8bfba7bb9f3e39244694a5?rik=KgSEPQOJAEAZTA&pid=ImgRaw&r=0'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(
                hintText: 'Search your events....',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.red),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 10,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HeroWidget(),
            ),
            Padding(padding: EdgeInsets.all(3.0), child: CategorieWidget2()),
            Padding(padding: EdgeInsets.only(left: 3.0), child: EventWidget()),
          ],
        ));
  }
}
