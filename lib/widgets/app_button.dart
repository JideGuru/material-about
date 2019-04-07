import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppButton extends StatelessWidget {

  final String text;
  final String img;
  final String link;
  var textColor;
  var iconColor;

  AppButton({Key key, this.text, this.img, this.link, this.textColor, this.iconColor}): super(key:key);

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
      margin: const EdgeInsets.only(
          top: 2.0,
          left: 5.0,
          right: 5.0,
          bottom: 2.0
      ),
      child: InkWell(
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                '$img',
                height: 30.0,
                width: 30.0,
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: Text(
                "$text",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),

        onTap: (){
          _launchURL("$link");
        },
      ),
    );
  }
}
