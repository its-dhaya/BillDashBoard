import 'package:cardui/components/colors.dart';
import 'package:flutter/material.dart';

import '../components/styles.dart';

class PaymentList extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const PaymentList({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0,right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(icon!,width: 20,),
      ),
      title: PrimaryText(text: label!,size: 14,fontWeight: FontWeight.w500,),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(text: "Successfull",size: 12,color: AppColors.secondary,),
          PrimaryText(text: amount!,size: 14,color: AppColors.black,fontWeight: FontWeight.w700,)
        ],
      ),
    );
  }
}