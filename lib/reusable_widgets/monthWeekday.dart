import 'package:flutter/material.dart';
import 'package:frontent_task/Theme/app_utils.dart';
import 'package:frontent_task/Theme/apptheme.dart';
import 'package:google_fonts/google_fonts.dart';
Container MonthWeekDayContainer(BuildContext context){
  AppUtils utils = AppUtils(context);
  return Container(
    child: Container(
      height: utils.mqh*0.09,
      width: utils.mqw*0.75,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: AppTheme.primaryColordark,
        borderRadius: BorderRadius.circular(14)

      ),
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: utils.mqh*0.075,
                  width: utils.mqw*0.22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(0, 3), // Adjust the vertical offset
                        blurRadius: 8.0,
                        spreadRadius: 0.0, // Set the spread radius to 0
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Month',
                      style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),

              ),
Container(
  width: utils.mqw*0.22,
  child: Center(
    child: Text(
      'Week',
      style: GoogleFonts.nunito(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        color: AppTheme.greyapp
      ),
    ),
  ),
),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                child: VerticalDivider(

                ),
              ),
              Container(
                width: utils.mqw*0.22,
                child: Center(
                  child: Text(
                    'Day',
                    style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.greyapp
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}