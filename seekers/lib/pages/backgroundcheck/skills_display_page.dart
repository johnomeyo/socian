import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/providers/skills_provider.dart';

class SkillsDisplayPage extends StatelessWidget {
  const SkillsDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the skills from the provider
    final skillProvider = Provider.of<SkillProvider>(context);
    final selectedSkills = skillProvider.selectedSkills;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Skill count and label
            Text(
              'Skill (${selectedSkills.length})',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.purple,
                  ),
            ),
            const SizedBox(height: 20),

            // Display selected skills as chips
            if (selectedSkills.isNotEmpty)
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: selectedSkills
                    .map((skill) => _buildSkillChip(skill, skillProvider))
                    .toList(),
              )
            else
              const Text('No skills selected'),

            const Spacer(),
           // "Change" button at the bottom
            CustomButton(
                text: 'CHANGE',
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }

  // Widget for creating a skill chip
  Widget _buildSkillChip(String skill, SkillProvider provider) {
    return Chip(
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical:4, horizontal: 0),
        child: Text(skill, style: const TextStyle(color: Color(0xFF9C27B0))),
      ),
      backgroundColor: const Color(0xFFF3E5F5),
      deleteIcon: const Icon(Icons.close, color: Colors.purple),
      onDeleted: () {
        provider.removeSkill(skill); // Remove skill from provider
      },
       side: BorderSide.none, 
    );
  }
}
