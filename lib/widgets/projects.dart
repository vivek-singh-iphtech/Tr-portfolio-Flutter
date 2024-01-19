import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class Projects extends StatefulWidget {
  final int i;
  const Projects({Key? key, required this.i}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
 bool isPotrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: widget.i,
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(
              8,
              (int idx) => Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Responsive.isMobile(context)&&isPotrait?Image.asset('assets/images/project.jpg',fit: BoxFit.fill):
                    const Image(image: AssetImage('assets/images/project.jpg'),fit: BoxFit.fill,),
          
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Something'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Something'),
                    ),
                  ],
                ),
                // color: Colors.teal[600],
                // child: Center(child: Text('$idx')),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
