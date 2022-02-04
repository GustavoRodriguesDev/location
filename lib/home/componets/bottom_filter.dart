import 'package:flutter/material.dart';

class BottomFilter extends StatelessWidget {
  const BottomFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: const Icon(
        Icons.filter_list,
        size: 30,
        color: Colors.black54,
      ),
    );
  }
}
