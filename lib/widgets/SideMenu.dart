import 'package:cardui/Responsive/Size.dart';
import 'package:cardui/components/colors.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/images/mac-action.png'),
                ),
              ),
              SizedBox(
                height: 60,
                width: 70,
                child: IconButton(onPressed: (){},
                 icon: Image.asset('assets/images/home.png',color: AppColors.iconGray,),
                 iconSize: 20,
                 padding: EdgeInsets.symmetric(vertical: 20),
                 ),
              ),
              SizedBox(
                height: 60,
                width: 70,
                child: IconButton(onPressed: (){},
                 icon: Image.asset('assets/images/pie-chart.png',color: AppColors.iconGray,),
                 iconSize: 20,
                 padding: EdgeInsets.symmetric(vertical: 20),
                 ),
              ),
              SizedBox(
                height: 60,
                width: 70,
                child: IconButton(onPressed: (){},
                 icon: Image.asset('assets/images/clipboard.png',color: AppColors.iconGray,),
                 iconSize: 20,
                 padding: EdgeInsets.symmetric(vertical: 20),
                 ),
              ),
              SizedBox(
                height: 60,
                width: 70,
                child: IconButton(onPressed: (){},
                 icon: Image.asset('assets/images/credit-card.png',color: AppColors.iconGray,),
                 iconSize: 20,
                 padding: EdgeInsets.symmetric(vertical: 20),
                 ),
              ),
              SizedBox(
                height: 60,
                width: 70,
                child: IconButton(onPressed: (){},
                 icon: Image.asset('assets/images/trophy.png',color: AppColors.iconGray,),
                 iconSize: 5,
                 padding: EdgeInsets.symmetric(vertical: 20),
                 ),
              ),
                SizedBox(
                  height: 60,
                  width: 70,
                  child: IconButton(onPressed: (){},
                  icon: Image.asset('assets/images/invoice.png',color: AppColors.iconGray,),
                 iconSize: 5,
                  padding: EdgeInsets.symmetric(vertical: 20),
                              ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}