import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/mobile/landingPage_mobile.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/landingPage.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  // Declare a GlobalKey for accessing the state
  static final GlobalKey<_PortfolioState> portfolioKey = GlobalKey<_PortfolioState>();

   static _PortfolioState? of(BuildContext context) {
    return context.findAncestorStateOfType<_PortfolioState>();
  }

  @override
  _PortfolioState createState() => _PortfolioState();

  
}

class _PortfolioState extends State<Portfolio> {

  final PageController _pageController = PageController();
  int _currentPageIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
        appBar: AppBar(
         title:  Responsive.isMobile(context)?null:const Navbar(),
         backgroundColor: const Color.fromARGB(255, 40, 40, 40),
        ),
        body: PageView(
             controller: _pageController,
             scrollDirection: Responsive.isMobile(context)&&isLandscape ? Axis.horizontal : Axis.vertical,
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
                   color: const Color.fromARGB(255, 40, 40, 40),
                  child:  const Responsive(   
                                mobile:  Projects(i: 2),
                                tablet:  Projects(i: 2),
                                desktop:  Projects(i: 3),
                              ),
                  
                ),
                Container(
                  color: const Color.fromARGB(255, 40, 40, 40),
                  child: const Skills(),







                ),
                Container(
                  color: const Color.fromARGB(255, 40, 40, 40),
                  child: const Contact(),
                ),
                // Add more pages as needed
              ],
          
          ),
           
       endDrawer: Responsive.isMobile(context)?const Navbar():null,
      );
    
  }

   // Function to change the current page index
  void changePageIndex(int index) {
  
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
