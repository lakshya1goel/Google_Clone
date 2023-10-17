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
  List<String> footerItems = ['Dark theme:on', 'Settings', 'Privacy', 'Terms', 'Advertising', 'Business', 'About'];

  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: size.width*0.4,
              child: DrawerHeader(
                child: Text(
                  'Search settings',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width*0.07,
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
                  width: size.width*0.05,
                  height: size.width*0.05,
                  child: NineDotMatrixIcon()
              ),
              SizedBox(
                width: size.width*0.06,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width*0.02),
                child: Container(
                  height: size.width*0.1,
                  width: size.width*0.1,
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
      
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.width*0.2,
              ),
              Image.asset("lib/assets/Images/google.png",
                height: size.width*0.2,
              ),
              SizedBox(
                height: size.width*0.1,
              ),
              Container(
                alignment: Alignment.center,
                width: size.width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.grey),
                  color: searchColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width*0.02),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(Icons.mic,
                        color: blueColor,
                      ),
                  ),
                  ),
                ),
              ),
              SizedBox(height: size.width*0.05,),
              Text("Google offered in:",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(
                  lang.length, (index) => Container(
                    padding: EdgeInsets.all(size.width*0.02),
                    child: Text(
                      lang[index],
                      style: TextStyle(
                        color: blueColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.width*0.1,
              ),
              SizedBox(
                height: size.width*0.49,
              ),
              Container(
                width: size.width,
                color: footerColor,
                child: Padding(
                  padding: EdgeInsets.all(size.width*0.1),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      footerItems.length, (index) => Container(
                      padding: EdgeInsets.all(size.width*0.02),
                      child: Text(
                        footerItems[index],
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
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
            width: size.width*0.012,
            height: size.width*0.012,
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
