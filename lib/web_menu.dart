import 'package:flutter/material.dart';
import 'package:furniture_store/constants.dart';
import 'package:furniture_store/responsive.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Fundo',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        if (!Responsive.isMobile(context))
          Row(
            children: [
              Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Text(
                'About us',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Text(
                'Services',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Text(
                'Blog',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Text(
                'Contact us',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        if (Responsive.isMobile(context))
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {})
      ],
    );
  }
}
