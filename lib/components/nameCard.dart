import 'package:flutter/material.dart';
import 'package:minaral_water/constant/constant.dart';

class NameCard extends StatelessWidget {
  final String title_text, cont_text;
  final int h;
  NameCard(this.title_text, this.cont_text, this.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / h,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: kBoxDecoration.copyWith(color: Colors.lightBlue[50]),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title_text,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            cont_text,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
