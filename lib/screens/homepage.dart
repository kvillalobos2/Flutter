import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nssystem/screens/addPreference.dart';
import 'package:nssystem/widgets/button.dart';

import '../controllers/preference_controller.dart';
import '../utils/global.colors.dart';
import '../widgets/preference_tile.dart';

class HomepageScreen extends StatefulWidget {
  HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  DateTime _selectedDate = DateTime.now();
  final _preferenceController = Get.put(PreferenceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Horario"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                // acción al presionar flecha
              }),
        ),
        body: Column(
          children: [
            _addTaskBar(),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: DatePicker(
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: GlobalColors.mainColor,
                selectedTextColor: Colors.white,
                dateTextStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
                monthTextStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
                onDateChange: (date) {
                  _selectedDate = date;
                },
              ),
            ),

            /*SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildTile("II", "09:38 PM - 9:30 PM", "test"),
                    SizedBox(height: 10),
                    _buildTile("test", "12:46 PM - 9:30 PM", "est"),
                    SizedBox(height: 10),
                    _buildTile("tes", "12:57 PM - 9:30 PM", "test"),
                    SizedBox(height: 10),
                    _buildTile("last one", "02:38 PM - 9:30 PM", "two"),
                  ],
                ),
              ),
            ), */
          ],
        ),


    );
  }
}

/*_buildTile(String title, String time, String subtitle) {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          time,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 10),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}
*/

_addTaskBar() {
  return Container(
    margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: subHeadingStyle,
              ),
              Text(
                "Hoy",
                style: headingStyle,
              )
            ],
          ),
        ),
        ButtonWidget(
            text: '+ Añadir Horario',
            route: MaterialPageRoute(builder: (_) => AddPreference())),
      ],
    ),
  );
}

TextStyle get subHeadingStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 24, fontWeight: FontWeight.normal, color: Colors.grey));
}

TextStyle get headingStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
}
