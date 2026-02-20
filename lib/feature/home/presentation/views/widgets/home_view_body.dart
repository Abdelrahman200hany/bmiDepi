import 'package:bmi/feature/home/presentation/manager/cubit/bmi_cubit.dart';
import 'package:bmi/feature/home/presentation/views/bmi_details_view.dart';
import 'package:bmi/feature/home/presentation/views/widgets/custom_buttom.dart';
import 'package:bmi/feature/home/presentation/views/widgets/custom_container_details_one.dart';
import 'package:bmi/feature/home/presentation/views/widgets/custom_slider.dart';
import 'package:bmi/feature/home/presentation/views/widgets/custom_switch_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int? height;
  int? weight;
  int? age;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f3ff),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
        
          children: [
            SizedBox(height: 36),
            Text('BMI CALCULATOR', style: TextStyle(color: Colors.black)),
            SizedBox(height: 36),
            Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                ContainerDetailsOne(
                  titel: 'Age',
                  onChanged: (value) {
                    age = value;
                  },
                ),
                SizedBox(width: 12),
                ContainerDetailsOne(
                  titel: 'Weight (KG)',
                  onChanged: (value) {
                    weight = value;
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            CustomSlider(
              onChanged: (value) {
                height = value;
              },
            ),
            SizedBox(height: 16),
            CustomSwitchBottom(
              isMale: (value) {
                isMale = value;
              },
            ),
            SizedBox(height: 46),
            CustomButtom(
              text: 'Calculate BMI',
              onPressed: () {
                if (height == null || weight == null || age == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please fill all fields")),
                  );

                  return;
                }

                context.read<BmiCubit>().calculateBmi(
                  height: height!,
                  weight: weight!,
                  age: age!,
                  isMale: isMale,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiDetailsResult()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
