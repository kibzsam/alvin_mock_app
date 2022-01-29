import 'package:alvin_mock_app/config/Palette.dart';
import 'package:alvin_mock_app/pages/home/MorePage.dart';
import 'package:alvin_mock_app/pages/home/OverviewPage.dart';
import 'package:flutter/material.dart';

import 'BudgetPage.dart';
import 'NotificationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static final List _widgetOptions = [
    const OverviewPage(),
    BudgetPage(),
    const NotificationPage(),
    const MorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Palette.secondaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Monthly budget',
          style: TextStyle(
            color: Palette.darkColor,
            fontFamily: 'Poppins-Bold',
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            color: Palette.primaryColor.withOpacity(.80),
            onPressed: () {},
            icon: const Icon(Icons.info, size: 28),
          )
        ],
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.primaryColor,
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.upload_file),
      ),
      bottomNavigationBar: _getBottomNavBar(_onItemTapped, _selectedIndex),
    );
  }
}

ClipRRect _getBottomNavBar(tap, selectedIndex) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(32),
      topRight: Radius.circular(32),
    ),
    child: Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        elevation: 10.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Palette.tertiaryColor,
        selectedItemColor: Palette.primaryColor,
        unselectedItemColor: Palette.accentColor.withOpacity(.80),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: selectedIndex,
        onTap: tap,
        items: const [
          BottomNavigationBarItem(
            title: Text('Overview'),
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            title: Text('Budget'),
            icon: Icon(Icons.pie_chart),
          ),
          BottomNavigationBarItem(
            title: Text('Notification'),
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            title: Text('More'),
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    ),
  );
}
