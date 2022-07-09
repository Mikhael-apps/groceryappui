import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryappui/constans.dart';
import 'package:groceryappui/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Constans.SURFACE_COLOR,
        items: [
          BottomNavyBarItem(
            activeColor: Constans.PRIMARY_COLOR,
            icon: Icon(Icons.home),
             title: Text('Home')
             ),
          BottomNavyBarItem(
            activeColor: Constans.PRIMARY_COLOR,
            
            icon: Icon(Icons.store), title: Text('Stores')),
          BottomNavyBarItem(
            activeColor: Constans.PRIMARY_COLOR,
            
            icon: Icon(Icons.home), title: Text('Home')),
          BottomNavyBarItem(
            activeColor: Constans.PRIMARY_COLOR,
            
            icon: Icon(Icons.home), title: Text('Home')),

        ], 
        onItemSelected: (int value) {},
        ),
      backgroundColor: Constans.SURFACE_COLOR,
      // appBar:  AppBar(title: const Text('Grocery app')),
      body: SingleChildScrollView(
        child: initScreen(),
      ),
    );
  }

  Widget initScreen() {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildGreetings(),
        buildSearch(),
        buildCategories(),
        buildSlider(),
      ],
    ));
  }

  Widget buildGreetings() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                    children: const [
                      TextSpan(
                        text: 'Hello, ',
                      ),
                      TextSpan(
                        text: 'Ela',
                        style: TextStyle(
                          color: Constans.PRIMARY_COLOR,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'What do you need?',
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    // color: Colors.grey.shade500,
                    color: Constans.GREY_COLOR,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 25,
              top: 19,
              bottom: 1,
              child: Container(
                // margin: EdgeInsets.only(top: 20, left: 15),
                child: SvgPicture.asset('assets/ic_shopping.svg'),
              )),
        ],
      ),
      // Search textfield
    );
  }

  Widget buildSearch() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      child: TextField(
        decoration: InputDecoration(
          helperText: 'Search your grocery products',
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.poppins().fontFamily),
      ),
    );
  }

  // Widget buildCategories() {
  //   return Container(
  //     child: Column(
  //       children: <Widget>[
  //         Container(
  //           margin: EdgeInsets.all(25),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: <Widget>[
  //               Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  //               Text('See All >'),
  //             ],

  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget buildCategories() {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Positioned(
                    right: 1,
                    top: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'See All',
                          style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.keyboard_arrow_right),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            height: 120,
            margin: const EdgeInsets.only(right: 25),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                categoryListile('assets/cat_1.png', 'Vegetables'),
                categoryListile('assets/cat_2.png', 'Fruits'),
                categoryListile('assets/cat_3.png', 'Brokory'),
                categoryListile('assets/cat_4.png', 'Spices'),
                categoryListile('assets/cat_5.png', 'Fishes'),


              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categoryListile(String image, String name) {
    return Container(
      margin: const EdgeInsets.only(right: 15, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(image),
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              child: Text(
                name,
                style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget buildSlider() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 9),
      width: MediaQuery.of(context).size.width,

            child: Stack(
              children: [
                Text('Top Products', style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
            Positioned(
              right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const Text('See All'),
              const Icon(Icons.keyboard_arrow_right),
            ],
            ),
            ),
              ],
            ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  ProductItem(img: 'assets/banana.png', title: 'Banana', price: '\$1.99', imgText: 'Some',),
                  ProductItem(img: 'assets/milk.png', title: 'Plain Milk', price: '\$6.99', imgText: 'Some',),
                  ProductItem(img: 'assets/egg_4.png', title: 'White egg', price: '\$19.99', imgText: 'Some',),
                  ProductItem(img: 'assets/banana.png', title: 'Banana', price: '\$1.99', imgText: 'Some',),
                  ProductItem(img: 'assets/banana.png', title: 'Banana', price: '\$1.99', imgText: 'Some',),

                ],
              ),
            ),
            ]
            ),
          );
  }

  // Widget ProductItem(String image, String title, int price, String btn) {

  // }

}
