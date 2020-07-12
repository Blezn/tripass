import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      color: Colors.white,
      elevation: 2,
      borderOnForeground: true,
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Lagos',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                Image.asset('assets/images/aeroplane.png'),
                Text(
                  'London',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mon , 23 2020',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                      color: Color(0xffA5A2A2)),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Mon , 24 2020',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                      color: Color(0xffA5A2A2)),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '12: 24 pm',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                      color: Color(0xffA5A2A2)),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '1: 24 pm',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                      color: Color(0xffA5A2A2)),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                      color: Color(0xff3E64FF),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Text(
                    'Business',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 11,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                Icon(Icons.more_vert),
              ],
            )
          ],
        ),
      ),
    );
  }
}
