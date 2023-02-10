import 'package:demoapp/Components/drawer.dart';
import 'package:demoapp/Components/todays_appointment.dart';
import 'package:demoapp/utils/appcolor.dart';
import 'package:demoapp/utils/string.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;
  //import the Screens
  final screen = [
    const TodayAppointment(),
    const Center(child: Icon(Icons.calendar_month)),
    const Center(child: Icon(Icons.book)),
    const Center(child: Icon(Icons.account_circle)),
  ];

  final bottomNavigationBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.schedule,
          color: primarytheme,
        ),
        label: lblToday),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.calendar_month,
        ),
        label: lblCalendar),
    const BottomNavigationBarItem(icon: Icon(Icons.book), label: lblBook),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), label: lblAccount),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: const IconThemeData(color: primarytheme),
        title: Text(title, style: const TextStyle(color: primarytheme)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            tooltip: 'Notifivation',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) => {
          setState(() {
            index = value;
          }),
        },
      ),
    );
  }
}
