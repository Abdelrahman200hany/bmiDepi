import 'package:bmi/feature/home/presentation/manager/cubit/bmi_cubit.dart';
import 'package:bmi/feature/home/presentation/views/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiDetailsViewBody extends StatelessWidget {
  const BmiDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f3ff),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 24),
            Text('BMI CALCULATOR'),
            SizedBox(height: 24),
            Text('Body Mass Index', style: TextStyle(fontSize: 28)),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 24),
                  Text('BMI Results', style: TextStyle(fontSize: 32)),
                  SizedBox(height: 24),
                  BlocBuilder<BmiCubit, BmiState>(
                    builder: (context, state) {
                      return Text(
                        '${context.read<BmiCubit>().bmiResult.toInt()}',
                        style: TextStyle(
                          color: const Color(0xff6C63FF),
                          fontSize: 100,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 24),

                  BlocBuilder<BmiCubit, BmiState>(
                    builder: (context, state) {
                      return Text(
                        context.read<BmiCubit>().message,
                        style: TextStyle(fontSize: 32),
                      );
                    },
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Underweight: BMI less than 18.5',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Normal weight: BMI 18.5 to 24.9',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Overweight: BMI 25 to 29.9',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Obesity: 30 to 40',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
            SizedBox(height: 24),
            CustomButtom(text: 'Save the results'),
            SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
