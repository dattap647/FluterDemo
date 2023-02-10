import 'package:demoapp/Components/custom_card.dart';
import 'package:demoapp/Components/custom_test_list.dart';
import 'package:demoapp/utils/appcolor.dart';
import 'package:demoapp/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayAppointment extends StatefulWidget {
  const TodayAppointment({super.key});

  @override
  State<TodayAppointment> createState() => _TodayAppointmentState();
}

class _TodayAppointmentState extends State<TodayAppointment> {
  var formatDate = DateFormat('d MMM yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  formatDate,
                  style: const TextStyle(color: greycolor),
                ),
                const VerticalDivider(
                  thickness: 3,
                  color: greycolor,
                ),
                Text(
                  update,
                  style: const TextStyle(color: greycolor),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )),
        const UserCard(),

        //here we can build listview Builder to get list of test
        const SizedBox(
          height: 80,
        ),
        const AppointmentList(),
        const AppointmentList()
      ],
    );
  }
}
