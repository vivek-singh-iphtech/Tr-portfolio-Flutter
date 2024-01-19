import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_item.dart';

import '../portfolio.dart';


class TabletNavbar extends StatelessWidget {
const TabletNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
   return Container(
     
      color: Colors.transparent,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
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
         
              // NavItem('Experience'),
              // Add more items as needed
            ],
          ),
        ],
      ),
    );
  }
}
