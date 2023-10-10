// import 'package:flutter/material.dart';

// class RadioButtonValidation extends StatefulWidget {
//   @override
//   _RadioButtonValidationState createState() => _RadioButtonValidationState();
// }

// class _RadioButtonValidationState extends State<RadioButtonValidation> {
//   String selectedValue = "";
//   TextEditingController textController = TextEditingController();
//   FocusNode textFocusNode = FocusNode();

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("FORM"),
//       ),
//       body: Form(
//         key: formKey,
//         child: Column(
//           children: <Widget>[
//             RadioListTile(
//               title: Text("1"),
//               value: "1",
//               groupValue: selectedValue,
//               onChanged: (value) {
//                 setState(
//                   () {
//                     selectedValue = value!;
//                     textController.text = ""; // Reset text input
//                   },
//                 );
//               },
//             ),
//             RadioListTile(
//               title: Text("2"),
//               value: "2",
//               groupValue: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value!;
//                   textController.text = ""; // Reset text input
//                 });
//               },
//             ),
//             RadioListTile(
//               title: Text("3"),
//               value: "3",
//               groupValue: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value!;
//                   textController.text = ""; // Reset text input
//                 });
//               },
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 controller: textController,
//                 decoration: InputDecoration(labelText: "Input Value"),
//                 validator: (value) {
//                   if (value != selectedValue) {
//                     return "Input tidak sesuai dengan pilihan yang dipilih.";
//                   } else if (selectedValue.isEmpty) {
//                     return "Pilih salah satu opsi radio terlebih dahulu";
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (formKey.currentState!.validate()) {
//                   // Validasi berhasil, lanjutkan dengan logika Anda di sini
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                         content:
//                             Text('Input sesuai dengan pilihan yang dipilih.')),
//                   );
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
