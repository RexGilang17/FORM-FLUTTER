// import 'package:flutter/material.dart';

// class RadioButtonValidation extends StatefulWidget {
//   @override
//   _RadioButtonValidationState createState() => _RadioButtonValidationState();
// }

// class _RadioButtonValidationState extends State<RadioButtonValidation> {
//   String selectedValue = "";
//   TextEditingController textController = TextEditingController();

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
//             RadioListTile(
//               title: Text("Option 1"),
//               value: "Option 1",
//               groupValue: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value!;
//                   textController.text = "1"; // Menghapus teks input
//                 });
//               },
//             ),
//             RadioListTile(
//               title: Text("Option 2"),
//               value: "Option 2",
//               groupValue: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value!;
//                   textController.text = "2"; // Menghapus teks input
//                 });
//               },
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 controller: textController,
//                 decoration: InputDecoration(labelText: "Input Value"),
//                 validator: (value) {
//                   if (selectedValue.isEmpty) {
//                     return "Pilih salah satu opsi radio terlebih dahulu";
//                   }
//                   return null; // Validasi berhasil
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (formKey.currentState!.validate()) {
//                   // Form validation passed, continue with your logic here
//                 }
//               },
//               child: Text("Submit"),
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

// import 'package:flutter/material.dart';

// class RadioButtonValidation extends StatefulWidget {
//   @override
//   _RadioButtonValidationState createState() => _RadioButtonValidationState();
// }

// class _RadioButtonValidationState extends State<RadioButtonValidation> {
//   String selectedValue = "";
//   TextEditingController textController = TextEditingController();

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
//             RadioListTile(
//               title: Text("Option 1"),
//               value: "Option 1",
//               groupValue: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value!;
//                   textController.text = value;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: Text("Option 2"),
//               value: "Option 2",
//               groupValue: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value!;
//                   textController.text = value;
//                 });
//               },
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 controller: textController,
//                 decoration: InputDecoration(labelText: "Input Value"),
//                 validator: (value) {
//                   if (selectedValue == "Option 1" &&
//                       value != "Value for Option 1") {
//                     return "Input tidak sesuai dengan Option 1";
//                   } else if (selectedValue == "Option 2" &&
//                       value != "Value for Option 2") {
//                     return "Input tidak sesuai dengan Option 2";
//                   }
//                   return "Anda Belum Memasukan Input"; // Validasi berhasil
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (formKey.currentState!.validate()) {
//                   // Form validation passed, continue with your logic here
//                 }
//               },
//               child: Text("Submit"),
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

