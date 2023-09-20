import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
void main() {
  runApp(Page1());
}





class Page1 extends StatelessWidget{
  List <String> imagePaths =[
    'assets/images/sweeper1.jpg',
    'assets/images/sweeper2.jpg',
    'assets/images/sweeper3.jpg',
  ];

  final List<Category> categories = [
    Category('Carpenter', 'assets/images/carpenter.png'),
    Category('Plumber', 'assets/images/plumber.png'),
    Category('Electrician', 'assets/images/electrician.png'),
    Category('Mechanic', 'assets/images/technician.png'),
    // Category('Home Cleaning', 'assets/images/vacuum.png'),
    // Category('AC Repair', 'assets/images/air-conditioner.png'),
    // Add more categories as needed
  ];


  @override
  Widget build(BuildContext context) {


    return Scaffold(
       // width: context.screenWidth,
      // height: context.screenWidth,
      // color: Colors.grey[300],
      body: SafeArea(
        // child: SingleChildScrollView(
            child: Column(
              children: [






                SingleChildScrollView(
                  child: VxSwiper.builder(


                  itemCount: 3, // Number of items in the swiper
                  height: 200.0, // Set the height of the swiper

                  enlargeCenterPage: true, // Make the center item larger
                  autoPlay: true, // Enable auto-play
                  autoPlayInterval: Duration(seconds: 2),
                  // Set the auto-play interval
                  autoPlayCurve: Curves.fastOutSlowIn, // Set animation curve
                  itemBuilder: (context, index) {

                    final imageAssetPath = imagePaths[index]; // Get the image path from the list

                    // Return a VxBox widget for each item
                    return VxBox(

                      child: Image.asset(


                        imageAssetPath, // Replace with your image assets
                        fit: BoxFit.fitWidth,
                      ),
                    ).roundedLg.make();
                  },
                ),
                ),






                 Text(
                  'most prefered.....',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black87,

                  ),
                ),



                SingleChildScrollView(
                  child: Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryItem(categories[index]
                      );
                    },
                  ),
                ),
                ),
















































              ],
           ),
          ),

    );
  }

  Widget homeButtons({width,height,icon,String? title,onPress}){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(icon,width: 26),
        5.heightBox,
        title!.text.color(Colors.black54).make()
      ],

    ).box.rounded.white.size(width, height).make();


  }

  // featuredButton(){
  //
  // }
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
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            20.0), // Adjust the radius as needed
      ),
      child: InkWell(
          onTap: () {
            switch (category.name) {
              case 'Carpenter':
                Navigator.pushNamed(context,MyRoutes.carpenter);
                break;
            }
          },
          child: Container(
            width: 40,
            height: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  category.iconAssetPath,
                  // Use the asset path to load the image
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





