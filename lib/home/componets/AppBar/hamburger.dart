import 'package:flutter/material.dart';

class Hamburguer extends StatelessWidget {
  const Hamburguer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 22,
        width: 45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hamburguer(width: 30),
            hamburguer(width: 23),
            hamburguer(width: 28)
          ],
        ),
      ),
    );
  }

  Widget hamburguer({double? width}) {
    return Container(
      height: 4,
      width: width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF53575A),
      ),
    );
  }
}
