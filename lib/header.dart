import 'package:flutter/material.dart';
import 'package:furniture_store/constants.dart';
import 'package:furniture_store/responsive.dart';
import 'package:furniture_store/web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Column(
        children: [
          Container(
            width: double.infinity,
            color: kLightGreen1,
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: kMaxWidth),
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      WebMenu(),
                      SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              crossAxisAlignment:
                                  (!Responsive.isMobile(context))
                                      ? CrossAxisAlignment.start
                                      : CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 250,
                                  child: Text(
                                    'Furniture that every one Loves',
                                    textAlign: (!Responsive.isMobile(context))
                                        ? TextAlign.left
                                        : TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 38,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: kDefaultPadding,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(
                                      (!Responsive.isMobile(context))
                                          ? 8
                                          : 30.0),
                                  child: Text(
                                    'We have 5000+ Reviews and our customers trust on our Furniture and Quality products.',
                                    textAlign: (!Responsive.isMobile(context))
                                        ? TextAlign.left
                                        : TextAlign.center,
                                    maxLines: 2,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                if (Responsive.isMobile(context))
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding * 4),
                                    child:
                                        Image.asset('assets/images/frame.jpg'),
                                  ),
                                if (!Responsive.isMobile(context))
                                  SizedBox(
                                    height: kDefaultPadding,
                                  ),
                                if (!Responsive.isMobile(context))
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        kDefaultPadding * 2,
                                                    vertical: kDefaultPadding)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)))),
                                        child: Text(
                                          'Buy Now',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: kDefaultPadding,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        kDefaultPadding * 2,
                                                    vertical: kDefaultPadding)),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    kLightGreen1),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: Colors.white),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)))),
                                        child: Text(
                                          'Explore',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              ],
                            ),
                          )),
                          if (!Responsive.isMobile(context))
                            Expanded(
                                child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: kDefaultPadding * 3,
                                    left: kDefaultPadding * 3,
                                    right: kDefaultPadding),
                                child: Image.asset('assets/images/frame.jpg'),
                              ),
                            ))
                        ],
                      ),
                      SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.3,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
      Positioned.fill(
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.transparent,
            )),
            Expanded(
                child: Container(
              child: Row(
                children: [
                  if (!Responsive.isMobile(context))
                    Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.transparent,
                        )),
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Responsive.isMobile(context)
                                ? kDefaultPadding * 2
                                : 8.0,
                            vertical: Responsive.isMobile(context)
                                ? kDefaultPadding
                                : 0),
                        child: Image.asset('assets/images/sofa.jpg'),
                      )),
                  if (!Responsive.isMobile(context))
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(kDefaultPadding * 4),
                          child: Image.asset('assets/images/lamp.jpg'),
                        )),
                ],
              ),
            ))
          ],
        ),
      )
    ]);
  }
}
