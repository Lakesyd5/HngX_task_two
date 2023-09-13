import 'package:hng_stage_two/commons/models/experience.dart';
import 'package:hng_stage_two/commons/models/user_model.dart';


List <User> dummydata = [
  User(
    phoneNumber: '07018434222',
    github: 'https://github.com/Lakesyd5',
    slack: 'Adeleke Ojedokun',
    aboutMe: 'Skilled and passionate Flutter developer with expertise in Dart and the Flutter framework. Excels in creating responsive UI designs, implementing features, and optimizing app performance. Effective communicator, collaborative team player, and logical problem solver. Committed to continuous learning and contributing to impactful Flutter projects.',
    skills: [
      'Html & Css',
      'Javascript',
      'Firebase',
      'NodeJS',
      'Dart',
      'Flutter',
      'Php'
    ],
    experience: [
      Experience(
        jobTitle: 'JavaScript Developer',
        organization: 'Earned Badge',
        date: '04/2022 - 09/2022'
      ),
      Experience(
        jobTitle: 'Flutter Developer',
        organization: 'SwiftPay Fintech',
        date: '10/2022 - 04/2023'
      )
    ]
  )
];