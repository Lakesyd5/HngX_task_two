import 'package:flutter/material.dart';
import 'package:hng_stage_two/commons/services/dummy_data.dart';
import 'package:hng_stage_two/features/edit/views/edit.dart';
import 'package:hng_stage_two/features/home/widgets/text_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final data = dummydata[0];
    // final List experiences = data.experience ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adeleke Ojedokun',
          style: TextStyle(fontSize: 23),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EditPage()));
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
                  phoneNumber: '${data.phoneNumber}',
                  githubLink: data.github,
                  slackName: data.slack
                ),
                const SizedBox(height: 40),

                // About Me...
                aboutMe(
                  aboutContent: data.aboutMe
                ),
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
