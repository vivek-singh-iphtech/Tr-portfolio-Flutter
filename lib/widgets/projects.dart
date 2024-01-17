

import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
final int i;
  const Projects({
    Key? key,
    required this.i}
  ) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {


  @override
  Widget build(BuildContext context){
    return  Column(
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
                color: Colors.teal[600],
                child: Center(child: Text('$idx')),
              ),
            ),
          ),
        ),
      ],
    );
  }
}