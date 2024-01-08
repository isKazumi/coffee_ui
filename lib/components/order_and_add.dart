import 'package:flutter/material.dart';
import 'package:slicing_ui/theme.dart';

class OrderAndAdd extends StatelessWidget {
  const OrderAndAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Order Pack.png',
          width: 80,
        ),
        const SizedBox(
          width: 13,
        ),
        GestureDetector(
          child: Container(
            width: 250,
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: colorTheme),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ADD TO BAG',
                    style: semiboldText,
                  ),
                  Container(
                    height: 27,
                    width: 1,
                    color: Colors.white,
                  ),
                  Text(
                    '\$ 5.99',
                    style: semiboldText,
                  )
                ]),
          ),
        )
      ],
    );
  }
}
