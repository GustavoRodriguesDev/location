import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardType extends StatelessWidget {
  final FaIcon icon;
  final String textType;
  const CardType({required this.icon, required this.textType, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: icon,
            color: Colors.black54,
          ),
          Text(
            textType,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
