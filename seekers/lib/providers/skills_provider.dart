import 'package:flutter/material.dart';

class SkillProvider with ChangeNotifier {
  // The list of selected skills
  List<String> _selectedSkills = [];

  // Getter for selected skills
  List<String> get selectedSkills => _selectedSkills;

  // Method to save the selected skills
  void saveSelectedSkills(List<String> selectedSkills) {
    _selectedSkills = selectedSkills;
    notifyListeners(); // Notify listeners when the state changes
  }
}
