import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:minaral_water/components/nameCard.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "", hostel = "", contact = "", room = "", school = "";
  int h = 1;
  final _formKey = GlobalKey<FormState>();

  String? url = "https://www.woolha.com/media/2020/03/eevee.png";

  void _onPressedBottom() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (context) {
          return Container(
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
              ),
              child: Form(
                  key: _formKey,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: "Name:"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required!";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              name = value.toString();
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Hostel:"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required!";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              hostel = value.toString();
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Room:"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required!";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              room = value.toString();
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "School:"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required!";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              school = value.toString();
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Contact:"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required!";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              contact = value.toString();
                            });
                          },
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RaisedButton(
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            _formKey.currentState!.save();

                            Navigator.pop(context);
                          },
                          color: Colors.blue[200],
                          textColor: Colors.white,
                          child: Text("Update"),
                        )
                      ],
                    ),
                  )));
        });
  }

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(alignment: AlignmentDirectional.bottomCenter, children: [
            Container(
              height: 200,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                image: DecorationImage(
                    image: ExactAssetImage('image/class2.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  url.toString(),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NameCard("Name of Student:", name, h),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    NameCard("Hostel Name:", hostel, 2),
                    NameCard("Room:", room, 2),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                NameCard("School: ", school, h),
                SizedBox(
                  height: 5,
                ),
                NameCard("Contact Info:", contact, h),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
              color: Colors.blue[300],
              textColor: Colors.white,
              onPressed: () {
                _onPressedBottom();
              },
              child: Text(
                "Update",
                style: TextStyle(fontSize: 20),
              )),
          Text("Note : To edit your detail click on 'Update' button."),
        ],
      )),
    );
  }
}
