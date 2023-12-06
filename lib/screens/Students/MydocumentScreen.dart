import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color.dart';
import '../../widgets/AdddocumentCard.dart';
import '../../widgets/apptext.dart';
import '../../widgets/backbutton.dart';
import '../../widgets/buttons.dart';

class MydocumentScreen extends StatelessWidget {
  const MydocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 22).r,
          child: backbutton(),
        ),
        title: Apptext3(
            text: "My Documents",
            textcolor: btncolor,
            size: 16.sp,
            weight: FontWeight.w500),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: ListView.builder(itemBuilder: (context, index) {
          return const DocumentCrd(title: "Aadhar Card",);  // list of documents........................................
        },
        itemCount: 3,)
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: btncolor,
          onPressed: () {
            add(context);
          },
          child: const Center(
              child: Icon(
            Icons.add,
            color: backcolor,
          ))),
    );
  }

  // Add Dialog box Function...............................................
  Future<void> add(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 236.h,
            width: 300.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: btncolor),
            child: Padding(
              padding: const EdgeInsets.all(20).r,
              child: Column(children: [
                Text(
                  "UPLOAD DOCUMENT",
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: backcolor),
                ),
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
                              hintText: "Document Type",
                              hintStyle: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 15.w),
                              filled: true,
                              fillColor: backcolor))),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10).r,
                    child: Button(
                      btnname: "Upload Image",
                      btntheam: backcolor,
                      textcolor: Colors.grey,
                      outlinecolor: backcolor,
                      height: 59.h,
                      click: () {
                        //Upload Image function.......................................
                      },
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10).r,
                  child: Button(
                    btnname: "DONE",
                    btntheam: btncolor,
                    textcolor: backcolor,
                    outlinecolor: backcolor,
                    click: () {
                      //button pressed....................................
                    },
                    height: 36.h,
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}


