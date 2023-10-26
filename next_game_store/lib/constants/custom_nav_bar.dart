import 'package:flutter/material.dart';
import 'package:next_game_store/constants/custom_colors.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: CustomColors.lightBlue,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 15,
                  offset: Offset(0, -3),
                ),
              ],
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: _currentIndex,
              selectedItemColor: Colors.blue, // You can change this color
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                if (index != 1) {
                  setState(() {
                    _currentIndex = index;
                  });
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(null), // Placeholder for middle space
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: '',
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: MediaQuery.of(context).size.width / 2 - 28, // Center the FAB
          child: FloatingActionButton(
            onPressed: () {
              // Add your action here
            },
            backgroundColor: CustomColors.darkBlue, // You can change this color
            child: Icon(Icons.shopping_cart),
          ),
        ),
      ],
    );
  }
}
