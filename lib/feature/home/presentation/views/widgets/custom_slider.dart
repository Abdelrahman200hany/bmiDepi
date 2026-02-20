import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key, required this.onChanged});
  final ValueChanged<int> onChanged;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double currentValue = 50;
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
          Text('Height (CM)', style: TextStyle(color: Colors.black)),
          SizedBox(height: 8),
          Text(
            '${currentValue.toInt()}',
            style: TextStyle(
              color: const Color(0xff6C63FF),
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Slider(
            min: 50,
            max: 300,
            value: currentValue,
            onChanged: (value) {
              currentValue = value;
              widget.onChanged(currentValue.toInt());
              setState(() {});
            },
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text('50 cm ', style: TextStyle(color: Colors.black)),
                Spacer(),
                Text('300 cm ', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
