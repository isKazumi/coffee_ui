import 'package:flutter/material.dart';
import 'package:slicing_ui/page/second_page.dart';
import 'package:slicing_ui/theme.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/bg-images.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 400),
                Center(
                  child: Text(
                    'Sweet &\nNaise Coffee',
                    textAlign: TextAlign.center,
                    style: boldText.copyWith(fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'Naise Coffee can change the\natmosphere in the morning',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12)),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - (2 * 58),
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 7,
                      backgroundColor: colorTheme,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                    },
                    child: Text(
                      'ORDER NOW',
                      style: semiboldText,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
