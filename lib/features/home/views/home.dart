import 'package:flutter/material.dart';
import 'package:hng_stage_two/features/home/widgets/text_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adeleke Ojedokun',
          style: TextStyle(fontSize: 23),
        ),
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
                contacts(),
                const SizedBox(height: 40),
        
                // About Me...
                aboutMe(),
                const SizedBox(height: 40),
                
                // Skills
                skill(),
                const SizedBox(height: 40),
        
                // Experience
                experience()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
