import 'package:material_about/material_about.dart';
import 'package:flutter/material.dart';


class Dark extends StatefulWidget {
  @override
  _DarkState createState() => _DarkState();
}

class _DarkState extends State<Dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: MaterialAbout(
        banner: Image.asset(
          'images/profile_cover.jpg',
          height: 120.0,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        dp: Image.asset(
          "images/profile_picture.png",
          height: 190.0,
          fit: BoxFit.fill,
        ),
        name: "Your Name",
        position: "Mobile Developer",
        description: "I'm warmed of mobile technologies. \n Ideas Maker, curious and nature lover",
        seperatorColor: Colors.grey,
        iconColor: Colors.white,
        textColor: Colors.white,
        playstoreID: "1111111111111",
        github: "YourID", //e.g JideGuru
        bitbucket: "YourID",
        facebook: "YourID", //e.g festus.olusegun.94
        twitter: "YourID", //e.g JideGuru
        instagram: "yourID", //e.g jideguru
        googlePlus: "yourID",
        youtube: "yourID",
        dribble: "yourID",
        linkedin: "yourID",
        email: "yourEmail",
        whatsapp: "yournumber", //without international code e.g 22994684468.
        skype: "yourID",
        google: "yourSearchQuery",
        android: "yourID",
        website: "yourURL",
        appIcon: "images/profile_picture.png",
        appName: "App Name",
        appVersion: "1.0",
        removeAds: "Link to pro app",
        donate: "Link to any wallet for donations",
        changelog: "Link to changeLog",
        help: "Link to about app", //to be improved soon
        share: "Text to share to people",
        devID: "YourPlaystoreDevID",
      ),
    );
  }
}
