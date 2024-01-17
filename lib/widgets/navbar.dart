import 'package:flutter/material.dart';
import 'package:portfolio/desktop/desktopNavbar.dart';
import 'package:portfolio/mobile/mobileNavbar.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tablet/tabletNavbar.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileNavbar(),
        tablet: TabletNavbar(),
        desktop: DesktopNavbar());
  }
}
