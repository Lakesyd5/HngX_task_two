import 'package:flutter/material.dart';
import 'package:hng_stage_two/commons/models/user_model.dart';
import 'package:hng_stage_two/commons/services/dummy_data.dart';
import 'package:hng_stage_two/features/edit/views/edit.dart';
import 'package:hng_stage_two/features/home/widgets/text_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  User data = dummydata[0];

  void updateUserData(User newUser) {
    setState(() {
      // Update the user data in the Home widget
      data = newUser;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adeleke Ojedokun',
          style: TextStyle(fontSize: 23),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EditPage(
                user: data,
                updateUserDataCallback: updateUserData,
              )));
        },
        backgroundColor: Colors.black54,
        child: const Icon(Icons.edit_outlined),
      ),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contacts...
                contacts(
                    phoneNumber: data.phoneNumber,
                    githubLink: data.github,
                    slackName: data.slack),
                const SizedBox(height: 40),

                // About Me...
                aboutMe(aboutContent: data.aboutMe),
                const SizedBox(height: 40),

                // Skills
                skill(
                  skillTitle: data.skills,
                ),
                const SizedBox(height: 40),

                // Experience
                experienceWidget(
                  experiences: data.experience,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
