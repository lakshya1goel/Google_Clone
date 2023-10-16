import 'package:flutter/material.dart';

class MobileLayoutHomePage extends StatefulWidget {
  const MobileLayoutHomePage({super.key});

  @override
  State<MobileLayoutHomePage> createState() => _MobileLayoutHomePageState();
}

class _MobileLayoutHomePageState extends State<MobileLayoutHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
          title: TabBar(
            tabs: [
              Tab(text: 'ALL'), // First tab named 'All'
              Tab(text: 'IMAGES'), // Second tab named 'Images'
            ],
          ),
          actions: [
            Row(
              children: [
                Container(
                    width: 20,
                    height: 20,
                    child: NineDotMatrixIcon()
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text("L",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NineDotMatrixIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(9, (index) {
        return Center(
          child: Container(
            width: 5,
            height: 5,
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
