import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  Color color1;
  Color color2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 205, 105),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color1,
                color2,
              ],
              begin: startAligment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: Image.asset(
              "assets/images/dice-2.png",
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}











// class GradientContainer extends StatelessWidget {
//   GradientContainer({super.key, required this.colors});

//   List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 238, 205, 105),
//         body: Container(
//             decoration:  BoxDecoration(
//               gradient: LinearGradient(
//               colors: colors,
//                 begin: startAligment,
//                 end: endAlignment,
//               ),
//             ),
//             child: Center(child: Text("hello how are you "))),
//       ),
//     );
//   }
// }
