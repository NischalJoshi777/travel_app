import 'package:flutter/material.dart';
import 'package:travel_app/home/widget/category_list.dart';
import 'package:travel_app/home/widget/header.dart';
import 'package:travel_app/home/widget/header_text.dart';
import 'package:travel_app/home/widget/place_list.dart';
import 'package:travel_app/home/widget/search_text_field.dart';
import 'package:travel_app/others/other_screens.dart';

class MyTravelApp extends StatefulWidget {
  const MyTravelApp({super.key});

  @override
  State<MyTravelApp> createState() => _MyTravelAppState();
}

class _MyTravelAppState extends State<MyTravelApp> {

  int _currentIndex = 0;

  void onTap(index){
    setState(() {
      _currentIndex = index;
    });
  }
    final List _myScreen = const [
    HomeScreen(),
    FavoriteScreen(),
    ChatScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white54,
        elevation: 0,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
          color: Colors.red,
        ),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        selectedItemColor: Colors.red,
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Header(),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchTextField(),
            ),
            const SizedBox(height: 12.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: HeaderText(
                header: 'Category',
              ),
            ),
            const SizedBox(height: 12.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CategoryList(
                categories: [
                  Category(
                    asset: 'assets/top30.png',
                    label: 'Top 30 places',
                  ),
                  Category(
                    asset: 'assets/Gastro.png',
                    label: 'Nature',
                  ),
                  Category(
                    asset: 'assets/top30.png',
                    label: 'Top 30 places',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: HeaderText(
                header: 'Popular',
              ),
            ),
            PlaceList(
              places: [
                Place(
                  imagePath: "assets/salavat.png",
                  title: "Monument to Salvat",
                  rating: "4.9",
                ),
                Place(
                  imagePath: "assets/salavat.png",
                  title: "Monument to Salvat",
                  rating: "4.9",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
