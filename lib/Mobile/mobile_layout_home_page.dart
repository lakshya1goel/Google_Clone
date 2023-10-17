import 'package:flutter/material.dart';
import 'package:google_clone/theme.dart';

class MobileLayoutHomePage extends StatefulWidget {
  const MobileLayoutHomePage({super.key});

  @override
  State<MobileLayoutHomePage> createState() => _MobileLayoutHomePageState();
}

class _MobileLayoutHomePageState extends State<MobileLayoutHomePage> {
  @override

  List<String> lang= ['हिन्दी', 'বাংলা', 'తెలుగు', 'मराठी', 'தமிழ்', 'ગુજરાતી', 'ಕನ್ನಡ', 'മലയാളം', 'ਪੰਜਾਬੀ'];

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              child: DrawerHeader(
                child: Text(
                  'Search settings',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Search history'),
              onTap: () {},
            ),
            ListTile(
              title: Text('SafeSearch'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Language'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Dark Theme'),
              onTap: () {},
            ),
            ListTile(
              title: Text('More settings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Saved'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Send feedback'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Your data in search'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: DefaultTabController(
          length: 2,
          child: TabBar(
            indicatorColor: blueColor,
            tabs: [
              Tab(text: 'ALL'), // First tab named 'All'
              Tab(text: 'IMAGES'), // Second tab named 'Images'
            ],
          ),
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
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/assets/Images/google.png",
              height: 50,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey),
                color: searchColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                      color: Colors.grey,
                    ),
                ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Google offered in:",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: List.generate(
                lang.length, (index) => Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    lang[index],
                    style: TextStyle(
                      color: blueColor,
                    ),
                  ),
                ),
              ),
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
