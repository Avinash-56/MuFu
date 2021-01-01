import 'package:MuFu/cubit/year_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './screens/mutual_fund.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<YearCubit>(
      create: (context) => YearCubit(),
      child: MaterialApp(
        title: 'Bank',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MutualFund(),
      ),
    );
  }
}
