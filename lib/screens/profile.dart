import 'package:flutter/material.dart';
import 'package:minaral_water/constant/constant.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "", address = "", mobile = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue[300],
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: ExactAssetImage('image/class2.png'),
                  fit: BoxFit.cover),
            ),
            //padding: EdgeInsets.only(left: 120, top: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('image/profile.png'),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: kBoxDecoration.copyWith(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children: [
                    Text(
                      "Name: $name",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration:
                          kTextfielddecoration.copyWith(hintText: "Name"),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: kBoxDecoration.copyWith(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children: [
                    Text(
                      "Contact: $mobile",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: kTextfielddecoration.copyWith(
                          hintText: "Contact No:"),
                      onChanged: (value) {
                        setState(() {
                          mobile = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: kBoxDecoration.copyWith(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children: [
                    Text(
                      "Address: $address",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: kTextfielddecoration.copyWith(
                        hintText: "Complete Address :",
                      ),
                      onChanged: (value) {
                        setState(() {
                          address = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Note: Please Enter all details correctly,"
                  "It will help us to reach out at your place to deliver the water pack.",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
