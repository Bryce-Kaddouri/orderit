import 'package:flutter/material.dart';
import 'package:orderit/pages/home.dart';
import 'package:orderit/pages/new_order.dart';
import 'package:orderit/pages/orders.dart';
import 'package:orderit/pages/profile.dart';
import 'package:orderit/pages/favourites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // list of title of the app bar // zith text and style of the text

  static const List<Text> appbarTitle = <Text>[
    Text(
      'Home',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
    ),
    Text(
      'Favourites',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
    ),
    Text(
      'New Order',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
    ),
    Text(
      'Orders',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
    ),
    Text(
      'Profile',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
    ),
  ];

  // list of the pages of the bottom navigation bar

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  SetCurrentIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order It',
      debugShowCheckedModeBanner: false,
      theme: // ThemeData(
          // primarySwatch: Colors.blue,
          // ),
          ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
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
            title: MyApp.appbarTitle.elementAt(_selectedIndex),
            centerTitle: true,
          ),
          body: const [
            HomePage(),
            FavouritesPage(),
            NewOrderPage(),
            OrdersPage(),
            ProfilePage(),
          ][_selectedIndex],
          bottomNavigationBar: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              onTap: (int index) {
                SetCurrentIndex(index);
              },
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

                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                  ),
                  label: 'New Order',
                  tooltip: '',
                ),
                // button new order floating button in the middle of the bottom navigation bar
                BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(246, 125, 50, 1),
                  icon: Icon(
                    Icons.article_outlined,
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
              selectedLabelStyle: const TextStyle(
                color: Color.fromRGBO(255, 111, 0, 1),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              unselectedItemColor: const Color.fromRGBO(33, 33, 33, 1),
              selectedIconTheme: const IconThemeData(
                color: Color.fromRGBO(255, 111, 0, 1),
                opacity: 1.0,
              ),
              unselectedIconTheme: const IconThemeData(
                color: Color.fromRGBO(33, 33, 33, 1),
                opacity: 1.0,
              ),
            ),
          )),
    );
  }
}
