import 'package:flutter/material.dart';

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
      'imageUrl':
          'https://th.bing.com/th/id/R.583c31af648d4b62fc8f04c3c9c5d930?rik=ZlR4jk5McZsLFA&riu=http%3a%2f%2fwww.pic-event.fr%2fwp-content%2fuploads%2f2015%2f10%2fOrganisation_Evenement.jpg&ehk=f6cxof0hINDBQLXQm3zdzGvuqTGoj8KmR4oHRz82Stw%3d&risl=&pid=ImgRaw&r=0'
    },
    {
      'title': 'Élément 2',
      'subtitle': 'Description de l\'élément 2',
      'imageUrl':
          'https://th.bing.com/th/id/R.7b0c142b76f5ec753d0bd4dded1c6360?rik=wFhq2R1d4lU54w&pid=ImgRaw&r=0&sres=1&sresct=1'
    },
    {
      'title': 'Élément 3',
      'subtitle': 'Description de l\'élément 3',
      'imageUrl':
          'https://th.bing.com/th/id/R.e93a3f9c8f8bfba7bb9f3e39244694a5?rik=KgSEPQOJAEAZTA&pid=ImgRaw&r=0'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 1,
                color: Theme.of(context).colorScheme.inversePrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Image.network(dataList[index]["imageUrl"]),
                  title: Text(dataList[index]["title"]),
                  subtitle: Text(dataList[index]["subtitle"]),
                ),
              );
            }));
    // return Container(
    //   padding: const EdgeInsets.all(10),
    //   child: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [

    //       ]),
    // );
  }
}
