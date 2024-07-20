import 'package:cardui/Responsive/responsive.dart';
import 'package:flutter/material.dart';

import '../Responsive/Size.dart';
import '../components/colors.dart';
import '../components/styles.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const InfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints( minWidth:Responsive.isDesktop(context)?  200:160),
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: Responsive.isDesktop(context)?40:20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white
      ),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(icon,width: 35,),
          SizedBox(
            height: SizeConfig.blockSizeVertical!*2,
          ),
          PrimaryText(text: label,color: AppColors.secondary,
          size: 16,),
          SizedBox(
            height: SizeConfig.blockSizeVertical!*2,
          ),
          PrimaryText(text: amount,fontWeight: FontWeight.w700,size: 18,)
        ],
      ),
    );
  }
}

 