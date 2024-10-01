import 'package:flutter/material.dart';
// import 'package:flutter_app/models/category_model.dart';
import 'package:flutter_app/services/product_service.dart';

class CategorieWidget2 extends StatefulWidget {
  const CategorieWidget2({super.key});

  @override
  State<CategorieWidget2> createState() => _CategorieWidget2State();
}

class _CategorieWidget2State extends State<CategorieWidget2> {
  // ProductService service = ProductService();
  // List<CategoryModel> categories = [];
  List categories = [];

  @override
  void initState() {
    super.initState();
    ProductService.categories().then((value) => setState(() {
          categories = value;
        }));
    // categories = await ProductService().categories();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Categorie',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          FutureBuilder(
              future: ProductService.categories(),
              builder: (context, snapshot) {
                return Text(snapshot.hasData.toString());
                // if (snapshot.hasData) {
                //   return Container(
                //     // height: 150,
                //     child: ListView.builder(
                //         scrollDirection: Axis.horizontal,
                //         itemCount: categories.length,
                //         itemBuilder: (context, index) {
                //           // Category category = snapshot.data![index];
                //           return Container(
                //             width: 100,
                //             height: 100,
                //             color: Colors.blue,
                //             // child: Text(categories[index]["name"]),
                //           );
                //         }),
                //   );
                // } else {
                //   // return const CircularProgressIndicator();
                //   return const Text("no data");
                // }
              })
        ],
      ),
    );
  }
}
