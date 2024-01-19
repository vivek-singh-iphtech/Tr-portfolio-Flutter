import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/widgets/nav_item.dart';


class DesktopNavbar extends StatelessWidget {
const DesktopNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(

      color: Colors.transparent,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavItem(title: 'Home', onTap: () {
                  Portfolio.of(context)?.changePageIndex(0);
                },),
                 NavItem(title: 'Projects', onTap: () {
                  Portfolio.of(context)?.changePageIndex(1);
                },),
                 NavItem(title: 'Skills', onTap: () {
                  Portfolio.of(context)?.changePageIndex(2);
                },),
                 NavItem(title: 'Contact', onTap: () {
                  Portfolio.of(context)?.changePageIndex(3);
                },),
         
              // Add more items as needed
            ],
          ),
        ],
      ),
    );
  }
}
