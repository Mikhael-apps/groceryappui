import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryappui/constans.dart';

class ItemDetailsPage extends StatefulWidget {
  const ItemDetailsPage({Key? key}) : super(key: key);

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Constans.SURFACE_COLOR,
        centerTitle: true,
        leading: Container(
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: SvgPicture.asset('assets/ic_shopping.svg'),
            ),
          )
        ],
        title: Text(
          'Product Details',
          style: TextStyle(
              color: Colors.black,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
      ),
      body: SingleChildScrollView(
        child: initialWidget(),
      ),
    );
  }

  Widget initialWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Center(
            child: Image.asset(
              'assets/egg_4.png',
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Center(
          child: Container(
            width: 200,
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Vegetarian Chicken Egg',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 31,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 11),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/ic_rating.svg'),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    '4.5',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 13),
                  child: Text(
                    '\$ 140/item',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade500,
                      fontSize: 23,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 19, top: 9),
          child: Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 28,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
        // text1
        Container(
          margin: EdgeInsets.only(left: 19, top: 9),
          child: Text(
            'Vegetarian eggs are eggs which come from \nhens who are fed a vegetarian diet.',
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 19, top: 9),
          child: Text(
            '- 100% plant-based egg alternative \n- Equivalent to about one dozen eggs \n- Scrambles, bakes, and binds \n- Egg-free, gluten-free, Kosher Parve,',
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text('Amount', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                    ),
                ),
                Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Colors.grey,
                      
                    ),
                    child:  Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: const Icon(Icons.minimize_rounded, color: Colors.white, size: 15,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text('1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.poppins().fontFamily,),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Colors.grey,
                      
                    ),
                    child:  Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: const Icon(Icons.add, color: Colors.white, size: 15,)),
                  ),
                ],
              ),
            ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: [
                const  Text.rich(
                    TextSpan(style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    children:  [
                      TextSpan(text: 'Total Price', style: TextStyle(fontSize: 15,),),
                      TextSpan(text: 'Dolar 4.2', style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold,)),
                    ]
                    ),
                    
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text('text'),
                    
                    )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
