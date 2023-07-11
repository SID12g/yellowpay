import 'package:flutter/material.dart';

class SettingSetscreen extends StatelessWidget {
  final String settitle;
  final IconData iconsetting;

  const SettingSetscreen({
    super.key,
    required this.settitle,
    required this.iconsetting,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 199, 199, 199),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 15, 20, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-65, -2),
                child: Text(
                  settitle,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-8, 0),
                child: Icon(
                  iconsetting,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
