import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paxform/constants/colors.dart';
import 'package:paxform/constants/device_utility.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar({super.key, this.title});

  final Widget? title;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AColors.background,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      title: title,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
