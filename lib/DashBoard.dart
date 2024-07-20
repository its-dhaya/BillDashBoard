import 'package:cardui/Responsive/Size.dart';
import 'package:cardui/Responsive/responsive.dart';
import 'package:cardui/components/colors.dart';
import 'package:cardui/components/styles.dart';
import 'package:cardui/widgets/AppBar.dart';
import 'package:cardui/widgets/BarChartWidget.dart';
import 'package:cardui/widgets/CardImage.dart';
import 'package:cardui/widgets/HistorySection.dart';
import 'package:cardui/widgets/InfoCard.dart';
import 'package:cardui/widgets/PaymetnList.dart';
import 'package:cardui/widgets/SideMenu.dart';
import 'package:flutter/material.dart';

import 'widgets/Header.dart';

class Dashboard extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
   Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerkey,
      drawer: SizedBox(width: 100,child: SideMenu(),),
      appBar: !Responsive.isDesktop(context)?AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(onPressed: (){
          _drawerkey.currentState?.openDrawer();
        }, icon: Icon(Icons.menu,color: AppColors.black,),
        ),
        actions: [
          AppBarItems()
        ],
      ):PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isDesktop(context))
          Expanded(
            flex: 1,
            child: SideMenu(),
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderWidget(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical!*4,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: const Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            InfoCard(
                              icon: 'assets/images/credit-card.png',
                              label:'Tansfer via \ncard number',
                              amount : '\$1200'
                            ),
                            InfoCard(
                              icon: 'assets/images/transfer.png',
                              label:'Tansfer via \nOnline Banks',
                              amount : '\$1400'
                            ),
                            InfoCard(
                              icon: 'assets/images/bank.png',
                              label:'Tansfer via \nSame Bank',
                              amount : '\$1600'
                            ),
                            InfoCard(
                              icon: 'assets/images/invoice.png',
                              label:'Tansfer via \nOther Bank',
                              amount : '\$1800'
                            ),
                            
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical!*4,
                      ),
                    const  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(text: 'Balace',
                              size: 16,
                              color: AppColors.secondary,
                              ),
                              PrimaryText(text: '\$2000',
                              size: 28,
                              fontWeight: FontWeight.w700
                              ),
                               
                            ],
                          ),
                          PrimaryText(text: 'Past 20 Days',
                              size: 16,
                              color: AppColors.secondary, 
                              ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical!*3,
                      ),
                      Container(
                        height: 180,
                        child: Barchartwidget(),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical!*4,
                      ),
                     const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(text: 'History',
                              size: 30,
                              fontWeight: FontWeight.w800,
                              ),
                              PrimaryText(text: 'Transaction of last 6 months',
                              size: 16,
                              color: AppColors.secondary,
                              ),
                               
                            ],
                          ),
                          SizedBox(
                        height: SizeConfig.blockSizeVertical!*3,),
                        Historysection(),
                        if(!Responsive.isDesktop(context))
                        CardImageItem()
                    ],
                  ),
                ),
              )
            ),
            if(Responsive.isDesktop(context))
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.secondaryBg,
                child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                  child: Column(
                    children: [
                      AppBarItems(),
                      CardImageItem()
                    ],
                  ),
                ),
              )
            )
        ],
      )),
    );
  }
}



 