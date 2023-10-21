import 'package:flutter/material.dart';
import 'package:frontent_task/Theme/app_utils.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Theme/apptheme.dart';
Container EventDivider(BuildContext context){
  AppUtils utils = AppUtils(context);
  return  Container(
    height: utils.mqh * 0.1,
    child: Row(
      children: [
        Expanded(
          child: Stack(children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 14.0, bottom: 14, left: 8, ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppTheme.blueapp,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 0.1,
                            blurRadius: 7,
                            offset: const Offset(0, 7.75),
                          ),
                        ]
                    ),
                  ),
                )),
            Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '08:30',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
          ]),
        ),
        Expanded(flex: 4, child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Divider(color: AppTheme.blueapp,
            thickness: 2,),
        ))
      ],
    ),
  );
}