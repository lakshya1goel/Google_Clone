import 'package:flutter/material.dart';

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
        title: DefaultTabController(
          length: 2,
          child: TabBar(
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
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey),
                color: Colors.grey[800],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.search,
                    color: Colors.grey,
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
                      color: Colors.blue,
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
