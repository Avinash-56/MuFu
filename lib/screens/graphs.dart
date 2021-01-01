// import 'package:MuFu/models/funds.dart';
// import 'package:MuFu/screens/subscriber_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;

// class Graph extends StatelessWidget {
//   @override
//   final List<Funds> data = [
//     Funds(
//       funds: 300000,
//       type: 'Gained',
//       barColor: charts.ColorUtil.fromDartColor(Colors.blue),
//     ),
//     Funds(
//       type: 'All',
//       funds: 300000000,
//       barColor: charts.ColorUtil.fromDartColor(Colors.purple),
//     )
//   ];
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: Row(
//             children: [
//               Expanded(
//                 child: ListTile(
//                   leading: Container(
//                     alignment: Alignment.topLeft,
//                     height: 15.0,
//                     width: 15.0,
//                     decoration: new BoxDecoration(
//                       color: Colors.blue,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                   title: Text(
//                     'Invested Value',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               Expanded(
//                 child: Container(
//                     alignment: Alignment.topLeft, child: FundChart(data: data)),
//                 // height: 200,
//                 // width: 100,
//               ),
//               SizedBox(
//                 child: FundChart(data: data),
//                 height: 200,
//                 width: 100,
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: ListTile(
//                   leading: Container(
//                     alignment: Alignment.topLeft,
//                     height: 15.0,
//                     width: 15.0,
//                     decoration: new BoxDecoration(
//                       color: Colors.purple,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                   title: Container(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       'Total Value',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class BarChartSample3 extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => BarChartSample3State();
// }

// class BarChartSample3State extends State<BarChartSample3> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       Expanded(
//         child: ListTile(
//           leading: Container(
//             alignment: Alignment.topLeft,
//             height: 15.0,
//             width: 15.0,
//             decoration: new BoxDecoration(
//               color: Colors.blue,
//               shape: BoxShape.circle,
//             ),
//           ),
//           title: Text(
//             'Invested Value',
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//       ),
//       AspectRatio(
//         aspectRatio: 0.2,
//         child: Container(
//           height: 100,
//           width: 100,
//           child: Card(
//             elevation: 0,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
//             color: const Color(0xff2c4260),
//             child: BarChart(
//               BarChartData(
//                 alignment: BarChartAlignment.spaceAround,
//                 maxY: 20,
//                 barTouchData: BarTouchData(
//                   enabled: false,
//                   touchTooltipData: BarTouchTooltipData(
//                     tooltipBgColor: Colors.transparent,
//                     tooltipPadding: const EdgeInsets.all(0),
//                     tooltipBottomMargin: 8,
//                     getTooltipItem: (
//                       BarChartGroupData group,
//                       int groupIndex,
//                       BarChartRodData rod,
//                       int rodIndex,
//                     ) {
//                       return BarTooltipItem(
//                         rod.y.round().toString(),
//                         TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 titlesData: FlTitlesData(
//                   show: true,
//                   bottomTitles: SideTitles(
//                     showTitles: true,
//                     getTextStyles: (value) => const TextStyle(
//                         color: Color(0xff7589a2),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 14),
//                     margin: 20,
//                     getTitles: (double value) {
//                       switch (value.toInt()) {
//                         case 0:
//                           return 'Gained';
//                         case 1:
//                           return 'Total';

//                         default:
//                           return '';
//                       }
//                     },
//                   ),
//                   leftTitles: SideTitles(showTitles: false),
//                 ),
//                 borderData: FlBorderData(
//                   show: false,
//                 ),
//                 barGroups: [
//                   BarChartGroupData(
//                     x: 0,
//                     barRods: [
//                       BarChartRodData(
//                           y: 10,
//                           colors: [Colors.lightBlueAccent, Colors.greenAccent])
//                     ],
//                     showingTooltipIndicators: [0],
//                   ),
//                   BarChartGroupData(
//                     x: 1,
//                     barRods: [
//                       BarChartRodData(
//                           y: 20,
//                           colors: [Colors.lightBlueAccent, Colors.greenAccent])
//                     ],
//                     showingTooltipIndicators: [0],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ]);
//   }
// }
