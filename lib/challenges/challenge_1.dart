import 'package:flutter/material.dart';

/// This widget has an issue. As it changes in height, it takes up the complete available vertical space.
/// However, this is not what we want. This widget should only take up as much vertical space as its column
/// needs, and should not overflow its container when the size is too small.
///
/// Requiremements:
/// - When this widget is given infinite vertical space, it should fit its height to the size of its content.
/// - When this widget is given too little space, such that its contents take up more vertical space than it
///   is given, it should clip its children rather than overflow.
/// - The `ColoredBox` must not be removed, but may be moved if necessary
/// - The children of the `Column` must not be changed
/// - There must be 16 logical pixels of padding between the edge of the box and the text
/// - The text must remain left-aligned
/// - The width must not be changed
class Challenge1Widget extends StatelessWidget {
  const Challenge1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.red,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: _doNotChangeMeChildren,
              ),
            )
          ],
        ),
      ),
    );
  }

  static const _doNotChangeMeChildren = <Widget>[
    Text('Code Land Chronicles', style: TextStyle(fontSize: 24)),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Divider(),
    ),
    Text('In the heart of Code Land, where curly braces weave,'),
    Text('A tiny string ventured, with tricks up its sleeve.'),
    Text('Through Function Forest, \'neath the algorithm trees,'),
    Text('It danced with arrays, in a cool byte breeze.'),
    SizedBox(height: 6),
    Text('With a char as its guide, and an int for its wit,'),
    Text('They skipped past loops where the wild bugs sit.'),
    Text('Together they quested, to fix and to mend,'),
    Text('A mountain of errors, before the path\'s end.'),
    SizedBox(height: 6),
    Text('At Bug Mountain\'s peak, with a semicolon key,'),
    Text('They unlocked the mystery, set the system free.'),
    Text('So remember this tale, of the code and the knight,'),
    Text('Where each line tells a story, of struggle and fight.'),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Divider(),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Text('by <snipped>'),
      ),
    )
  ];
}
