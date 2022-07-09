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
            child: Icon(Icons.arrow_back_ios, color: Colors.black,),
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
              fontFamily: GoogleFonts.poppins().fontFamily
              ),
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
            child: Image.asset('assets/egg_4.png',
            height: 200,
            fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          
        ),
      ],
    );
  }
}
