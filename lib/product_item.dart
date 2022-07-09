import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryappui/item_details_page.dart';
import 'package:groceryappui/main.dart';

class ProductItem extends StatelessWidget {
  String img;
  String title;
  String price;
  String imgText;
  // const ProductItem({Key? key}) : super(key: key);

  ProductItem(
      {required this.img,
      required this.title,
      required this.price,
      required this.imgText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => const ItemDetailsPage()));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                colors: [Color(0xffebebe8), Color(0xffF7F7F7)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 15,
                  offset: const Offset(0, 7),
                ),
              ]),
          width: 180,
          height: 280,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: const EdgeInsets.only(top: 4),
                child: Image.asset(
                  img,
                  height: 99,
                  scale: 1,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                ),
              ),
              SafeArea(
                child: Container(
                  margin: const EdgeInsets.only(left: 50, top: 1),
                  child: Text(
                    price,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 120,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.green),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(imgText),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
