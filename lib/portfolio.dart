import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/mobile/landingPage_mobile.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/landingPage.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/projects.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  final PageController _pageController = PageController();
  int _currentPageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         title:  Responsive.isMobile(context)?null:const Navbar(),
         backgroundColor: const Color.fromARGB(255, 40, 40, 40),
        ),
        body: PageView(
             controller: _pageController,
             scrollDirection: Axis.vertical,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                  
                });
              },
              children: [
                // Replace these with your actual pages
                 Container(
                  color: const Color.fromARGB(255, 40, 40, 40),
                  child:  Responsive.isMobile(context)?const LandingPageMobile():const LandingPage(),
                  
                ),
                Container(
                  color: Colors.red,
                  child:  const Responsive(   
                                mobile:  Projects(i: 2),
                                tablet:  Projects(i: 2),
                                desktop:  Projects(i: 3),
                              ),
                  
                ),
                Container(
                  color: Colors.green,
                  child: null,







                ),
                Container(
                  color: Colors.blue,
                  child: Center(child: Text('Page 3')),
                ),
                // Add more pages as needed
              ],
          
          ),
           
       endDrawer: Responsive.isMobile(context)?const Navbar():null,
      );
    
  }
}
