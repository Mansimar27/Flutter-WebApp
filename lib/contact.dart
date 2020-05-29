import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'main.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _formUrl,
        label: Text('Feedback',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),),
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.purple,
                  height: 11,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Get in touch with me !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.purple[500],
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.call,
                          color: Colors.purple[600],
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('+91 9958009454',style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.email,
                          color: Colors.purple[600],
                          size: 22,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text('Mansimarsingh94@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RaisedButton(
                          onPressed: _gitUrl,
                          color: Colors.purple,
                          child: Text('GitHub',style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RaisedButton(
                          onPressed: _instaUrl,
                          color: Colors.purple,
                          child: Text('Instagram',style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
                Text('Have a Nice Day ahead 😃',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[500],
                    fontSize: 25,
                  ),),
                Container(
                  color: Colors.purple,
                  height: 11,
                ),
              ],
      ),
    );
  }
}



_gitUrl() async {
  const url = 'https://github.com/Mansimar27';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_instaUrl() async {
  const url = 'https://www.instagram.com/mansimarsingh/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_formUrl() async {
  const url = 'https://forms.gle/H4TagoStrmty83ey7';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch this link.';
  }
}
