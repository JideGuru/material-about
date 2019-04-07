import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {

  final String link;
  final String name;
  final String img;
  var textColor;
  var iconColor;

  SocialButton({Key key, this.img, this.name, this.link, this.textColor, this.iconColor}):super(key: key);

  @override
  Widget build(BuildContext context) {

    _launchURL(String link) async {
      if (await canLaunch(link)) {
        await launch(link);
      } else {
        throw 'Could not launch $link';
      }
    }

    return Container(
      child: InkWell(
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            primary: false,
            shrinkWrap: true,
            children: <Widget>[

              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  '$img',
                  color: iconColor,
                  height: 30.0,
                  width: 30.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2.0),
                child: Text(
                  "$name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: (){
          _launchURL("$link");
        },
      ),
    );
  }
}
