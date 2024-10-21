import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';

class AddSkillsPage extends StatefulWidget {
  const AddSkillsPage({super.key});

  @override
  AddSkillsPageState createState() => AddSkillsPageState();
}

class AddSkillsPageState extends State<AddSkillsPage> {
  final List<String> _allSkills = [
    'Waiter/ Waitress',
    'Fine Dining Waiter',
    'Banquet Waiter',
    'Barista',
    'Cocktail Waiter',
    'Room Service Waiter',
    'Fast Food Counter Server',
    'Buffet Waiter',
    'Wine Steward',
    'Catering Waiter',
  ];

  var _filteredSkills = <String>[];
  final List<String> _selectedSkills = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredSkills = _allSkills; // Initially show all skills
    _searchController.addListener(() {
      _filterSkills();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterSkills() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredSkills = _allSkills.where((skill) {
        return skill.toLowerCase().contains(query);
      }).toList();
    });
  }

  void _toggleSkillSelection(String skill) {
    setState(() {
      if (_selectedSkills.contains(skill)) {
        _selectedSkills.remove(skill);
      } else if (_selectedSkills.length < 3) {
        _selectedSkills.add(skill);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Your Skill',
              style: theme.textTheme.headlineMedium
                  ?.copyWith(color: Colors.purple),
            ),
            const SizedBox(height: 20),
            _buildSearchBar(),
            const SizedBox(height: 20),
            Expanded(child: _buildSkillList()),
            const SizedBox(height: 20),
            _buildSkillCountIndicator(),
            const SizedBox(height: 20),
            CustomButton(text: "SAVE", onPressed: () {})
          ],
        ),
      ),
    );
  }

  // Search bar widget
  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: _searchController,
        style:const TextStyle(
          color: Colors.grey,
        ),
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: Colors.purple),
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, color: Colors.grey),
                    onPressed: () {
                      _searchController.clear();
                    },
                  )
                : null,
            hintText: 'Search Skill',
            contentPadding: const EdgeInsets.only(top: 15),
            border: InputBorder.none),
      ),
    );
  }

  // Skill list widget
  Widget _buildSkillList() {
    return ListView.builder(
      itemCount: _filteredSkills.length,
      itemBuilder: (context, index) {
        final skill = _filteredSkills[index];
        final isSelected = _selectedSkills.contains(skill);
        return ListTile(
          title: Text(skill),
          textColor: isSelected ? Colors.purple : Colors.black,
          onTap: () {
            _toggleSkillSelection(skill);
          },
        );
      },
    );
  }

  // Skill count indicator widget
  Widget _buildSkillCountIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'CHOOSE 3 SKILLS',
          style: TextStyle(color: Color(0xFFE1554B)),
        ),
        const SizedBox(width: 50),
        Text(
          '${_selectedSkills.length}/3',
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
