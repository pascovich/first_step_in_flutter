// ignore: file_names
import 'package:flutter/material.dart';
// import 'package:flutter_app/pages/events_details.dart';
import 'package:flutter_app/services/product_service.dart';

class EventWidget extends StatefulWidget {
  const EventWidget({super.key});

  @override
  State<EventWidget> createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  ProductService service = ProductService();

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Evenements',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Voir tout',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: 300),
            // color: Colors.pinkAccent,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: service.products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          height: 300,
                          // padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  // image: NetworkImage(
                                  // service.products[index]["imageLine"]!),
                                  image: AssetImage(
                                      service.products[index]["image"]!),
                                  fit: BoxFit.cover)),

                          child: Stack(
                            children: [
                              Center(
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/details',
                                          arguments: service.products[index]);
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => EventsDetails(
                                      //         data: service.products[index]),
                                      //   ),
                                      // );
                                    },
                                    child: Text(
                                      service.products[index]["name"]
                                          .toUpperCase(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.all(5.0),
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 5,
                                        left: 25,
                                        child: Text(
                                          // ignore: prefer_interpolation_to_compose_strings
                                          "Date : " +
                                              service.products[index]['date'],
                                          style: const TextStyle(
                                              color: Colors.blueGrey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        )),
                                    Positioned(
                                        top: 25,
                                        left: 25,
                                        child: Text(
                                          // ignore: prefer_interpolation_to_compose_strings
                                          "Heure : " +
                                              service.products[index]['heure'],
                                          style: const TextStyle(
                                              color: Colors.blueGrey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        )),
                                    Positioned(
                                        top: 45,
                                        left: 25,
                                        child: Text(
                                          // ignore: prefer_interpolation_to_compose_strings
                                          "Place : " +
                                              service.products[index]['place'],
                                          style: const TextStyle(
                                              color: Colors.blueGrey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ]);
  }
}
