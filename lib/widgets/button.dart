import 'package:flutter/material.dart';
import 'package:nssystem/utils/global.colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.route,
  });

  final String text;
  final Route route;

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
    //   child: Container(
    //     padding: EdgeInsets.all(20),
    //     decoration: BoxDecoration(
    //         color: GlobalColors.mainColor,
    //         borderRadius: BorderRadius.circular(12)),
    //     child: Center(
    //       child: Text(
    //         text,
    //         style: TextStyle(
    //             color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
    //       ),
    //     ),
    //   ),
    // );

    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, route);
      },
      child: Text(text),
    );
  }
}
