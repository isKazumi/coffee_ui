import 'package:flutter/material.dart';
import 'package:slicing_ui/theme.dart';

class ComboMenu extends StatelessWidget {
  const ComboMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 15),
      height: 80,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(children: [
        Image.asset(
          'assets/images/image 5.png',
          width: 49,
          height: 28,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CROISSANT',
              style: semiboldText.copyWith(color: Colors.black),
            ),
            Image.asset(
              'assets/images/rattings.png',
              width: 95,
              height: 18,
            )
          ],
        ),
        const SizedBox(
          width: 106,
        ),
        Image.asset(
          'assets/images/button_add.png',
          width: 24,
        )
      ]),
    );
  }
}
