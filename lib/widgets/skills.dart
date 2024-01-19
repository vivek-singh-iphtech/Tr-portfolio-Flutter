import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 238, 238, 238).withOpacity(0.3)),
      margin: EdgeInsets.all(40.0),
      child: const Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(children: [
              LinearProgressIndicator(
                backgroundColor: Color.fromARGB(255, 169, 211, 254),
                valueColor:
                    AlwaysStoppedAnimation(Color.fromARGB(255, 0, 153, 248)),
                value: 0.7,
                minHeight: 15,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "70%",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.redAccent,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              value: 0.7,
              minHeight: 20,
            )
          ],
        ),
      ),
    );
  }
}
