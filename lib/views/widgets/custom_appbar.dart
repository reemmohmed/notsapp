import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.titel, required this.icon});
  final String titel;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          titel,
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Spacer(),
        Customsearchicon(
          icon: icon,
        )
      ],
    );
  }
}
