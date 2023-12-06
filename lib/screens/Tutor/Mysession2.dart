import 'package:driven/constants/color.dart';
import 'package:driven/widgets/apptext.dart';
import 'package:driven/widgets/backbutton.dart';
import 'package:driven/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EditSessionall.dart';

class MysessionScreen2 extends StatefulWidget {
  const MysessionScreen2({super.key});

  @override
  State<MysessionScreen2> createState() => _MysessionScreen2State();
}

class _MysessionScreen2State extends State<MysessionScreen2> {
  @override
  List<String> droplist = [
    "type 1",
    "type 2",
    "type 3"
  ]; // drop down button list...........................
  String? selectedvalue; // drop down selected value..........................

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 22).r,
            child: backbutton(),
          ),
          title: Apptext3(
              text: "My Sessions",
              textcolor: btncolor,
              size: 18.sp,
              weight: FontWeight.w500),
          centerTitle: true,
        ),
        backgroundColor: backcolor,
        body: Padding(
          padding: const EdgeInsets.all(22).r,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(
              height: 26,
              width: 84,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8).r, color: Colors.grey),
              child: Center(
                child: DropdownButton<String>(
                    hint: Text("Type"),
                    underline: SizedBox(),
                    value: selectedvalue,
                    items: droplist.map((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (newvalue) {
                      setState(() {
                        selectedvalue = newvalue;
                      });
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
                // Tab bar ..........................................
                height: 30.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).r,
                  color: btncolor,
                ),
                child: TabBar(
                  unselectedLabelColor: boxcolor,
                  labelColor: btncolor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      // Creates border
                      color: backcolor),
                  //Change background color from here
                  tabs: const [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Finished",
                    ),
                    Tab(
                      text: "Pending",
                    ),
                  ],
                ),
              ),
            ),
            //Tab Bar view...........................................................
            const Expanded(
                child: TabBarView(children: [
              EditsessionallScreen(),
              //custom edit session tale..............
              EditsessionallScreen(),
              EditsessionallScreen(),
            ]))
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              add(); //floating Action button function.......................
            },
            backgroundColor: btncolor,
            child: const Center(
                child: Icon(
              Icons.add,
              color: backcolor,
            ))),
      ),
    );
  }

  // Add button function....................................................
  Future<void> add() async {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 300.h,
            width: 300.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: btncolor),
            child: Padding(
              padding: const EdgeInsets.all(20).r,
              child: Column(children: [

                Text(
                  "WRITE REVIEW",
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: backcolor),
                ),
                //Rating Bar...............................................................
                Padding(
                  padding: const EdgeInsets.only(top: 15).r,
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 3),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_border_purple500_outlined,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
               // Title  Text form field.....................................................
                Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: SizedBox(
                      height: 36.h,
                      child: TextFormField(
                          // controller: ,text editing controller
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              hintText: "title",
                              hintStyle: TextStyle(fontSize: 15.sp),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 15.w),
                              filled: true,
                              fillColor: backcolor))),
                ),
                // //Review Text Field..................................................................
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 8).r,
                  child: SizedBox(
                      height: 50.h,
                      child: TextFormField(
                          // controller: ,text editing controller
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: dark),
                                  borderRadius: BorderRadius.circular(8).r),
                              hintText: "Review",
                              hintStyle: TextStyle(fontSize: 15.sp),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 15.w),
                              filled: true,
                              fillColor: backcolor))),
                ),
                //Button.......................................
                Button(
                  btnname: "SEND",
                  btntheam: btncolor,
                  textcolor: backcolor,
                  outlinecolor: backcolor,
                  click: () {
                    //button pressed....................................
                  },
                  height: 36,
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
