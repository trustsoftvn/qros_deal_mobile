import 'package:flutter/material.dart';
import 'package:qrosdeal/screens/deal_details/deal_details_screen.dart';
import 'package:qrosdeal/screens/main/components/bottom_navigation_bar.dart';
import 'package:qrosdeal/screens/store/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  List<Widget> _widgetOptions = [
    StoreScreen(),
    DealDetailsScreen(),
    StoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: _widgetOptions,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
          _controller.jumpToPage(index);
        },
      ),
    );
  }
}
