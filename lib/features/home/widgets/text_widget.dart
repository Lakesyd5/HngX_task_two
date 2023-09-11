import 'package:flutter/material.dart';

// About Me Widget
Widget aboutMe() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'About Me',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      Divider(color: Colors.black54, endIndent: 50,),
      SizedBox(height: 10),
      Text(
        'Skilled and passionate Flutter developer with expertise in Dart and the Flutter framework. Excels in creating responsive UI designs, implementing features, and optimizing app performance. Effective communicator, collaborative team player, and logical problem solver. Committed to continuous learning and contributing to impactful Flutter projects.',
        style: TextStyle(fontWeight: FontWeight.w500),
      )
    ],
  );
}

// Contacts Widget
Widget contacts() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Contacts',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      Divider(color: Colors.black54, endIndent: 50),
      SizedBox(height: 10),
      // Phone Number row
      Row(
        children: [
          Icon(Icons.phone),
          SizedBox(width: 10),
          Text(
            '+2347018434222',
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
      SizedBox(height: 15),
      // Slack username row
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Slack',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(width: 10),
          Text(
            'Adeleke Ojedokun',
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
      SizedBox(height: 15),
      // Github link row
      Row(
        children: [
          Text(
            'GitHub',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(width: 10),
          Text(
            'https://github.com/Lakesyd5',
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      )
    ],
  );
}

// Skill widget...
Widget skill() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Skills',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black38, endIndent: 50),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            _list(skillText: 'Html & Css'),
            _list(skillText: 'JavaScript'),
            _list(skillText: 'Firebase'),
            _list(skillText: 'NodeJs'),
            _list(skillText: 'Dart'),
            _list(skillText: 'Flutter'),
            _list(skillText: 'Php'),
          ],
        ),
      )
    ],
  );
}

Widget _list({String? skillText}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          const Text(
            '\u2022',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            skillText ?? '',
            style: const TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    ],
  );
}


// Experinece widget...
Widget experience() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Experience',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      Divider(color: Colors.black38, endIndent: 50),
      Text('JavaScript Developer', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      SizedBox(height: 5),
      Text('Earned Badge', style: TextStyle(fontWeight: FontWeight.w500),),
      Row(
        children: [
          Text('Dates: '),
          Text('04/2022 - 09/2022'),
        ],
      ),
      SizedBox(height: 20),
      Text('Flutter Developer', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      SizedBox(height: 5),
      Text('SwiftPay Fintech', style: TextStyle(fontWeight: FontWeight.w500),),
      Row(
        children: [
          Text('Dates: '),
          Text('10/2022 - 04/2023'),
        ],
      )
    ],
  );
}