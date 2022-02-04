import 'package:flutter/material.dart';
import 'package:location/home/componets/AppBar/hamburger.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Hamburguer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Location',
                      style: TextStyle(color: Colors.black45),
                    ),
                    Text(
                      'Cameron St., Boston',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF53575A),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/perfil/perfil.jpg',
                      ))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
