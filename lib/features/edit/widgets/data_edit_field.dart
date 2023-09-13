import 'package:flutter/material.dart';
import 'package:hng_stage_two/features/edit/widgets/form_field.dart';

//! Edit contact widget...
Widget contactsEditField({
  TextEditingController? phoneNumberController,
  TextEditingController? slackController,
  TextEditingController? githubController,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Contacts',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black54, endIndent: 50),
      const SizedBox(height: 20),
      Row(
        children: [
          const Icon(Icons.phone),
          const SizedBox(width: 15),
          Expanded(child: numberFormField(controller: phoneNumberController)),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          const Text(
            'Slack',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 15),
          Expanded(child: textFormField(controller: slackController)),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          const Text(
            'Github',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 15),
          Expanded(child: textFormField(controller: githubController)),
        ],
      ),
    ],
  );
}

//! Edit About Me widget...
Widget aboutMeEditField({TextEditingController? controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'About Me',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black54, endIndent: 50),
      const SizedBox(height: 20),
      aboutMeFormfield(controller: controller)
    ],
  );
}

//! Edit Skills Widget
Widget skillEditField({TextEditingController? controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Skills',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black54, endIndent: 50),
      const SizedBox(height: 20),
      textFormField(controller: controller)
    ],
  );
}

//! Edit Experience Widget
Widget experienceEditField({TextEditingController? controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Experience',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      const Divider(color: Colors.black54, endIndent: 50),
      const SizedBox(height: 20),
      textFormField(controller: controller)
    ],
  );
}
