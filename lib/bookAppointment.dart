import 'package:lee_project/constants/constants.dart';
import 'package:lee_project/constants/imageConstant.dart';
import 'package:lee_project/responsive.dart';
import 'package:lee_project/bookAppointmentPage.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class BookAppointmentScreen extends StatefulWidget {
  BookAppointmentScreen({Key? key, required this.index}) : super(key: key);

  int index = 0;

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tWhite,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: tGreen,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: tWhite,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Center(
                child :
                  Image.asset(
                  Images.DOCTORIMAGE,
                  scale: 3,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            DefaultTabController(
              length: 2,
              initialIndex: widget.index,
              child: Container(
                color: tWhite,
                height: 95.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: tGreen,
                      indicatorWeight: 3,
                      labelColor: tGreen,
                      labelPadding: EdgeInsets.symmetric(vertical: 10),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: isTab(context) ? 9.sp : 12.sp),
                      unselectedLabelColor: tSecondaryBlack,
                      unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: isTab(context) ? 7.sp : 10.sp),
                      tabs: [
                        Tab(
                          child: Text(
                            'Book\nAppointment',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        child: TabBarView(children: [
                          BookAppointmentPage()
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
