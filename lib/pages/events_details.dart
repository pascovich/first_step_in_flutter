import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventsDetails extends StatelessWidget {
  final Map<String, dynamic> data;
  EventsDetails({super.key, required this.data});
  String noms = '';
  String adresse = '';
  String gmail = '';
  String phone = '';
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
              SizedBox(
                child: Image.asset(
                  data['image'],
                  width: double.infinity,
                  // height: double.infinity,
                ),
              ),
              //  Image.network(data['image']),
              const SizedBox(height: 10),

              Text(
                data['name']?.toUpperCase() ?? '',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),

              const SizedBox(height: 10),
              Container(
                height: 2,
                // width: 100, // Largeur de la ligne
                color: Colors.blueGrey, // Couleur de la ligne
              ),
              const SizedBox(height: 10),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: const TextStyle(fontSize: 18),
                        children: [
                          const TextSpan(
                            text: "Date de l'evenement : ",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '${data['date']}',
                            style: const TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
              ),

              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: const TextStyle(fontSize: 16),
                            children: [
                              const TextSpan(
                                  text: "Heure Debut : ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              TextSpan(
                                  text: data['heure'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold)),
                            ])),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: const TextStyle(fontSize: 16),
                            children: [
                              const TextSpan(
                                  text: "Heure Fin : ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              TextSpan(
                                  text: data['heure'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold)),
                            ])),
                  ]),

              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: const TextStyle(fontSize: 16),
                            children: [
                              const TextSpan(
                                  text: "Lieu de l'event : ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              TextSpan(
                                  text: data['place'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold)),
                            ])),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: const TextStyle(fontSize: 16),
                            children: [
                              const TextSpan(
                                  text: "Prix a payer : ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              TextSpan(
                                  text: '${data['price']} ${data['devise']}',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold)),
                            ])),
                  ]),
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
          onPressed: () {
            showModalBottomSheet(
                // isDismissible: false,
                context: context,
                builder: ((context) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Center(
                            child: Text(
                          "RESERVATION DE L'EVENEMENT",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                        Text(noms),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            onChanged: (value) {
                              noms = value;
                            },
                            decoration: const InputDecoration(
                                iconColor: Colors.blueGrey,
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Entrer le nom complet',
                                labelText: 'Nom Complet',
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            onChanged: (value) {
                              gmail = value;
                            },
                            decoration: const InputDecoration(
                                iconColor: Colors.blueGrey,
                                prefixIcon: Icon(Icons.email),
                                hintText: 'Entrer votre adresse E-mail',
                                labelText: 'E-Mail',
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            onChanged: (value) {
                              adresse = value;
                            },
                            decoration: const InputDecoration(
                                iconColor: Colors.blueGrey,
                                prefixIcon: Icon(Icons.map),
                                hintText: 'Entrer votre adresse domicile',
                                labelText: 'Adresse domicile',
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            onChanged: (value) {
                              phone = value;
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: const InputDecoration(
                                iconColor: Colors.blueGrey,
                                prefixIcon: Icon(Icons.phone),
                                hintText: 'Entrer votre phone number',
                                labelText: 'Num Phone',
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                  icon: const Icon(Icons.book),
                                  onPressed: () {},
                                  // style: ButtonStyle(backgroundColor: Colors.amber),
                                  label: const Text('VALIDER LA RESERVATION')),
                            )),
                      ],
                    ),
                  );
                }));
            // print(data['id']);
          },
        ));
  }
}
