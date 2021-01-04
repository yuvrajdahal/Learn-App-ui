import 'package:flutter/material.dart';
import 'courses/ui.dart';
import 'courses/socialM.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Home",
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerscaffoldkey =
      new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.clear_all,
              color: Color(0xff060606),
            ),
            onPressed: () {
              if (_drawerscaffoldkey.currentState.isDrawerOpen) {
                Navigator.pop(context);
              } else {
                _drawerscaffoldkey.currentState.openDrawer();
              }
            },
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  maxRadius: 15.0,
                  backgroundImage: NetworkImage(
                    "https://scontent.fbhr1-1.fna.fbcdn.net/v/t1.0-9/p720x720/120810541_181736033584549_6248022580662039992_o.jpg?_nc_cat=102&ccb=2&_nc_sid=e3f864&_nc_ohc=ewH9vchbV6wAX-0CnIT&_nc_ht=scontent.fbhr1-1.fna&tp=6&oh=688264556173861c0c19ea1a1c4fb6af&oe=60184EE7",
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
        key: _drawerscaffoldkey,
        drawer: Drawer(
            // Drawer content here
            // design your own drawer menu here.
            child: Container(
          color: Color(0xff060606),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              drawerScroll(),
            ],
          ),
        )),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              color: Color(0xffFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Learn online in this",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "pandemic situation !",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  Container(
//              margin:EdgeInsets.only(
//              left:30
//              ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image(
                      height: 200,
                      width: size.width,
                      image: NetworkImage(
//                           "https://miro.medium.com/max/5000/1*Dpb3vjQtqb4D1nAU4RnRWA@2x.png"
                        "https://assets.website-files.com/5e51b3b0337309d672efd94c/5e53682233d368dfa63e7deb_slider-1.svg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 17,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff060606),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Explore Courses",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                          color: Colors.white,
                          iconSize: 30,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Center(
                            child: Row(
//                                 crossAxisAlignment:CrossAxisAlignment.start,
//                                 mainAxisAlignment:MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Ui()),
                                    );
                                  },
                                  child: card(
                                    icon: Icons.stay_current_portrait,
                                    title: "Ui/Ux Design",
                                    course: "10 Courses",
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Social()),
                                    );
                                  },
                                  child: card(
                                    icon: Icons.group,
                                    title: "Social Media",
                                    course: "7 course",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card({icon, title, course}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      margin: EdgeInsets.only(right: 20),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color(0xff060606),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(icon),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),
          ),
          Text(
            course,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  Widget drawerScroll() {
    return Expanded(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://scontent.fbhr1-1.fna.fbcdn.net/v/t1.0-9/p720x720/120810541_181736033584549_6248022580662039992_o.jpg?_nc_cat=102&ccb=2&_nc_sid=e3f864&_nc_ohc=ewH9vchbV6wAX-0CnIT&_nc_ht=scontent.fbhr1-1.fna&tp=6&oh=688264556173861c0c19ea1a1c4fb6af&oe=60184EE7"),
            ),
            accountName: Text(
              "Deepa Kafle",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xffFFFFFF),
                fontSize: 20,
              ),
            ),
            accountEmail: Text(
              "srijald15@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xffFFFFFF),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1560523159-fbe43c0b465f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGxlYXJufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "Courses",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Ui/ux Design",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffFFFFFF),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: Color(0xffFFFFFF),
            ),
          ),
          ListTile(
            title: Text(
              "Social Media",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffFFFFFF),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
