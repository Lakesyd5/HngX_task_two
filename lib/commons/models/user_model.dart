class User {
  User({
    this.phoneNumber,
    this.slack,
    this.github,
    this.aboutMe,
    this.skills,
    this.experience
  });
  
  num? phoneNumber;
  String? slack;
  String? github;
  String? aboutMe;
  List? skills;
  List? experience;
}