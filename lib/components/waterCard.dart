import 'package:flutter/material.dart';
import 'package:minaral_water/constant/constant.dart';

class CardData extends StatefulWidget {
  final String? heading, statement, path;
  final int? pr;
  CardData({this.path, this.heading, this.statement, this.pr});
  @override
  _CardDataState createState() => _CardDataState();
}

class _CardDataState extends State<CardData> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: kBoxDecoration.copyWith(
          borderRadius: BorderRadius.circular(15), color: Colors.blue[100]),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                widget.path.toString(),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 35,
                width: 170,
                decoration: kBoxDecoration,
                child: Center(
                  child: Text(
                    'Rs: ' + widget.pr.toString() + '/Bottel',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Center(
                child: Text(
                  widget.heading.toString(),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 180,
                child: Text(
                  widget.statement.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: kBoxDecoration,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          counter = counter + 1;
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: kBoxDecoration,
                    child: IconButton(
                      onPressed: () {
                        if (counter != 0) {
                          setState(() {
                            counter = counter - 1;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      splashRadius: 18,
                      splashColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: kBoxDecoration,
                child: Text(
                  "Total Amt: " + (counter * widget.pr!.toInt()).toString(),
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
