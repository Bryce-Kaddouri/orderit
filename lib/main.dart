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
            // prend toute la largeur de l'ecran
            child: BottomAppBar(
              // no margin between child of bottom app bar
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      minWidth: 0,
                      onPressed: () {
                        SetCurrentIndex(0);
                      },
                      child: Container(
                        width: 50,
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Home',
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 0,
                      onPressed: () {},
                      child: Container(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Favourites',
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: // rectangle with rounded corners, add icon new order text under the icon and when you click on the icon it will take you to the new order page
                          Container(
                        width: 90,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber[900],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'New Order',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 0,
                      onPressed: () {},
                      child: Container(
                        width: 50,
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.article_outlined,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Orders',
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 0,
                      onPressed: () {},
                      child: Container(
                        width: 50,
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Profile',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
