import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/body_profile.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: color_main,
        title: Text(
          'Profile',
          style: TextStyle(
              color: color_white,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Container(
                  child: IconButton(
                icon: Icon(
                  Icons.logout_rounded,
                  size: 22,
                  color: color_white,
                ),
                onPressed: () {
                  print('keluar');
                },
              )),
              onPressed: () {
                print('Pesan');
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ],
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(2),
            child: SvgPicture.asset(
              'assets/svg/left_arrow.svg',
              height: 16,
              color: color_white,
            ),
          ),
          onPressed: () {
            print('BALIK KIRI WAE');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: body_profile(),
        bottom: false,
      ),
    );
  }
}
