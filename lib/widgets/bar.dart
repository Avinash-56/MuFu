// import 'package:MuFu/models/funds.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import './bar_chart.dart';

// // import '../models/transaction.dart';

// class Chart extends StatelessWidget {
//   List<Funds> data = [
//     Funds(
//       funds: 300000,
//       type: 'Gained',
//       barColor: Colors.purple,
//     ),
//     Funds(
//       type: 'All',
//       funds: 300000000,
//       barColor: Colors.blue,
//     )
//   ];

//   // List<Map<String, Object>> get groupedTransactionValues {
//   //   return List.generate(7, (index) {
//   //     final weekDay = DateTime.now().subtract(
//   //       Duration(days: index),
//   //     );
//   //     var totalSum = 0.0;
//   //     // for (var i = 0; i < recentTransaction.length; i++) {
//   //     //   if (recentTransaction[i].date.day == weekDay.day &&
//   //     //       recentTransaction[i].date.month == weekDay.month &&
//   //     //       recentTransaction[i].date.year == weekDay.year) {
//   //     //     totalSum += recentTransaction[i].amount;
//   //     //   }
//   //     // }
//   //     print(DateFormat.E().format(weekDay));
//   //     print(totalSum);
//   //     return {
//   //       'day': DateFormat.E().format(weekDay).substring(0, 1),
//   //       'amount': totalSum,
//   //     };
//   //   }).reversed.toList();
//   // }

//   // double get totalSpending {
//   //   return groupedTransactionValues.fold(0.0, (sum, item) {
//   //     return sum + item['amount'];
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 6,
//       margin: EdgeInsets.all(20),
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: data.map((data) {
//             return Flexible(
//               fit: FlexFit.tight,
//               child: ChartBar(data.funds, data.type, data.barColor),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
