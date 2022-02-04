import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:location/home/componets/bottom_filter.dart';
import 'package:location/home/componets/card_pet.dart';
import 'package:location/home/componets/card_type.dart';

import 'componets/AppBar/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xFFF2F2F2),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
              child: Row(
                children: [
                  const BottomFilter(),
                  const SizedBox(width: 25),
                  SizedBox(
                    height: 55,
                    width: width * 0.7,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CardType(
                          icon: FaIcon(FontAwesomeIcons.dog),
                          textType: 'Dogs',
                        ),
                        SizedBox(width: 25),
                        CardType(
                          icon: FaIcon(FontAwesomeIcons.cat),
                          textType: 'Cats',
                        ),
                        SizedBox(width: 25),
                        CardType(
                          icon: FaIcon(FontAwesomeIcons.crow),
                          textType: 'Birds',
                        ),
                        SizedBox(width: 25),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: SizedBox(
                height: height * 0.66,
                child: ListView(
                  children: const [
                    CardPet(
                      namePet: 'Sparky',
                      breedPet: 'Golden Retriever',
                      othersPet: 'Female, 8 months old',
                      location: '2.5 kms away',
                      imagePet: 'assets/dogs/dog1.png',
                      color: Color(0xFFF9E468),
                    ),
                    SizedBox(height: 10),
                    CardPet(
                      namePet: 'Charlie',
                      breedPet: 'Boston Terrier',
                      othersPet: 'male, 1.5 years old',
                      location: '2.6 kms away',
                      imagePet: 'assets/dogs/dog2.png',
                      color: Color(0xFF88D3CF),
                    ),
                    SizedBox(height: 10),
                    CardPet(
                      namePet: 'Max',
                      breedPet: 'Siberian Husky',
                      othersPet: 'male, 1 year old',
                      location: '2.9 kms away',
                      imagePet: 'assets/dogs/dog3.png',
                      color: Color(0xFF7CC8E6),
                    ),
                    SizedBox(height: 10),
                    CardPet(
                      namePet: 'Daisy',
                      breedPet: 'Maltese',
                      othersPet: 'Female, 7 months old',
                      location: '3.1 kms away',
                      imagePet: 'assets/dogs/dog4.png',
                      color: Color(0xFFF8A97A),
                    ),
                    SizedBox(height: 10),
                    CardPet(
                      namePet: 'Zoe',
                      breedPet: 'Jack Russell Terrier',
                      othersPet: 'Female, 11 months old',
                      location: '2.1 kms away',
                      imagePet: 'assets/dogs/dog5.png',
                      color: Color(0xFFBADBA4),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
