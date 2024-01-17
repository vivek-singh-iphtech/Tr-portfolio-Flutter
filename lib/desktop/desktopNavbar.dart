import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_item.dart';

class DesktopNavbar extends StatelessWidget {
const DesktopNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(

      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavItem('Home'),
              NavItem('Projects'),
              NavItem('skills'),
              NavItem('Experience'),
              // Add more items as needed
            ],
          ),
        ],
      ),
    );
  }
}
