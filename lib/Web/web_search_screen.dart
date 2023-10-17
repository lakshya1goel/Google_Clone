import 'package:flutter/material.dart';
import 'package:google_clone/theme.dart';

class WebSearchScreen extends StatefulWidget {
  const WebSearchScreen({super.key});

  @override
  State<WebSearchScreen> createState() => _WebSearchScreenState();
}

class _WebSearchScreenState extends State<WebSearchScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox( height: size.width*0.1,),
            Row(
              children: [
                SizedBox( width: size.width*0.03,),
                Image.asset(
                  'lib/assets/Images/google.png',
                  height: size.width*0.08,
                  width: size.width*0.08,
                ),
                SizedBox( width: size.width*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: searchColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: size.width*0.02),
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
                SizedBox(width: size.width*0.25,),
                Icon(Icons.settings),
                SizedBox(width: size.width*0.02,),
                Container(
                    width: size.width*0.01,
                    height: size.width*0.01,
                    child: NineDotMatrixIcon()
                ),
                SizedBox(width: size.width*0.02,),
                Container(
                  height: size.width*0.02,
                  width: size.width*0.02,
                  child: Center(
                    child: Text("L",
                      style: TextStyle(color: Colors.white,
                        fontSize: size.width*0.01,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.width*0.003,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: size.width*0.15,),
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

class NineDotMatrixIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(9, (index) {
        return Center(
          child: Container(
            width: size.width*0.02,
            height: size.width*0.02,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }
}
