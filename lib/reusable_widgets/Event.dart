import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontent_task/Theme/app_utils.dart';
import 'package:google_fonts/google_fonts.dart';

Container EventContainer(BuildContext context) {
  AppUtils utils = AppUtils(context);
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0.1,
                blurRadius: 7,
                offset: const Offset(0, 7.75),
              ),
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 10),
              child: Container(
                width: 6,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: VerticalDivider(
                  color: Colors.orangeAccent,
                  // width: 30,
                  thickness: 3,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: utils.mqw * 0.5,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Text(
                      "Soccer Practice",
                      style: GoogleFonts.nunito(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Container(
                  width: utils.mqw * 0.5,
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Design",
                            style: GoogleFonts.nunito(
                                fontSize: 16, color: Colors.grey
                                //fontWeight: FontWeight.bold
                                ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: utils.mqw * 0.04,
                        ),
                        Image(image: AssetImage('assets/images/Time.png')),
                        Text(
                          "07:00",
                          style: GoogleFonts.nunito(
                              fontSize: 16, color: Colors.grey
                              //fontWeight: FontWeight.bold
                              ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: utils.mqw * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/images/#8.png')),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/images/#2.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/images/#10.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/images/#11.png')),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
Container GroceryEventContainer(BuildContext context) {
  AppUtils utils = AppUtils(context);
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0.1,
                blurRadius: 7,
                offset: const Offset(0, 7.75),
              ),
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 10),
              child: Container(
                width: 6,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: VerticalDivider(
                  color: Colors.green,
                  // width: 30,
                  thickness: 3,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: utils.mqw * 0.5,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Text(
                      "Grocery Shopping",
                      style: GoogleFonts.nunito(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Container(
                  width: utils.mqw * 0.5,
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Design",
                            style: GoogleFonts.nunito(
                                fontSize: 16, color: Colors.grey
                              //fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: utils.mqw * 0.04,
                        ),
                        Image(image: AssetImage('assets/images/Time.png')),
                        Text(
                          "07:00",
                          style: GoogleFonts.nunito(
                              fontSize: 16, color: Colors.grey
                            //fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: utils.mqw * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/images/#10.png')),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/#5.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/images/#1.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Image(image: AssetImage('assets/images/#4.png')),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}