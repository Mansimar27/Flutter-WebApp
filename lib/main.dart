import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MansimarSingh',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _chatUrl,
        label: Text('Chat',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),),
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            CircleAvatar(radius: 70,
              backgroundColor: Colors.purple,
              backgroundImage: AssetImage('images/pic.jpg'),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Mansimar Singh',
              textAlign: TextAlign.center,
              style: GoogleFonts.courgette(textStyle: TextStyle(
                color: Colors.purple[600],
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              width: 175,
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Hello ! I am Mansimar Singh.\nI am pursuing B.Tech(IT) from GTBIT, and I am a Flutter Developer.\nHave a look at some of my projects below.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inconsolata(textStyle: TextStyle(
              color: Colors.black,
              fontSize: 25,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey[300],
              height: 500,
              child: Center(
                child: Text('Will be Uploaded Soon 😄',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              color: Colors.purple,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Contact();
                  },
                ),);
              },
              child: Text('Contact me',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Made with Love ❤️',style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}



_chatUrl() async {
  const url = 'https://wa.me/9958009454';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch this link.';
  }
}
