import 'package:flutter/material.dart';
import 'package:slicing_ui/theme.dart';
import 'package:slicing_ui/components/combo_menu.dart';
import 'package:slicing_ui/components/order_and_add.dart';
import 'package:slicing_ui/components/size_cup.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffD1E1E0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/back.png',
                      width: 24,
                    ),
                  ),
                  Image.asset(
                    'assets/images/menu.png',
                    width: 24,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/images/image 6.png',
                  width: 192,
                  height: 195,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Caramel Macchiato',
                      style: semiboldText.copyWith(
                          fontSize: 24, color: colorTheme),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
                      style: regularText.copyWith(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Size',
                style: semiboldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizeCup(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Combo',
                style: semiboldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(
                height: 12,
              ),
              const ComboMenu(),
              const SizedBox(
                height: 54,
              ),
              const OrderAndAdd(),
              const SizedBox(
                height: 30,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
