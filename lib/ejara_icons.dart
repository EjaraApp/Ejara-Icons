// ignore_for_file: depend_on_referenced_packages

library ejara_icons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:path/path.dart' as p;

import 'src/icons.dart';

export 'src/icons.dart';

class EjaraIcon extends StatelessWidget {
  const EjaraIcon(
    this.icon, {
    super.key,
    this.color,
    this.size,
    this.solid = false,
  });

  final EjaraIcons icon;
  final Color? color;
  final double? size;
  final bool solid;

  @override
  Widget build(BuildContext context) {
    // final path = p.join(
    //   'packages/ejara_icons/assets/icons/',
    //   icon.name,
    // );
    return SvgPicture.asset(
      icon.name,
      colorFilter: ColorFilter.mode(
        color ?? IconTheme.of(context).color ?? Colors.black,
        BlendMode.srcIn,
      ),
      width: size,
      height: size,
      alignment: Alignment.center,
    );
  }
}
