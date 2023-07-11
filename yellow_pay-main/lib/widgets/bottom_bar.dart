import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const SizedBox(
        height: 60,
        child: TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.blue,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.content_paste_search_sharp,
                size: 20,
              ),
              child: Text(
                '거래 내역',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.payment_outlined,
                size: 20,
              ),
              child: Text(
                '결제',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                size: 20,
              ),
              child: Text(
                '설정',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
