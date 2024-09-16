import 'package:flutter/material.dart';
import 'package:GAF/widgets/navigation_bar/navigation_bar.dart';
import 'package:GAF/widgets/centered_view/centered_view.dart';
import 'package:GAF/widgets/course_details/course_details.dart';
import 'package:GAF/widgets/call_to_action/call_to_action.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            CustomNavigationBar(),
            Expanded(
              child: Row(children: [
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction('Join Course'),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}