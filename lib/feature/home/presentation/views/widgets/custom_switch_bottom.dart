import 'package:flutter/material.dart';

class CustomSwitchBottom extends StatefulWidget {
  const CustomSwitchBottom({super.key, required this.isMale});
  final ValueChanged<bool> isMale;

  @override
  State<CustomSwitchBottom> createState() => _CustomSwitchBottomState();
}

class _CustomSwitchBottomState extends State<CustomSwitchBottom> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Gender',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Male',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 12),
              SwitchBottom(
                isMale: isMale,
                onTap: () {
                  isMale = !isMale;
                  widget.isMale(isMale);
                  setState(() {});
                },
              ),
              SizedBox(width: 12),
              Text(
                'female',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SwitchBottom extends StatelessWidget {
  const SwitchBottom({super.key, required this.isMale, this.onTap});

  final bool isMale;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,

        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(milliseconds: 200),
              alignment: isMale ? Alignment.centerLeft : Alignment.centerRight,
              child: Container(
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
