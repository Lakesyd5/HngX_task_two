import 'package:flutter/material.dart';
import 'package:hng_stage_two/commons/models/experience.dart';

// About Me Widget
Widget aboutMe({String? aboutContent}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'About Me',
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black54, endIndent: 50,),
      const SizedBox(height: 10),
      Text(
        aboutContent ?? '',
        style: const TextStyle(fontWeight: FontWeight.w500),
      )
    ],
  );
}

// Contacts Widget
Widget contacts({String? phoneNumber, String? slackName, String? githubLink }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Contacts',
        style:  TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black54, endIndent: 50),
      const SizedBox(height: 10),
      // Phone Number row
      Row(
        children: [
          const Icon(Icons.phone),
          const SizedBox(width: 10),
          Text(
            phoneNumber ?? '',
            style: const TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
      const SizedBox(height: 15),
      // Slack username row
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'Slack',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 10),
          Text(
            slackName ?? '',
            style: const TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
      const SizedBox(height: 15),
      // Github link row
      Row(
        children: [
          const Text(
            'GitHub',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 10),
          Text(
            githubLink ?? '',
            style: const TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      )
    ],
  );
}

// Skill widget...
Widget skill({List? skillTitle}) {
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
            for (String title in skillTitle ?? [])
                _list(skillText: title),
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
Widget experienceWidget({List? experiences}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Experience',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black38, endIndent: 50),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            for (Experience exp in experiences ?? [])
                _experience(company: exp.organization, date: exp.date, role: exp.jobTitle)
          ],
        ),
      )
    ],
  );
}

Widget _experience({String? role, String? company, String? date}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      
      Text(role ?? '', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      const SizedBox(height: 5),
      Text(company ?? '', style: const TextStyle(fontWeight: FontWeight.w500),),
      Row(
        children: [
          const Text('Dates: '),
          Text(date ?? ''),
        ],
      ),
      const SizedBox(height: 20),
    ],
  );
}