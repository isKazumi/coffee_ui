import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/theme.dart';

class SizeCup extends StatefulWidget {
  const SizeCup({Key? key}) : super(key: key);
  @override
  State createState() => _SizeCupState();
}

class _SizeCupState extends State {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget sizeContent(int index, String ukuran) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          decoration: selectedIndex == index
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: colorTheme,
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: colorTheme)),
          child: Text(
            ukuran,
            style: selectedIndex == index
                ? semiboldText.copyWith(fontSize: 24)
                : regularText.copyWith(fontSize: 24),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        sizeContent(0, 'S'),
        sizeContent(1, 'M'),
        sizeContent(2, 'L'),
      ],
    );
  }
}
