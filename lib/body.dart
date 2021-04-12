import 'package:flutter/material.dart';
import 'package:furniture_store/constants.dart';
import 'package:furniture_store/responsive.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      color: Colors.white,
      child: Column(
        children: [
          if (!Responsive.isMobile(context))
            SizedBox(
              height: kDefaultPadding * 4,
            ),
          if (Responsive.isMobile(context))
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 2,
                        vertical: kDefaultPadding)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          if (Responsive.isMobile(context))
            SizedBox(
              height: kDefaultPadding,
            ),
          if (Responsive.isMobile(context))
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 2,
                        vertical: kDefaultPadding)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(color: kLightGreen3),
                        borderRadius: BorderRadius.circular(20)))),
                child: Text(
                  'Explore',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: kLightGreen3),
                ),
              ),
            ),
          if (Responsive.isMobile(context))
            Container(
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding * 2),
                child: Column(
                  children: [
                    Text(
                      'Why we are best in our Town',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      'We have 5000+ Review and our Customer trust on our Quality product and trust own our product. If your order More than 500 we can deliver free like Express delivery.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kLightGreen1, fontSize: 12, height: 1.5),
                    ),
                    SizedBox(
                      height: kDefaultPadding * 3,
                    ),
                    ClipOval(
                        child: Container(
                            height: 50,
                            width: 50,
                            color: kLightGreen3,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ))),
                  ],
                ),
              ),
            ),
          if (Responsive.isMobile(context))
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Stack(
                children: [
                  Image.asset('assets/images/chair1.jpg'),
                  Positioned(
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: Column(
                        children: [
                          Text(
                            'Chair',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: kDefaultPadding / 2,
                          ),
                          Text(
                            "\$36",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          if (Responsive.isMobile(context))
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Stack(
                children: [
                  Image.asset('assets/images/tree1.jpg'),
                  Positioned(
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: Column(
                        children: [
                          Text(
                            'Tree',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: kDefaultPadding / 2,
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          if (Responsive.isMobile(context))
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Stack(
                children: [
                  Image.asset('assets/images/stand.jpg'),
                  Positioned(
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: Column(
                        children: [
                          Text(
                            'Lamp',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: kDefaultPadding / 2,
                          ),
                          Text(
                            "\$25",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          if (!Responsive.isMobile(context))
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      children: [
                        Text(
                          'Why we are best in our Town',
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        Text(
                          'We have 5000+ Review and our Customer trust on our Quality product and trust own our product. If your order More than 500 we can deliver free like Express delivery.',
                          style: TextStyle(
                              color: kLightGreen1, fontSize: 10, height: 1.5),
                        ),
                        SizedBox(
                          height: kDefaultPadding * 3,
                        ),
                        ClipOval(
                            child: Container(
                                height: 50,
                                width: 50,
                                color: kLightGreen1,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                  ),
                )),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                    child: Stack(
                  children: [
                    Image.asset('assets/images/chair1.jpg'),
                    Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        child: Column(
                          children: [
                            Text(
                              'Chair',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: kDefaultPadding / 2,
                            ),
                            Text(
                              "\$36",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ],
                )),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                    child: Stack(
                  children: [
                    Image.asset('assets/images/tree1.jpg'),
                    Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        child: Column(
                          children: [
                            Text(
                              'Tree',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: kDefaultPadding / 2,
                            ),
                            Text(
                              "\$20",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ],
                )),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                    child: Stack(
                  children: [
                    Image.asset('assets/images/stand.jpg'),
                    Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        child: Column(
                          children: [
                            Text(
                              'Lamp',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: kDefaultPadding / 2,
                            ),
                            Text(
                              "\$25",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ],
                )),
              ],
            ),
          SizedBox(
            height: kDefaultPadding * 4,
          ),
        ],
      ),
    );
  }
}
