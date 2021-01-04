import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Social Media",
      home: Social(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff060606),
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.menu, color: Color(0xffE8E8E8)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Spacer(),
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.person, color: Color(0xffE8E8E8)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffE8E8E8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff060606),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.tv,
                                    color: Color(0xffE8E8E8),
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Social Thinking",
                                    style: TextStyle(
                                      color: Color(0xff060606),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.supervisor_account,
                                        color: Color(0xff060606),
                                        size: 15,
                                      ),
                                      Text(
                                        "\18k",
                                        style: TextStyle(
                                          color: Color(0xff060606),
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff060606),
                                        size: 15,
                                      ),
                                      Text(
                                        "\4.3",
                                        style: TextStyle(
                                          color: Color(0xff060606),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "\$70",
                                style: TextStyle(
                                  color: Color(0xff060606),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Course Content",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xffE8E8E8),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: [
                    list(
                      lead: "01",
                      tit: "Welcome to the course",
                      sub: "4.30 mins",
                    ),
                    list(
                      lead: "02",
                      tit: "Design and thinking",
                      sub: "17:30 mins",
                    ),
                    list(
                      lead: "01",
                      tit: "Design thinking process",
                      sub: "10:20 mins",
                    ),
                    list(
                      lead: "01",
                      tit: "Customer perpesctive",
                      sub: "1k mins",
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  "Load More",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffAFAFAF),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget list({
    lead,
    tit,
    sub,
  }) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          "lead",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Color(0xffAFAFAF),
          ),
        ),
      ),
      title: Text(
        tit,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w900,
          color: Color(0xff807F7F),
        ),
      ),
      subtitle: Text(
        sub,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w900,
          color: Color(0xff807F7F),
        ),
      ),
      trailing: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
