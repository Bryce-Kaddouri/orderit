import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(255, 194, 48, 1),
                  Color.fromRGBO(255, 127, 2, 1),
                ],
              ),
            ),
          ),
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Container(
          child: Center(
            child: Text('$_selectedIndex'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,

          currentIndex: _selectedIndex,

          type: BottomNavigationBarType.fixed,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favourites',
              tooltip: '',
            ),
            // button new order floating button in the middle of the bottom navigation bar
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.add,
                color: Color.fromRGBO(33, 33, 33, 1),
              ),
              label: 'New Order',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(246, 125, 50, 1),
              icon: Icon(
                Icons.article_outlined,
                color: Color.fromRGBO(33, 33, 33, 1),
              ),
              label: 'Orders',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
              tooltip: '',
            ),
          ],
          selectedItemColor: Colors.amber[900],
          unselectedItemColor: const Color.fromRGBO(33, 33, 33, 1),
          selectedIconTheme: const IconThemeData(
            color: Color.fromRGBO(255, 111, 0, 1),
            opacity: 1.0,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Color.fromRGBO(33, 33, 33, 1),
            opacity: 1.0,
          ),

          // If this property is null, then the theme's hoverColor is used.
          // If that's null, then the theme's highlightColor is used.
        ),
      ),
    );
  }
}
