import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/gogo.png'),
        const Spacer(),
        Image.asset('assets/map.png'),
      ],
    );
  }
}