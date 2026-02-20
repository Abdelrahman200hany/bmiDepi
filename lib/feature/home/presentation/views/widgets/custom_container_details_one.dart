import 'package:bmi/feature/home/presentation/views/widgets/counter_item.dart';
import 'package:flutter/material.dart';

class ContainerDetailsOne extends StatefulWidget {
  const ContainerDetailsOne({
    super.key,
    required this.titel,
    required this.onChanged,
  });
  final String titel;
  final ValueChanged<int> onChanged;

  @override
  State<ContainerDetailsOne> createState() => _ContainerDetailsOneState();
}

class _ContainerDetailsOneState extends State<ContainerDetailsOne> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),

      padding: EdgeInsets.all(36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        

        children: [
          Text(
            widget.titel,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 2),
          Text(
            '$counter',
            style: TextStyle(
              color: const Color(0xff6C63FF),
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
       
            children: [
              CounterItem(
                icon: Icons.add,
                onTap: () {
                  counter++;
                  widget.onChanged(counter);
                  setState(() {});
                },
              ),
              SizedBox(width: 4),
              CounterItem(
                icon: Icons.remove,
                onTap: () {
                  if (counter > 0) {
                    counter--;
                    widget.onChanged(counter);
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
