// import 'package:flutter/material.dart';

// class ChartBar extends StatelessWidget {
//   final int funds;
//   final String type;
//   final Color barColor;

//   ChartBar(this.funds, this.type, this.barColor);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (ctx, constraints) {
//       return Column(
//         children: <Widget>[
//           Container(
//             height: constraints.maxHeight * 0.15,
//             child: FittedBox(
//               child: Text('\$${funds}'),
//             ),
//           ),
//           SizedBox(height: constraints.maxHeight * 0.05),
//           Container(
//             height: constraints.maxHeight * 0.6,
//             width: 10,
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                     color: Color.fromRGBO(
//                       220,
//                       220,
//                       220,
//                       1,
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 FractionallySizedBox(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: barColor,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: constraints.maxHeight * 0.05,
//           ),
//           Container(
//             height: constraints.maxHeight * 0.15,
//             child: FittedBox(child: Text(type)),
//           ),
//         ],
//       );
//     });
//   }
// }
