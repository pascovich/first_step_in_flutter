// import 'package:flutter/foundation.dart';

import 'package:flutter_app/models/category_model.dart';

// import '../models/category_model.dart';

class ProductService {
  List products = [
    {
      "id": "1",
      "name": "Produit 1",
      "price": 10.0,
      "description": "Description du produit 1",
      "image": "assets/images/1.jpg",
      "imageLine":
          "https://st.depositphotos.com/1053646/1770/i/450/depositphotos_17700789-stock-photo-dance-club.jpg",
      "category_id": "www"
    },
    {
      "id": "2",
      "name": "Produit 2",
      "price": 20.0,
      "description": "Description du produit 2",
      "image": "assets/images/2.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfYMxkPgJymWL1zWEvxktsdcXatHU-yFPLrg&s",
      "category_id": "www"
    },
    {
      "id": "3",
      "name": "Produit 3",
      "price": 30.0,
      "description": "Description du produit 3",
      "image": "assets/images/3.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLar8sug98DCm_96Abw6KWUazMe-QjUtu2Dg&s",
      "category_id": "zzz"
    },
    {
      "id": "4",
      "name": "Produit 4",
      "price": 40.0,
      "description": "Description du produit 4",
      "image": "assets/images/4.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJs1wkJigJPv994C21bjRQT8QT7LilQ-PA9A&s",
      "category_id": "www"
    },
    {
      "id": "5",
      "name": "Produit 5",
      "price": 50.0,
      "description": "Description du produit 5",
      "image": "assets/images/5.jpg",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI2Gw6klZzMQMGEFl8z1E16USZoWYhpBBbtA&s",
      "category_id": "zzz"
    }
  ];
  List getProducts() {
    return products;
  }

  static Future<List<CategoryModel>> categories() async {
    // Future<List<CategoryModel>> categories() async {
    // Simuler une opération asynchrone, comme une requête réseau
    // await Future.delayed(const Duration(seconds: 1));
    // final response  =  [
    //   {
    //   "id": 1,
    //   "name": 'Technologie',
    //   "description": 'Produits technologiques',
    //   },
    //   {
    //   "id": 2,
    //   "name": 'physique',
    //   "description": 'Produits phys',
    //   }
    // ];
    // Transformer la réponse en liste de catégories
    //  print(response);
    //  return response.toList();
    // Retourner une liste de catégories
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
