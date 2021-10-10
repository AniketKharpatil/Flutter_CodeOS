import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  // const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void showdialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Harry is busy right now chat later'),
                // Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Okay'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile Page"),
        backgroundColor: Color(0xff7266d8),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 350,
              height: 450,
              child: Card(
                color: Color(0xff7266d8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0).copyWith(top: 20),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage("images/profile1.jpg"),
                      ),
                    ),
                    Text(
                      "Harry Potter",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "New York",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 170.0,
                      margin: EdgeInsets.symmetric(vertical: 2.0),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0)
                            .copyWith(left: 30, right: 30),
                        child: Column(
                          children: [
                            Text("Experience: 12 yers"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Hogwarts University"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Profession: Wizard"),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Status: Single",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: () {showdialog();},
                      child: Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.all(20.0).copyWith(bottom: 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.indigo[300],
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
