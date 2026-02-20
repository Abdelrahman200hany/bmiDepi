
import 'package:flutter/material.dart';

class CounterItem extends StatelessWidget {
  const CounterItem({super.key, this.onTap, required this.icon});
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        child: Center(child: Icon(icon, color: Colors.white)),
      ),
    );
  }
}
