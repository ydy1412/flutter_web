import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/responsiveness.dart';
import 'package:flutter_web/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 28,
                ),
              ),
            ])
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
                text: "Dash",
                color: Colors.grey,
                size: 20,
                weight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black.withOpacity(.7),
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black.withOpacity(.7),
                ),
                onPressed: () {
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: Colors.grey,
          ),
          SizedBox(
            width: 24,
          ),
          CustomText(text: "santos", color: Colors.grey),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person_pin_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
    );
