import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(Page2());
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: CategoriesPage(),

    );
  }
}

class CategoriesPage extends StatelessWidget {
  final List<Category> categories = [
    Category('Carpentor', 'assets/images/carpenter.png'),
    Category('Plumber', 'assets/images/plumber.png'),
    Category('Electrician', 'assets/images/electrician.png'),
    Category('Mechanic', 'assets/images/technician.png'),
    Category('Home Cleaning', 'assets/images/vacuum.png'),
    Category('AC Repair', 'assets/images/air-conditioner.png'),
    // Add more categories as needed
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(



        body: Column(
        children: [
          40.heightBox,

          Text(
            'Choose Your Need..',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black87,

            ),
          ),







    //   Expanded(
    //   child: CustomScrollView(
    //     slivers: <Widget>[
    //       SliverAppBar(
    //         expandedHeight: 45.0,
    //         floating: false,
    //         pinned: true,
    //          backgroundColor: Colors.grey[300],
    //         flexibleSpace: FlexibleSpaceBar(
    //           title: Text('Choose your Need ??',
    //           style: TextStyle(
    //             color: Colors.black54,
    //             fontSize: 28
    //           ),
    //           ),
    //         ),
    //       ),
    //
    //       SliverGrid(
    //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2,
    //         ),
    //         delegate: SliverChildBuilderDelegate(
    //               (BuildContext context, int index) {
    //             return CategoryItem(categories[index]);
    //           },
    //           childCount: categories.length,
    //         ),
    //       ),
    //     ],
    //   ),
    // ),

          Expanded(
         child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
         ),
         itemCount: categories.length,
         itemBuilder: (BuildContext context, int index) {
         return CategoryItem(categories[index]
          );
          },
          ),
        ),

        ],
        ),




    );
  }
}

class Category {
  final String name;
  final String iconAssetPath; // Accept image asset path

  Category(this.name, this.iconAssetPath);
}

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
      ),
      child: InkWell(
        onTap: () {
          // Handle category selection
          // You can navigate to a specific category page or perform other actions here
        },
        child:Container(
          width: 40,
          height:40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              category.iconAssetPath, // Use the asset path to load the image
              width: 55,
              height: 55,
            ),
            SizedBox(height: 15),
            Text(
              category.name,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
