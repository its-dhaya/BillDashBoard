import 'package:cardui/Responsive/responsive.dart';
import 'package:cardui/components/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Barchartwidget extends StatelessWidget {
  const Barchartwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        gridData: FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                if (value == 0) {
                  return Text('0k', style: TextStyle(color: Colors.grey, fontSize: 12));
                } else if (value == 30) {
                  return Text('30k', style: TextStyle(color: Colors.grey, fontSize: 12));
                } else if (value == 60) {
                  return Text('60k', style: TextStyle(color: Colors.grey, fontSize: 12));
                } else if (value == 90) {
                  return Text('90k', style: TextStyle(color: Colors.grey, fontSize: 12));
                } else {
                  return Container();
                }
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return Text('JAN', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 1:
                    return Text('FEB', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 2:
                    return Text('MAR', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 3:
                    return Text('APR', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 4:
                    return Text('MAY', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 5:
                    return Text('JUN', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 6:
                    return Text('JUL', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 7:
                    return Text('AUG', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 8:
                    return Text('SEP', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 9:
                    return Text('OCT', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 10:
                    return Text('NOV', style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 11:
                    return Text('DEC', style: TextStyle(color: Colors.grey, fontSize: 12));
                  default:
                    return Container();
                }
              },
            ),
          ),
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 20,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 50,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 30,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 60,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: 85,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                toY: 70,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 7,
            barRods: [
              BarChartRodData(
                toY: 60,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 8,
            barRods: [
              BarChartRodData(
                toY: 80,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 85,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 9,
            barRods: [
              BarChartRodData(
                toY: 20,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 10,
            barRods: [
              BarChartRodData(
                toY: Responsive.isDesktop(context)? 40:10,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),
                    BarChartGroupData(
            x: 11,
            barRods: [
              BarChartRodData(
                toY: 30,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context)? 40:10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
             
            ],
          ),

        ],
      ),
      swapAnimationCurve: Curves.linear,
      swapAnimationDuration: Duration(milliseconds: 150),
    );
  }
}
