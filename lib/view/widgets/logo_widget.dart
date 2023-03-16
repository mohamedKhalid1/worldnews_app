import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 50,
              decoration: BoxDecoration(
                color: Constants.color1,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            const SizedBox(
              width: 46,
            ),
            Container(
              width: 40,
              height: 50,
              decoration: BoxDecoration(
                color: Constants.color2,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            Text(
              "W ",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              "orld",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "N ",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              "ews",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ],
    );
  }
}
