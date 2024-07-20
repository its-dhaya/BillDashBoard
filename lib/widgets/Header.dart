import 'package:cardui/Responsive/responsive.dart';
import 'package:flutter/material.dart';

import '../components/colors.dart';
import '../components/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(text: 'DashBoard',size: 20,fontWeight: FontWeight.w800,),
              PrimaryText(text: "Payments updates",size: 16,color: AppColors.secondary,)
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
Expanded(
  flex: Responsive.isDesktop(context)?1:2,
  child: TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: AppColors.white,
      contentPadding: EdgeInsets.only(left: 40, right: 5),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.white),
      ),
      prefixIcon: Icon(Icons.search, color: Colors.black,),
      hintText: 'Search',
      hintStyle: TextStyle(color: AppColors.secondary, fontSize: 14),
    ),
  ),
)

      ],
    );
  }
}

 