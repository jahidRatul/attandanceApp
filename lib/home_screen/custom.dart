import 'package:flutter/material.dart';

class EnjoyedCardCustom extends StatelessWidget {
  const EnjoyedCardCustom({
    Key key,
    @required this.leaveEnjoyed,
  }) : super(key: key);

  final bool leaveEnjoyed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: leaveEnjoyed ? Color(0xff578DED) : Color(0xff5CCB96),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enjoyed Leave Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sick Leave: 5',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Casual Leave: 3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              ),
              elevation: 4,
            ),
          ),
        ],
      ),
    );
  }
}
