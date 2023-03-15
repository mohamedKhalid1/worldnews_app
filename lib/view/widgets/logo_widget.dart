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
          children: const [
            SizedBox(
              width: 12,
            ),
            Text(
              "W ",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "orld",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "N ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            Text(
              "ews",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}
