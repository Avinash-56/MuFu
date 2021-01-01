import 'package:MuFu/cubit/year_cubit.dart';
import 'package:MuFu/models/funds.dart';
import 'package:MuFu/screens/graphs.dart';
import '../screens/subscriber_chart.dart';
import 'package:MuFu/widgets/bar.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:flutter_bloc/flutter_bloc.dart';

class MutualFund extends StatelessWidget {
  final List<Funds> data = [
    Funds(
      funds: 300000,
      type: 'Gained',
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Funds(
      funds: 300000000,
      type: 'All',
      barColor: charts.ColorUtil.fromDartColor(Colors.purple),
    )
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mutual Funds'),
      ),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'I want to invest',
                    style: TextStyle(
                      fontSize: 18,
                    ),
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
                padding: EdgeInsets.all(10),
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
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'In 14 years your money will be',
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Rs 2342342343',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: FundChart(
                    data: data,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 400,
            width: 400,
            child: FundChart(
              data: data,
            ),
          )
        ],
      ),
    );
  }
}
