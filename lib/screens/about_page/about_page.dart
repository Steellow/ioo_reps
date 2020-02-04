import 'package:flutter/material.dart';
import 'package:hundred_reps/screens/shared_widgets/tiles_subtitle.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Divider(), // ! TEMP DO SIZEDBOX HERE OR SOMETHING
            TilesSubtitle(
              text: "Developed & designed by",
            ),
            ListTile(
              title: Text("Hannes Kinnunen"),
              subtitle: Text("github.com/steellow"),
              onTap: () {
                _launchURL("https://www.github.com/steellow");
              },
            ),
            Divider(),
            TilesSubtitle(
              text: "Sources",
            ),
            ListTile(
              title: Text("Source Code"),
              subtitle: Text("github.com/steellow/hundred_reps"),
              onTap: () {
                _launchURL("https://www.github.com/steellow/hundred_reps");
              },
            ),
            ListTile(
              title: Text("Man Doing Push Ups Cartoon.svg"),
              subtitle: Text("from Wikimedia Commons by Videoplasty.com, CC-BY-SA 4.0"),
              onTap: () {
                _launchURL("https://commons.wikimedia.org/wiki/File:Man_Doing_Push_Ups_Cartoon.svg");
              },
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
