import 'package:flutter/material.dart';

class RadioButtonToTextField extends StatefulWidget {
  @override
  _RadioButtonToTextFieldState createState() => _RadioButtonToTextFieldState();
}

class _RadioButtonToTextFieldState extends State<RadioButtonToTextField> {
  String selectedValue = "";
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button to TextField"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              RadioListTile(
                title: Text("Option 1"),
                value: "Option 1",
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                    textController.text = value; // Set the TextField value
                  });
                },
              ),
              RadioListTile(
                title: Text("Option 2"),
                value: "Option 2",
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                    textController.text = value; // Set the TextField value
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              controller: textController,
              decoration: InputDecoration(labelText: "Selected Value"),
              // readOnly: true, // Make the TextField read-only
            ),
          ),
        ],
      ),
    );
  }
}