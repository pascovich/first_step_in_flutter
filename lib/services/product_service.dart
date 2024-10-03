// import 'package:flutter/foundation.dart';

import 'package:flutter_app/models/category_model.dart';

// import '../models/category_model.dart';

class ProductService {
  List products = [
    {
      "id": "1",
      "name": "Evenement 1",
      "price": 10.0,
      "devise": "USD",
      "date": "12/20/2030",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "persons": 50,
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      "image": "assets/images/1.jpg",
      "imageLine":
          "https://st.depositphotos.com/1053646/1770/i/450/depositphotos_17700789-stock-photo-dance-club.jpg",
      "category_id": "www"
    },
    {
      "id": "2",
      "name": "Evenement 2",
      "price": 20.0,
      "devise": "USD",
      "date": "01/10/2010",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "description":
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
      "image": "assets/images/2.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfYMxkPgJymWL1zWEvxktsdcXatHU-yFPLrg&s",
      "category_id": "www"
    },
    {
      "id": "3",
      "name": "Evenement 3",
      "price": 30.0,
      "devise": "USD",
      "date": "12/12/2020",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "description":
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.",
      "image": "assets/images/3.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLar8sug98DCm_96Abw6KWUazMe-QjUtu2Dg&s",
      "category_id": "zzz"
    },
    {
      "id": "4",
      "name": "Evenement 4",
      "price": 40.0,
      "devise": "USD",
      "date": "11/03/2024",
      "heure": "22h 00,GMT",
      "place": "RDC - Goma",
      "description":
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc",
      "image": "assets/images/4.jfif",
      "imageLine":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJs1wkJigJPv994C21bjRQT8QT7LilQ-PA9A&s",
      "category_id": "www"
    },
    {
      "id": "5",
      "name": "Conference sur les energies de a phh",
      "price": 50.0,
      "devise": "USD",
      "date": "01/10/2022",
      "heure": "12h 00,GMT",
      "place": "RDC - Goma",
      "description":
          "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
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
    c;
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
