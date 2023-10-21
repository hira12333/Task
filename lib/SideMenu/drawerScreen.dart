import 'package:flutter/material.dart';
import 'package:frontent_task/Theme/apptheme.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String selectedOption = 'Dashboard';

  void selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         Column(
                    children: [



                      SizedBox(
                        height: 10,
                      ),
                      buttonDecoration(
                        name: '  Dashboard ',
                        iconData: 'assets/images/Dashboard.png',
                        boxColor: AppTheme.primaryColor,
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return HomePage2();
                          //     },
                          //   ),
                          // );
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                        name: '  Calendar ',
                        iconData: 'assets/images/Calendar.png',
                        boxColor: Colors.blue.shade50,
                        onTap: () {
                          setState(() {

                          });


                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                          name: '  Mail  ',
                          iconData: 'assets/images/Mail.png',
                          boxColor: Colors.transparent,

                          onTap: () {
                            setState(() {

                            });

                          }
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                        name: '  Chats ',
                        iconData: 'assets/images/Chat.png',
                        boxColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                          //  _color = Colors.lightBlue.shade300; // Change the color when clicked
                          });
                          //widget.onTap;
                        //  Get.to(()=>FeedbackDialog());
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                        name: '  Tasks ',
                        iconData: 'assets/images/Tasks.png',
                        boxColor: Colors.transparent,
                        onTap: () {

                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                        name: '  Projects ',
                        iconData: 'assets/images/Projects.png',
                        boxColor: Colors.transparent,
                        onTap: () {

                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                        name: '  File Manager ',
                        iconData: 'assets/images/File Manager.png',
                        boxColor: Colors.transparent,
                        onTap: () {

                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                        name: '  Notes ',
                        iconData: 'assets/images/Notes.png',
                        boxColor: Colors.transparent,
                        onTap: () {

                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buttonDecoration(
                        name: '  Contacts ',
                        iconData: 'assets/images/Contacts.png',
                        boxColor: Colors.transparent,
                        onTap: () {

                        },
                      ),

                    ],
                  )

        ],
      ),
    );
  }
  buttonDecoration({
    required String name,
    required String iconData,
    required VoidCallback onTap,
    required Color boxColor,

  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: boxColor,
        ),
        child: Row(
          children: [
            Image.asset(
              iconData ,

              //color: Colors.pink,
            ),
            Text(
              name,
              style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              )
          ],
        ),
      ),
    );
  }
  ListDecor({
    required String name,
    required Color circleColor,
    required VoidCallback onTap,
    required Color boxColor,

  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: boxColor,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: circleColor,
            ),
            Text(
              name,
              style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}