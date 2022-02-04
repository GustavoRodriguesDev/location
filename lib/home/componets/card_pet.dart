import 'package:flutter/material.dart';
import 'package:location/controller/home_controller.dart';

class CardPet extends StatefulWidget {
  final String namePet;
  final String breedPet;
  final String othersPet;
  final String location;
  final String imagePet;
  final Color color;

  const CardPet(
      {required this.namePet,
      required this.breedPet,
      required this.othersPet,
      required this.location,
      required this.imagePet,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  State<CardPet> createState() => _CardPetState();
}

class _CardPetState extends State<CardPet> {
  bool select = false;

  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: widget.color,
              ),
              child: Image.asset(widget.imagePet),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.namePet,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    widget.breedPet,
                    style: const TextStyle(
                        color: Color(0xFF9E9E9E), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.othersPet,
                    style: const TextStyle(
                      color: Color(0xFFCFCFCF),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.red,
                      ),
                      Text(
                        widget.location,
                        style: const TextStyle(
                          color: Color(0xFFCFCFCF),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                controller.select = !controller.select;
                controller.selectWidget();
              },
              child: Align(
                  alignment: Alignment.topRight,
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      return controller.icon;
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
