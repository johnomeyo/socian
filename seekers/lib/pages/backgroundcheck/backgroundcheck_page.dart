import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';

class BackgroundCheckPage extends StatefulWidget {
  const BackgroundCheckPage({super.key});

  @override
  BackgroundCheckPageState createState() => BackgroundCheckPageState();
}

class BackgroundCheckPageState extends State<BackgroundCheckPage> {
  String? _criminalHistory;
  String? _medicalCondition;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // leading: const Icon(Icons.arrow_back, color: Colors.purple),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Background Check',
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle('Upload profile pic and your ID'),
            const SizedBox(height: 5),
            _buildSubtitle('Add your profile pic and ID to Get a job'),
            const SizedBox(height: 20),
            _buildUploadButton('Upload Profile Picture'),
            const SizedBox(height: 20),
            _buildUploadButton('Upload a picture of your ID (Front side)'),
            const SizedBox(height: 20),
            _buildUploadButton('Upload a picture of your ID (Back side)'),
            const SizedBox(height: 30),
            _buildQuestion('Do you have any criminal history?', theme),
            const SizedBox(height: 10),
            _buildRadioOptions('criminalHistory', _criminalHistory),
            const SizedBox(height: 30),
            _buildQuestion('Any medical condition?', theme),
            const SizedBox(height: 10),
            _buildRadioOptions('medicalCondition', _medicalCondition),
            const SizedBox(height: 30),
            _buildWarningText(),
            const SizedBox(height: 20),
            CustomButton(text: "SUBMIT", onPressed: () {}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Section title widget
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  // Subtitle widget
  Widget _buildSubtitle(String subtitle) {
    return Text(
      subtitle,
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );
  }

  // Upload button widget with dashed border
  Widget _buildUploadButton(String label) {
    return DottedBorder(
      strokeWidth: 1,
      color: Colors.grey,
      borderType: BorderType.RRect,
      radius:const Radius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.upload_file, color: Colors.grey),
            const SizedBox(width: 10),
            Text(
              label,
            ),
          ],
        ),
      ),
    );
  }

  // Question widget for radio options
  Widget _buildQuestion(String question, ThemeData theme) {
    return Text(
      question,
      style: theme.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }

  // Radio buttons widget (Toggles between 'Yes' and 'No')
  Widget _buildRadioOptions(String groupName, String? currentValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildRadioOption(groupName, 'Yes', currentValue),
        const SizedBox(width: 30),
        _buildRadioOption(groupName, 'No', currentValue),
      ],
    );
  }

  // Individual radio option widget
  Widget _buildRadioOption(
      String groupName, String label, String? currentValue) {
    return Row(
      children: [
        Radio<String>(
          value: label,
          groupValue: currentValue,
          onChanged: (String? value) {
            setState(() {
              if (groupName == 'criminalHistory') {
                _criminalHistory = value;
              } else if (groupName == 'medicalCondition') {
                _medicalCondition = value;
              }
            });
          },
          activeColor: Colors.purple,
        ),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }

  // Warning text widget
  Widget _buildWarningText() {
    return const Center(
      child: Text(
        'ANY MISINFORMATION GIVEN KNOWINGLY WILL BE PUNISHABLE BY LAW (STRICTLY FOLLOWED)!!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
