import 'package:flutter/material.dart';

void main() {
  runApp( Pointscounter());
}

class Pointscounter extends StatefulWidget {

  @override
  State<Pointscounter> createState() => _PointscounterState();
}

class _PointscounterState extends State<Pointscounter> {
  int TeamAPoint = 0 ;

  int TeamBPoint = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // بمسح الشريط اللي فوق بالجمله دي
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter') ,
          backgroundColor:Colors.pinkAccent ,
        ),
        body: Column(

          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A',
                      style: TextStyle(fontSize: 40,
                      color: Colors.pink,
                      ),
                    ),
                    Text('$TeamAPoint',
                      style: TextStyle(fontSize: 160,
                        color: Colors.black87,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        minimumSize: Size(150, 50)  //بقوله اقل قيمه للحجم بتاع البوكس القيمه دي لكن ممكن يجبر عادي بحجم الكلام

                      ),
                        onPressed: (){
                         TeamAPoint++;
                         setState(() {
                           print("$TeamAPoint");

                         });
                        },
                        child: Text('Add 1 point',
                        style: TextStyle(fontSize: 22,
                        color:Colors.black,
                        ),
                        ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pinkAccent,
                            minimumSize: Size(150, 50)

                        ),
                        onPressed: () {
                          TeamAPoint = TeamAPoint + 2;
                          setState(() {
                            print("$TeamAPoint");
                          });
                        },
                        child: Text('Add 2 point',
                          style: TextStyle(fontSize: 22,
                            color:Colors.black,
                          ),
                        ),

                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          minimumSize: Size(150, 50)

                      ),
                      onPressed: () {
                        TeamAPoint = TeamAPoint + 3;
                        setState(() {
                          print("$TeamAPoint");
                        });
                      },
                      child: Text('Add 3 point',
                        style: TextStyle(fontSize: 22,
                          color:Colors.black,
                        ),
                      ),

                    ),
                  ],
                ),

               SizedBox(
                 height: 500,
                 child: VerticalDivider(
                    color: Colors.black,
                   thickness: 2,

                  ),
               ),
                Column(
                  children: [
                    Text('Team B',
                      style: TextStyle(fontSize: 40,
                        color: Colors.pink,
                      ),
                    ),
                    Text('$TeamBPoint',
                      style: TextStyle(fontSize: 160,
                        color: Colors.black87,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          minimumSize: Size(150, 50)

                      ),
                      onPressed: () {
                        TeamBPoint = TeamBPoint + 1;
                        setState(() {
                          print("$TeamBPoint");
                        });
                      },
                      child: Text('Add 1 point',
                        style: TextStyle(fontSize: 22,
                          color:Colors.black,
                        ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pinkAccent,
                            minimumSize: Size(150, 50)

                        ),
                        onPressed: () {
                          TeamBPoint = TeamBPoint + 2;
                          setState(() {
                            print("$TeamBPoint");
                          });
                        },
                        child: Text('Add 2 point',
                          style: TextStyle(fontSize: 22,
                            color:Colors.black,
                          ),
                        ),

                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          minimumSize: Size(150, 50)

                      ),
                      onPressed: () {
                        TeamBPoint = TeamBPoint + 3;
                        setState(() {
                          print("$TeamBPoint");
                        });
                      },
                      child: Text('Add 3 point',
                        style: TextStyle(fontSize: 22,
                          color:Colors.black,
                        ),
                      ),

                    ),
                  ],
                ),
              ],
            ),
              Spacer(
                flex: 7,
              ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    minimumSize: Size(150, 50)

                ),
                onPressed: (){
                  setState(() {
                    TeamAPoint=0;
                    TeamBPoint=0;
                  });
                },
                child: Text('reset :)',
                  style: TextStyle(fontSize: 22,
                    color:Colors.black,
                  ),
                ),

              ),
            ),
            Spacer(
              flex: 7,
            ),
          ],

        )
      ),
    );
  }
}
