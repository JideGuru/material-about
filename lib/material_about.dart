import 'package:flutter/material.dart';
import 'package:material_about/widgets/app_button.dart';
import 'package:material_about/widgets/seperator.dart';
import 'package:material_about/widgets/social_button.dart';
import 'package:material_about/util/images.dart';
import 'package:material_about/util/Constants.dart';
import 'dart:ui';


class MaterialAbout extends StatefulWidget {
  final String banner;
  final String dp;
  final String name;
  final String position;
  final String description;
  var seperatorColor;
  var iconColor;
  var textColor;
  final String playstoreID;
  final String github;
  final String bitbucket;
  final String facebook;
  final String twitter;
  final String instagram;
  final String googlePlus;
  final String youtube;
  final String dribble;
  final String linkedin;
  final String email;
  final String whatsapp;
  final String skype;
  final String google;
  final String android;
  final String website;
  var appIcon;
  final String appName;
  final String appVersion;
  final String removeAds;
  final String donate;
  final String changelog;
  final String help;
  final String share;
  final String devID;


  MaterialAbout({
    Key key,
    @required this.banner,
    @required this.dp,
    @required this.name,
    @required this.position,
    @required this.description,
    @required this.seperatorColor,
    @required this.iconColor,
    @required this.textColor,
    @required this.playstoreID,
    @required this.github,
    @required this.bitbucket,
    @required this.facebook,
    @required this.twitter,
    @required this.instagram,
    @required this.googlePlus,
    @required this.youtube,
    @required this.dribble,
    @required this.linkedin,
    @required this.email,
    @required this.whatsapp,
    @required this.skype,
    @required this.google,
    @required this.android,
    @required this.website,
    @required this.appIcon,
    @required this.appName,
    @required this.appVersion,
    @required this.removeAds,
    @required this.donate,
    @required this.changelog,
    @required this.help,
    @required this.share,
    @required this.devID,
  }) : super(key: key);


  @override
  _MaterialAboutState createState() => _MaterialAboutState();
}

class _MaterialAboutState extends State<MaterialAbout> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
            child: Column(
              children: <Widget>[
                Image.asset(
                  '${widget.banner}',
                  height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ],
            )
        ),

        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50.0,
            child: ClipOval(
              child: Image.asset(
                '${widget.dp}',
                height: 190.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 10.0),
          child: Text(
            "${widget.name}",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: widget.textColor
            ),
          ),
        ),

        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 2.0),
          child: Text(
            "${widget.position}",
            style: TextStyle(
              fontSize: 15.0,
                color: widget.textColor
            ),
          ),
        ),

        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 20.0),
          child: Text(
            "${widget.description}",
            style: TextStyle(
              fontSize: 15.0,
              color: widget.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),


        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 17.0),
          child: MySeparator(color: widget.seperatorColor),
        ),

        Container(
          margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: GridView(
            primary: false,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 2.3),
            ),
            children: <Widget>[

              //PlayStore
              SocialButton(
                img: '${Images.playStore}',
                name: "Play Store",
                link: "${Constants.psLink}${widget.playstoreID}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Github
              SocialButton(
                img: '${Images.github}',
                name: "Github",
                link: "${Constants.githubLink}${widget.github}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Bitbucket
              SocialButton(
                img: '${Images.bitBucket}',
                name: "Bitbucket",
                link: "${Constants.bitbucketLink}${widget.bitbucket}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Facebook
              SocialButton(
                img: '${Images.facebook}',
                name: "Facebook",
                link: "${Constants.facebookLink}${widget.facebook}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Twitter
              SocialButton(
                img: '${Images.twitter}',
                name: "Twitter",
                link: "${Constants.twitterLink}${widget.twitter}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Instagram
              SocialButton(
                img: '${Images.instagram}',
                name: "Instagram",
                link: "${Constants.instagramLink}${widget.instagram}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Google Plus
              SocialButton(
                img: '${Images.googlePlus}',
                name: "Google Plus",
                link: "${Constants.googlePlusLink}${widget.googlePlus}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Youtube
              SocialButton(
                img: '${Images.youtube}',
                name: "Youtube",
                link: "${Constants.youtubeLink}${widget.youtube}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Dribble
              SocialButton(
                img: '${Images.dribbble}',
                name: "Dribble",
                link: "${Constants.dribbleLink}${widget.dribble}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Linkedin
              SocialButton(
                img: '${Images.linkedin}',
                name: "LinkedIn",
                link: "${Constants.linkedinLink}${widget.linkedin}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Email
              SocialButton(
                img: '${Images.email}',
                name: "Email",
                link: "${Constants.emailLink}${widget.email}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //WhatsApp
              SocialButton(
                img: '${Images.whatsapp}',
                name: "WhatsApp",
                link: "${Constants.whatsappLink}${widget.whatsapp}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Skype
              SocialButton(
                img: '${Images.skype}',
                name: "Skype",
                link: "${Constants.skypeLink}${widget.skype}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Google
              SocialButton(
                img: '${Images.google}',
                name: "Google",
                link: "${Constants.googleLink}${widget.google}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Android
              SocialButton(
                img: '${Images.android}',
                name: "Android",
                link: "${Constants.androidLink}${widget.android}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              //Website
              SocialButton(
                img: '${Images.website}',
                name: "Website",
                link: "${widget.website}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

            ],
          ),
        ),

        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 2.0),
          child: MySeparator(color: widget.seperatorColor),
        ),

        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: GridView(
            primary: false,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 3.4),
            ),
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left:50.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        '${widget.appIcon}',
                        height: 80.0,
                      ),
                    ],
                  )
              ),

              Container(
                margin: EdgeInsets.only(top:20.0),
                child: ListView(
                  primary: false,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "${widget.appName}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: widget.textColor,
                        ),
                      ),
                    ),

                    Container(
                      child: Text(
                        "Version ${widget.appVersion}",
                        style: TextStyle(
                          color: widget.textColor,
                        ),
                      ),
                    ),
                  ],

                ),
              ),
            ],
          ),
        ),


        Container(
          margin: const EdgeInsets.only(
              top: 2.0,
              left: 15.0,
              right: 3.0,
              bottom: 2.0
          ),
          child: GridView(
            shrinkWrap: true,
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 5),
            ),
            children: <Widget>[

              AppButton(
                text: "Rate this app 5 \nstars",
                img: '${Images.star}',
                link: "${Constants.psLink}${widget.playstoreID}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "More Apps from me",
                img: '${Images.playStore}',
                link: "${Constants.psLink}${widget.devID}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "Share this app",
                img: '${Images.share}',
                link: "share",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
                share: widget.share
              ),

              AppButton(
                text: "Update this app",
                img: '${Images.updateApp}',
                link: "print(\"hi\")",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "Give me a feedback",
                img: '${Images.feedback}',
                link: "${Constants.psLink}${widget.playstoreID}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "Introduce the app",
                img: '${Images.introduce}',
                link: "print(\"hi\")",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "Help",
                img: '${Images.help}',
                link: "${widget.help}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "Changelog",
                img: '${Images.changeLog}',
                link: "${widget.changelog}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "Remove ads",
                img: '${Images.removeAds}',
                link: "${widget.removeAds}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),

              AppButton(
                text: "Donate",
                img: '${Images.donate}',
                link: "${widget.donate}",
                iconColor: widget.iconColor,
                textColor: widget.textColor,
              ),


            ],
          ),
        ),
      ],
    );
  }
}
