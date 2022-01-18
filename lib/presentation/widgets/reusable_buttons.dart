import 'package:flutter/material.dart';
import 'package:traderassistant/presentation/constants/colors.dart';
import 'package:traderassistant/presentation/constants/constants.dart';


class ReusableButtonGlobal extends StatelessWidget {
  ReusableButtonGlobal(
      {@required this.title, @required this.onPressed, this.color, this.child});
  final Color? color;
  final String? title;
  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.transparent),
        backgroundColor: (color != null) ? color : BrandColors.colorPurple,
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      onPressed: onPressed!,
      child: (child == null)
          ? Container(
              height: buttonHeight,
              width: deviceWidth * .7,
              child: Center(
                child: Text(
                  title!,
                  style: kTextStyleWhite.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            )
          : Container(              height: buttonHeight,
              width: deviceWidth * .7,
              child: Center(
                child: child,
              ),
            ),
    );
  }
}

const double buttonHeight = 44;

class ReusableButtonSocialAuth extends StatelessWidget {
  ReusableButtonSocialAuth(
      {@required this.title, this.icon, @required this.onPressed});
  final String? title;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          side: BorderSide(width: 2, color: Colors.black),
        ),
        onPressed: onPressed!,
        child: Container(
          height: buttonHeight,
          width: MediaQuery.of(context).size.width * .6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon == null
                  ? Container(
                      height: 0,
                      width: 0,
                    )
                  : Icon(
                      icon,
                      color: BrandColors.colorBlack,
                    ),
              Text(
                '  $title',
                style: kTextStyleWhite.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: BrandColors.colorBlack),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GlobalBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        //  color: Colors.green,
        alignment: Alignment.centerLeft,

        // height: 18,
        width: 100,
        child: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff141415),
          size: 29,
        ),
      ),
    );
  }
}
