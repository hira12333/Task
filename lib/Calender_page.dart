import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:frontent_task/Theme/app_utils.dart';
import 'package:frontent_task/Theme/apptheme.dart';
import 'package:frontent_task/reusable_widgets/Event.dart';
import 'package:frontent_task/reusable_widgets/Navbars.dart';
import 'package:frontent_task/reusable_widgets/eventDivider.dart';
import 'package:frontent_task/reusable_widgets/monthWeekday.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'SideMenu/drawerScreen.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  final DateTime _selectedDate = DateTime.now();

  int _selectedIndex = 0;
  late int indexOfFirstDayMonth;

  @override
  void initState() {
    super.initState();
    indexOfFirstDayMonth = getIndexOfFirstDayInMonth(_selectedDate);
    setState(() {
      _selectedIndex = indexOfFirstDayMonth +
          int.parse(DateFormat('d').format(DateTime.now())) -
          1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
    AppUtils utils = AppUtils(context);
    return  Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SideMenu(
          key: sideMenuKey,
          background: AppTheme.primaryColor,

          menu: MyDrawer(),
          maxMenuWidth: 300,
          radius: BorderRadius.circular(0),
          type: SideMenuType.slide,
          child: Column(
            children: [
              NavigationContainer(context, () {
                if (sideMenuKey.currentState!.isOpened) {
                  sideMenuKey.currentState!.closeSideMenu();
                } else {
                  sideMenuKey.currentState!.openSideMenu();
                }
              }),
              Expanded(
                child: Container(
                  color: AppTheme.primaryColor,
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0, left: 16),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Calender',
                                    style: GoogleFonts.nunito(
                                        fontSize: 28, fontWeight: FontWeight.w700),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 16, top: 20),
                                      child: MonthWeekDayContainer(context),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16.0, left: 6, right: 16),
                                      child: Container(
                                        width: utils.mqw * 0.15,
                                        height: utils.mqh * 0.09,
                                        decoration: BoxDecoration(
                                          color: AppTheme.blueapp,
                                          borderRadius: BorderRadius.circular(14),
                                          border: Border.all(color: Colors.white),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blue.shade200,
                                              offset: Offset(
                                                  0, 2), // Adjust the vertical offset
                                              blurRadius: 2.0,
                                              spreadRadius:
                                                  0.0, // Set the spread radius to 0
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Icon(
                                            CupertinoIcons.plus,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: utils.mqh * 0.04,
                              ),
                              Container(
                                width: utils.mqw * 0.9,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0.1,
                                        blurRadius: 7,
                                        offset: const Offset(0, 7.75),
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10.0),
                                                child: Icon(
                                                  Icons.arrow_back,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Row(
                                              children: [
                                                Text(
                                                    DateFormat('MMMM')
                                                        .format(_selectedDate),
                                                    style: GoogleFonts.nunito(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 20,
                                                        color: Colors.black)),
                                                Text(
                                                    DateFormat('yyyy')
                                                        .format(_selectedDate),
                                                    style: GoogleFonts.nunito(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 20,
                                                        color: Colors.grey)),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 10.0),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GridView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 7,
                                        ),
                                        itemCount: daysOfWeek.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Container(
                                            alignment: Alignment.center,
                                            child: Text(daysOfWeek[index],
                                                style: GoogleFonts.nunito(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold)),
                                          );
                                        }),
                                    Container(
                                      child: GridView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 7,
                                        ),
                                        itemCount:
                                            listOfDatesInMonth(_selectedDate).length +
                                                indexOfFirstDayMonth,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: GestureDetector(
                                              onTap: () => index >= indexOfFirstDayMonth
                                                  ? setState(() {
                                                      _selectedIndex = index;
                                                    })
                                                  : null,
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: index == _selectedIndex
                                                          ? Colors.blue
                                                          : AppTheme.primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(10)),
                                                  child: index < indexOfFirstDayMonth
                                                      ? const Text("")
                                                      : Text(
                                                          '${index + 1 - indexOfFirstDayMonth}',
                                                          style: TextStyle(
                                                              color: index == _selectedIndex
                                                                  ? Colors.white
                                                                  : index % 7 == 6
                                                                      ? Colors.black
                                                                      : Colors.black,
                                                              fontSize: 17),
                                                        )),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: utils.mqh * 0.04,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16.0, left: 16, bottom: 16),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Upcoming',
                                    style: GoogleFonts.nunito(
                                        fontSize: 28, fontWeight: FontWeight.w700),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Container(
                                height: utils.mqh * 0.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                '07:00',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '07:30',
                                              style: GoogleFonts.nunito(
                                                fontSize: 18,
                                              ),
                                            ),
                                          )),
                                          Expanded(
                                              child: Container(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              '08:00',
                                              style: GoogleFonts.nunito(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                          child: EventContainer(context),
                                        )),
                                  ],
                                ),
                              ),
                              EventDivider(context),
                              Container(
                                height: utils.mqh * 0.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.topCenter,
                                                  child: Text(
                                                    '07:00',
                                                    style: GoogleFonts.nunito(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      '07:30',
                                                      style: GoogleFonts.nunito(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  child: Container(
                                                    alignment: Alignment.bottomCenter,
                                                    child: Text(
                                                      '08:00',
                                                      style: GoogleFonts.nunito(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                          child: GroceryEventContainer(context),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );

  }
}

List<int> listOfDatesInMonth(DateTime currentDate) {
  var selectedMonthFirstDay =
      DateTime(currentDate.year, currentDate.month, currentDate.day);
  var nextMonthFirstDay = DateTime(selectedMonthFirstDay.year,
      selectedMonthFirstDay.month + 1, selectedMonthFirstDay.day);
  var totalDays = nextMonthFirstDay.difference(selectedMonthFirstDay).inDays;

  var listOfDates = List<int>.generate(totalDays, (i) => i + 1);
  return (listOfDates);
}

int getIndexOfFirstDayInMonth(DateTime currentDate) {
  var selectedMonthFirstDay =
      DateTime(currentDate.year, currentDate.month, currentDate.day);
  var day = DateFormat('EEE').format(selectedMonthFirstDay).toUpperCase();

  return daysOfWeek.indexOf(day) - 1;
}

final List<String> daysOfWeek = [
  "MO",
  "TU",
  "WE",
  "TH",
  "FR",
  "SA",
  "SU",
];
