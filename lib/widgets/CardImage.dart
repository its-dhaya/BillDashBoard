import 'package:cardui/Responsive/Size.dart';
import 'package:cardui/components/colors.dart';
import 'package:cardui/components/styles.dart';
import 'package:cardui/data.dart';
import 'package:cardui/widgets/PaymetnList.dart';
import 'package:flutter/material.dart';

class CardImageItem extends StatelessWidget {
  const CardImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical!*5,
        
        ),
        Container(
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(
              color: AppColors.iconGray,
              blurRadius: 15,
              offset: Offset(10, 15)
            )]
          ) ,
          child: Image.asset('assets/images/card.png'),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical!*5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(text: "Recent Activities",size: 18,fontWeight: FontWeight.w800,),
            PrimaryText(text: '02 Jun 2024',size: 14,fontWeight: FontWeight.w400,color: AppColors.secondary,)
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical!*2,
        ),
        Column(
       children: List.generate(recentActivities.length, (index)=>PaymentList(
       icon: recentActivities[index]['icon'],
       label: recentActivities[index]['label'],
       amount: recentActivities[index]['amount'],
       ),
       ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical!*5,
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(text: "Upcoming Activities",size: 18,fontWeight: FontWeight.w800,),
            PrimaryText(text: '02 Jun 2024',size: 14,fontWeight: FontWeight.w400,color: AppColors.secondary,)
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical!*2,
        ),
        Column(
       children: List.generate(upcomingPayments.length, (index)=>PaymentList(
       icon: upcomingPayments[index]['icon'],
       label: upcomingPayments[index]['label'],
       amount: upcomingPayments[index]['amount'],
       ),
       ),
        ),
      ],
    );
  }
}



 