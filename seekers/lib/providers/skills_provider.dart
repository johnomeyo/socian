import 'package:flutter/material.dart';

class SkillProvider with ChangeNotifier {
  List<String> _selectedSkills = [];

  List<String> get selectedSkills => _selectedSkills;

  void saveSelectedSkills(List<String> skills) {
    _selectedSkills = skills;
    notifyListeners();
  }

  void removeSkill(String skill) {
    _selectedSkills.remove(skill);
    notifyListeners();
  }
}
