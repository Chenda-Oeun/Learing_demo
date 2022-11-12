import 'package:flutter/material.dart';
import 'package:test_docs/discovery/discovery.dart';
import 'package:test_docs/home/screens/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ////---------------------------------------------------- Variable
  int currentIndex = 0;
  static const List<Widget> screenList = <Widget>[
    HomeScreen(),
    DiscoveryScreen(),
    Text('Index 2: School'),
    Text('Index 3: School'),
    Text('Index 4: School'),
  ];
//------------------------------------------------------
  static const List<BottomNavigationBarItem> itemList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.location_on_outlined),
      label: 'Discovery',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_outline),
      label: 'Bookmark',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.food_bank),
      label: 'Top Foods',
      backgroundColor: Colors.red,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];
  ////----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////----------------------------------------------------Body
      body: screenList.elementAt(currentIndex),
      ////----------------------------------------------------BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[100],
        items: itemList,
        currentIndex: currentIndex,
        selectedIconTheme: const IconThemeData(color: Color(0xff023047)),
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        unselectedItemColor: Colors.grey,
        fixedColor: const Color(0xff023047),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
