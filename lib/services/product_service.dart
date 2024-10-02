// import 'package:flutter/foundation.dart';

import 'package:flutter_app/models/category_model.dart';

// import '../models/category_model.dart';

class ProductService {
  List products = [
    {
      "id": "1",
      "name": "Evenement 1",
      "price": 10.0,
      "date": "12/20/2030",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "persons": 50,
      "description": "Description du Evenement 1",
      "image": "assets/images/1.jpg",
      "imageLine":
          "https://st.depositphotos.com/1053646/1770/i/450/depositphotos_17700789-stock-photo-dance-club.jpg",
      "category_id": "www"
    },
    {
      "id": "2",
      "name": "Evenement 2",
      "price": 20.0,
      "date": "01/10/2010",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "description": "Description du Evenement 2",
      "image": "assets/images/2.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfYMxkPgJymWL1zWEvxktsdcXatHU-yFPLrg&s",
      "category_id": "www"
    },
    {
      "id": "3",
      "name": "Evenement 3",
      "price": 30.0,
      "date": "12/12/2020",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "description": "Description du Evenement 3",
      "image": "assets/images/3.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLar8sug98DCm_96Abw6KWUazMe-QjUtu2Dg&s",
      "category_id": "zzz"
    },
    {
      "id": "4",
      "name": "Evenement 4",
      "price": 40.0,
      "date": "11/03/2024",
      "heure": "22h 00,GMT",
      "place": "RDC - Goma",
      "description": "Description du Evenement 4",
      "image": "assets/images/4.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJs1wkJigJPv994C21bjRQT8QT7LilQ-PA9A&s",
      "category_id": "www"
    },
    {
      "id": "5",
      "name": "Conference sur les energies de a phh",
      "price": 50.0,
      "date": "01/10/2022",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "description": "Description du Evenement 5",
      "image": "assets/images/5.jpg",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI2Gw6klZzMQMGEFl8z1E16USZoWYhpBBbtA&s",
      "category_id": "zzz"
    }
  ];
  List categoriesok = [
    {
      "id": "1",
      "name": "conference",
      "description": "conf",
    },
    {
      "id": "2",
      "name": "seminaire",
      "description": "conf",
    },
    {
      "id": "3",
      "name": "formation",
      "description": "conf",
    },
    {
      "id": "4",
      "name": "voyage",
      "description": "conf",
    },
    {
      "id": "5",
      "name": "messe",
      "description": "conf",
    },
  ];
  List getProducts() {
    return products;
  }

  List getCategories() {
    return categoriesok;
  }

  static Future<List<CategoryModel>> categories() async {
    CategoryModel c =
        CategoryModel(name: 'Technologie dd', description: 'Technologie');
    // print(jsonDecode(c.));
    return [];
    // return [
    //   CategoryModel(
    //       name: 'Technologie', description: 'Produits technologiques'),
    //   CategoryModel(name: 'Mode', description: 'Vêtements et accessoires'),
    //   CategoryModel(name: 'Sport', description: 'Équipements sportifs'),
    // ];
  }
}
