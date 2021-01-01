import 'package:MuFu/cubit/year_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MutualFund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mutual Funds'),
      ),
      // body: ListView(
      //     // width: size.width,
      //     children: [
      //       Column(
      //         children: <Widget>[
      //           SizedBox(
      //             height: 25,
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(
      //                 'I want to invest',
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                 ),
      //               ),

      //               // width: size.width * 0.23,

      //               TextField(
      //                 decoration: InputDecoration(
      //                     hintText: 'in Rs',
      //                     border: new OutlineInputBorder(
      //                         borderSide: new BorderSide(color: Colors.grey))),
      //               ),

      //               SizedBox(
      //                 width: 20,
      //               ),
      //               new DropdownButton<String>(
      //                 hint: Text('Range'),
      //                 items: <String>['Weekly', 'Monthly', 'Yearly']
      //                     .map((String value) {
      //                   return new DropdownMenuItem<String>(
      //                     value: value,
      //                     child: new Text(value),
      //                   );
      //                 }).toList(),
      //                 onChanged: (fs) {
      //                   // setState(() {
      //                   //   founders = fs;
      //                   // });
      //                 },
      //               ),
      //             ],
      //           ),
      //           SizedBox(height: 20),
      //           BlocBuilder<YearCubit, YearState>(
      //             builder: (context, state) {
      //               return Container(
      //                 alignment: Alignment.bottomRight,
      //                 child: Text(
      //                   state.year.toString(),
      //                   style: TextStyle(fontSize: 18),
      //                 ),
      //               );
      //             },
      //           ),
      //           SizedBox(
      //             height: 5,
      //           ),
      //           BlocBuilder<YearCubit, YearState>(
      //             builder: (context, state) {
      //               return Expanded(
      //                 child: Slider(
      //                   value: state.tempYear,
      //                   divisions: 10,
      //                   max: 10,
      //                   label: '${state.tempYear} years',
      //                   onChanged: (value) {
      //                     BlocProvider.of<YearCubit>(context).changeYear(value);
      //                   },
      //                 ),
      //               );
      //             },
      //           ),
      //           SizedBox(
      //             height: 5,
      //           ),
      //           // BlocBuilder<YearCubit, YearState>(
      //           //   builder: (context, state) {
      //           //     return Expanded(
      //           //       child: Slider(
      //           //         value: state.returns,
      //           //         divisions: 10,
      //           //         max: 10,
      //           //         label: ' ${state.returns} return',
      //           //         onChanged: (value) {
      //           //           BlocProvider.of<YearCubit>(context).changeReturns(value);
      //           //         },
      //           //       ),
      //           //     );
      //           //   },
      //           // ),
      //           Container(
      //             child: Row(
      //               children: [
      //                 Column(
      //                   children: [
      //                     Text('In 14 years, your monthly money will be'),
      //                     SizedBox(
      //                       height: 13,
      //                     ),
      //                     Text(
      //                       'Rs 32432434',
      //                       style: TextStyle(fontSize: 25),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ]),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'I want to invest',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2.0),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                new DropdownButton<String>(
                  hint: Text('Range'),
                  items: <String>['Weekly', 'Monthly', 'Yearly']
                      .map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (fs) {
                    // setState(() {
                    //   founders = fs;
                    // });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          BlocBuilder<YearCubit, YearState>(
            builder: (context, state) {
              return Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  state.year.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              );
            },
          ),
          SizedBox(
            height: 5,
          ),
          BlocBuilder<YearCubit, YearState>(
            builder: (context, state) {
              final tempyear = state.tempYear.toString();
              return Slider(
                value: state.tempYear,
                divisions: 10,
                max: 10,
                min: 1,
                label: '$tempyear years',
                onChanged: (value) {
                  BlocProvider.of<YearCubit>(context).changeYear(value);
                },
              );
            },
          ),
          BlocBuilder<YearCubit, YearState>(
            builder: (context, state) {
              final returns = state.returns.toString();

              return Slider(
                value: state.returns,
                divisions: 10,
                max: 10,
                min: 1,
                label: '$returns years',
                onChanged: (value) {
                  BlocProvider.of<YearCubit>(context).changeReturns(value);
                },
              );
            },
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
