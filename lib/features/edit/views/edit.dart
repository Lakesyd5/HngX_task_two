import 'package:flutter/material.dart';

import 'package:hng_stage_two/commons/models/user_model.dart';
import 'package:hng_stage_two/features/edit/widgets/data_edit_field.dart';

class EditPage extends StatefulWidget {
  final User? user;
  final updateUserDataCallback;
  const EditPage({super.key, this.user, this.updateUserDataCallback});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  // Create TextEditingController for each field
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController slackController = TextEditingController();
  final TextEditingController githubController = TextEditingController();
  final TextEditingController aboutMeController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the controllers with the user data
    phoneNumberController.text = widget.user!.phoneNumber ?? '';
    slackController.text = widget.user!.slack ?? '';
    githubController.text = widget.user!.github ?? '';
    aboutMeController.text = widget.user!.aboutMe ?? '';
    skillsController.text = widget.user!.skills!.join(','); // Convert skills list to a comma-separated string
    experienceController.text = widget.user!.experience!.map((exp) {
      return "${exp.jobTitle}, ${exp.organization}, ${exp.date}";
    }).join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit')),
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Update the user object with the new values from the text fields
          widget.user!.phoneNumber = phoneNumberController.text;
          widget.user!.slack = slackController.text;
          widget.user!.github = githubController.text;
          widget.user!.aboutMe = aboutMeController.text;
          widget.user!.skills = skillsController.text.split(',');

          widget.updateUserDataCallback(widget.user);

          // You can navigate back to the previous screen or perform any other actions here
          Navigator.of(context).pop();
        },
        backgroundColor: Colors.green.shade400,
        child: const Icon(Icons.done_all_rounded),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            // Edit Contact
            contactsEditField(
              phoneNumberController: phoneNumberController,
              slackController: slackController,
              githubController: githubController,
            ),
            const SizedBox(height: 25),

            // Edit About Me
            aboutMeEditField(controller: aboutMeController),
            const SizedBox(height: 25),

            // Edit Skills
            skillEditField(controller: skillsController),
            const SizedBox(height: 25),

            // Experience
            experienceEditField(controller: experienceController)
          ],
        ),
      ),
    );
  }
}
