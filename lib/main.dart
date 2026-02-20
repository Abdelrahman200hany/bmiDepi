import 'package:bmi/feature/home/presentation/manager/cubit/bmi_cubit.dart';
import 'package:bmi/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}
