// import 'package:flutter/material.dart';



// class ButtonList extends StatelessWidget {
//   final List<String> buttonTitles = ['Button 1', 'Button 2', 'Button 3'];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: buttonTitles.length,
//       itemBuilder: (context, index) {
//         return CustomButton(buttonTitle: buttonTitles[index]);
//       },
//     );
//   }
// }

// class CustomButton extends StatefulWidget {
//   final String buttonTitle;

//   const CustomButton({Key? key, required this.buttonTitle}) : super(key: key);

//   @override
//   _CustomButtonState createState() => _CustomButtonState();
// }

// class _CustomButtonState extends State<CustomButton> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () {
//           // Handle button tap
//         },
//         onHover: (isHovered) {
//           setState(() {
//             _isHovered = isHovered;
//           });
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: _isHovered ? Colors.purple : Colors.grey,
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           padding: EdgeInsets.all(16.0),
//           child: Text(
//             widget.buttonTitle,
//             style: TextStyle(
//               color: _isHovered ? Colors.white : Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
