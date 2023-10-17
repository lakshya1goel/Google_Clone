import 'package:flutter/material.dart';
import 'package:google_clone/theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox( height: size.width*0.1,),
            Image.asset(
              'lib/assets/Images/google.png',
              height: 30,
              width: 92,
            ),
            SizedBox( height: size.width*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: searchColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.width*0.05),
                    child: TextField(
                      style: const TextStyle(fontSize: 16),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.mic,
                          color: blueColor,
                        ),
                        prefixIcon: Icon(Icons.search,
                          color: Colors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.width*0.05,
            ),
            Container(
              color: searchColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    DefaultTabController(
                      length: 10,
                      child: TabBar(
                        indicatorColor: blueColor,
                        isScrollable: true,
                        tabs: [
                          Tab(text: 'All'),
                          Tab(text: 'News'),
                          Tab(text: 'Videos'),
                          Tab(text: 'Images'),
                          Tab(text: 'Maps'),
                          Tab(text: 'Shopping'),
                          Tab(text: 'Books'),
                          Tab(text: 'Flights'),
                          Tab(text: 'Finance'),
                          Tab(text: 'Search tools'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: searchColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_outlined),
            label: 'Saved',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: blueColor,
        onTap: (int index) {},
      ),
    );
  }
}
