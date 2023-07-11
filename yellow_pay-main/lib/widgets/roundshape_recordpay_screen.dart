import 'package:flutter/material.dart';

class RecordPayCard extends StatelessWidget {
  final String story;
  final IconData icon;
  final bool admit;
  final int date, cost;

  final _blackColor = const Color(0xFF1F2123);

  const RecordPayCard({
    super.key,
    required this.story,
    required this.admit,
    required this.date,
    required this.icon,
    required this.cost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: admit ? _blackColor : Colors.yellow.shade700,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 100, 20, 70),
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
                offset: const Offset(-4, -29),
                child: Text(
                  cost.toString(),
                  style: TextStyle(
                    color: admit ? Colors.yellow.shade600 : _blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-30, 10),
                child: Text(
                  story,
                  style: TextStyle(
                    color: admit ? Colors.white : _blackColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(15, -30),
                child: Text(
                  date.toString(),
                  style: TextStyle(
                    color: admit ? Colors.white : _blackColor,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-10, 5),
                child: Icon(
                  icon,
                  color: admit ? Colors.white : _blackColor,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
