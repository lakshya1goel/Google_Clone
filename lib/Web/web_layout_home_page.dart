import 'package:flutter/material.dart';
import 'package:google_clone/Web/web_search_screen.dart';
import 'package:google_clone/theme.dart';

class WebLayoutHomePage extends StatefulWidget {
  const WebLayoutHomePage({super.key});

  @override
  State<WebLayoutHomePage> createState() => _WebLayoutHomePageState();
}

class _WebLayoutHomePageState extends State<WebLayoutHomePage> {
  @override

  List<String> lang= ['हिन्दी', 'বাংলা', 'తెలుగు', 'मराठी', 'தமிழ்', 'ગુજરાતી', 'ಕನ್ನಡ', 'മലയാളം', 'ਪੰਜਾਬੀ'];

  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          Row(
            children: [
              Text("Gmail"),
              SizedBox(
                width: size.width*0.015,
              ),
              Text("Images"),
              SizedBox(
                width: size.width*0.015,
              ),
              Container(
                  width: size.width*0.01,
                  height: size.width*0.01,
                  child: NineDotMatrixIcon()
              ),
              SizedBox(
                width: size.width*0.015,
              ),
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
              SizedBox(
                width: size.width*0.015,
              ),
            ],
          )
        ],
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: size.width*0.02,),
            Image.asset("lib/assets/Images/google.png",
              height: size.width*0.1,
              width: size.width*0.2,
            ),
            Container(
              alignment: Alignment.center,
              width: size.width*0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width*0.01),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.grey
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: () {},
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WebSearchScreen()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: size.width*0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width*0.01),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(searchColor),
                    ),
                    onPressed: (){},
                    child: Text("Google Search"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width*0.01),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(searchColor),
                    ),
                    onPressed: (){},
                    child: Text("I'm Feeling Lucky"),
                  ),
                )
              ],
            ),
            SizedBox(height: size.width*0.02,),
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
            ),
          ],
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
