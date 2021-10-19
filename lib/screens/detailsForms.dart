import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsForms extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String? _name, _contact, _address, _room_num;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Shipping Details"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Contact"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _contact = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Room or Flat Number"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _room_num = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Complete Address"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _address = value.toString();
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    _formKey.currentState!.save();
                    showCupertinoDialog(
                      context: context,
                      builder: cupertino,
                    );
                    //Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Order",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cupertino(BuildContext context) => CupertinoAlertDialog(
        title: Text("Message"),
        content: Text("Your order has been placed."),
        actions: [
          CupertinoDialogAction(
            child: Text('Okay'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
}
