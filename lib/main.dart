import 'package:flutter/material.dart';

class Player {
  String? name;
  String? position;

// named parameter 라고 부른다.
  Player({required this.name, this.position});
}

void main() {
  var chanho = Player(name: "찬호", position: 'MF');
  // log chanho
  print(chanho);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "성지니 개꾸리",
        //     style: TextStyle(
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Hey, Chris",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          )),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$5 194 382",
                style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      child: Text(
                        "Transfer",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
