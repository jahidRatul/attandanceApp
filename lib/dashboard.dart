import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/attandence_view_model.dart';

import 'home_screen/custom.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool leaveEnjoyed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<AttendanceViewModel>(
        // init: AttendanceViewModel(),
        builder: (controller) => SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/icon_vacation.png',
                    height: 120,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Total No. of leave",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  controller?.attendanceModelClass?.data?.leave?.first
                          ?.leaveDays ??
                      '25',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            leaveEnjoyed = true;
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: leaveEnjoyed
                                  ? Color(0xff578DED)
                                  : Colors.white,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Leave Enjoyed',
                                  style: TextStyle(
                                      color: leaveEnjoyed
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  controller?.attendanceModelClass?.data?.leave
                                          ?.first?.leaveEnjoy ??
                                      '10',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: leaveEnjoyed
                                          ? Colors.white
                                          : Color(0xff578DED)),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                          ),
                          elevation: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            leaveEnjoyed = false;
                          });
                        },
                        child: Card(
                          color:
                              leaveEnjoyed ? Colors.white : Color(0xff5CCB96),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  'Leave Remained',
                                  style: TextStyle(
                                      color: leaveEnjoyed
                                          ? Colors.black
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  controller?.attendanceModelClass?.data?.leave
                                          ?.first?.leaveRemaining ??
                                      '15',
                                  style: TextStyle(
                                      color: leaveEnjoyed
                                          ? Color(0xff5CCB96)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                          ),
                          elevation: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                EnjoyedCardCustom(leaveEnjoyed: leaveEnjoyed),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
