// import 'package:flutter/material.dart';

// class RadioButtonValidation extends StatefulWidget {
//   @override
//   _RadioButtonValidationState createState() => _RadioButtonValidationState();
// }

// class _RadioButtonValidationState extends State<RadioButtonValidation> {
//   String selectedValue = "";
//   TextEditingController textController = TextEditingController();

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   String validationText = ""; // Menyimpan pesan validasi

//   void validateInput(String input) {
//     if ((selectedValue == "Option 1" && input != "Value for Option 1") ||
//         (selectedValue == "Option 2" && input != "Value for Option 2")) {
//       setState(() {
//         validationText =
//             "Input tidak sesuai dengan nilai yang dipilih dari radio button.";
//       });
//     } else {
//       setState(() {
//         validationText = "Input Sesuai"; // Input sesuai
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Radio Button Validation"),
//       ),
//       body: Form(
//         key: formKey,
//         child: Column(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 RadioListTile(
//                   title: Text("Option 1"),
//                   value: "Option 1",
//                   groupValue: selectedValue,
//                   onChanged: (value) {
//                     setState(() {
//                       selectedValue = value!;
//                     });
//                     validateInput(textController.text);
//                   },
//                 ),
//                 RadioListTile(
//                   title: Text("Option 2"),
//                   value: "Option 2",
//                   groupValue: selectedValue,
//                   onChanged: (value) {
//                     setState(() {
//                       selectedValue = value!;
//                     });
//                     validateInput(textController.text);
//                   },
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 controller: textController,
//                 decoration: InputDecoration(labelText: "Input Value"),
//                 validator: (value) {
//                   if (validationText.isEmpty) {
//                     return validationText; // Tampilkan pesan validasi jika ada
//                   }
//                   return "Validasi Berhasil"; // Validasi berhasil
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: RadioButtonValidation(),
//   ));
// }
