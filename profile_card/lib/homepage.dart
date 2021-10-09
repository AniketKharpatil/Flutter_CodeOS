import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   showDetails() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: Color(0xffd4d1f3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        // title: Text(name),
        content: 
        Container(
          height: 365,
          width: 350,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0),
            ),
            color: Color(0xff7266d8),
            child:   Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('images/angela.jpg'),
                          ),
                        ),
                        Text(
                          "ABCD",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "New York",
                          style: TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 2.5,
                            color: Colors.blue.shade50,
                          ),
                        ),
                        Container(
                          width: 170.0,
                          margin: EdgeInsets.symmetric(vertical: 2.0),
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2)
                                  .copyWith(left: 10, right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Experience: 15 yrs",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        letterSpacing: 2.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Harvard University",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        letterSpacing: 2.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Status: Single",
                            style: TextStyle(
                                fontSize: 15.0,
                                letterSpacing: 2.5,
                                color: Colors.white),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0)
                                .copyWith(bottom: 0),
                            child: Card( shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),color: Colors.indigo[300],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Chat Now",
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 2.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.chat,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    
                  
                ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(1).copyWith(right: 30, top: 0),
            child: RaisedButton(
              child: Text(
                'Cancel',
                style: TextStyle(fontSize: 15),
              ),
              shape: StadiumBorder(),
              color: Colors.indigo[400],
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/angela.jpg'),
              ),
              Text(
                'Katy Perry',
                style: TextStyle(
                  // fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: (){showDetails();},
                child: Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    // fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+44 123 456 789',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        // fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'codeos@gmail.com',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal.shade900,
                          // fontFamily: 'Source Sans Pro'
                          ),
                    ),
                  ))
            ],
          )),
        ),
      ),
    );
  
  }
}