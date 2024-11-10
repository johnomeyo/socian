import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostJobPage extends StatefulWidget {
  final String title;

  const PostJobPage({super.key, required this.title});
  @override
  PostJobPageState createState() => PostJobPageState();
}

class PostJobPageState extends State<PostJobPage> {
  // Controllers for text fields
  final skillController = TextEditingController();
  final numberOfSociansController = TextEditingController();
  final specialtyController = TextEditingController();
  final hoursOfWorkController = TextEditingController();
  final amountPayController = TextEditingController();
  final locationController = TextEditingController();
  final jobDescriptionController = TextEditingController();
  final requirementsController = TextEditingController();

  // Date and Time variables
  DateTime? startDate;
  DateTime? endDate;
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  // Dropdown options
  List<String> skills = [
    'Water',
    'Chef',
    'Hotel Receptionist',
    'Counter Waiter'
  ];
  List<String> hours = ['1', '2', '3', '4', '5'];
  List<String> numberOfSocians = ['1', '2', '3', '4', '5'];

  // Method to select date
  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != startDate) {
      setState(() {
        if (isStartDate) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

  // Method to select time
  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        if (isStartTime) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }

  @override
  void dispose() {
    // Dispose controllers when no longer needed
    skillController.dispose();
    numberOfSociansController.dispose();
    specialtyController.dispose();
    hoursOfWorkController.dispose();
    amountPayController.dispose();
    locationController.dispose();
    jobDescriptionController.dispose();
    requirementsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        actions: [
          TextButton(
            onPressed: () {
              // Submit form action
            },
            child: const Text(
              "Post",
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Post a ${widget.title} Job and Get Socians Instantly",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Replace with your image URL
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Java House",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple)),
                    Text("Nairobi, KE",
                        style: TextStyle(color: Colors.deepPurple)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildFieldHeader("Skill*"),
            _buildDropdownField("select", skillController, skills),
            _buildFieldHeader("Number of Socians"),
            _buildDropdownField("Write the number of workers you want to hire",
                numberOfSociansController, numberOfSocians),
            _buildFieldHeader("Speciality"),
            _buildTextField("write the specialty you want the socian to have",
                specialtyController),
            _buildFieldHeader("Hour of work"),
            _buildDropdownField("Select hours", hoursOfWorkController, hours),
            _buildFieldHeader("Amount pay/Hr"),
            _buildTextField(
                "Write the amount you'll pay per hour", amountPayController),
            _buildFieldHeader("Day of Work"),
            _buildDatePickerRow(),
            const SizedBox(
              height: 10,
            ),
            _buildFieldHeader("Time of Work"),
            _buildTimePickerRow(),
            _buildFieldHeader("Job Description"),
            _buildTextField("write the dscription of the job you're posting",
                jobDescriptionController,
                maxLines: 3),
            _buildFieldHeader("Requirements"),
            _buildTextField("write the requirements of the job you're posting",
                requirementsController,
                maxLines: 3),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField(
      String label, TextEditingController controller, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          hintText: label,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        value: controller.text.isEmpty ? null : controller.text,
        onChanged: (newValue) {
          setState(() {
            controller.text = newValue!;
          });
        },
        items: items.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDatePickerRow() {
    return Row(
      children: [
        Expanded(
          child: _buildDatePicker(
              "From Date", startDate, (context) => _selectDate(context, true)),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildDatePicker(
              "To Date", endDate, (context) => _selectDate(context, false)),
        ),
      ],
    );
  }

  Widget _buildDatePicker(
      String label, DateTime? date, Function(BuildContext) onTap) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: AbsorbPointer(
        child: TextField(
          decoration: InputDecoration(
            // labelText: label,
            filled: true,
            hintText: label,
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon: const Icon(
              Icons.calendar_month,
              color: Colors.purple,
            ),
            fillColor: Colors.white,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          controller: TextEditingController(
            text: date != null ? DateFormat('yyyy-MM-dd').format(date) : '',
          ),
        ),
      ),
    );
  }

  Widget _buildTimePickerRow() {
    return Row(
      children: [
        Expanded(
          child: _buildTimePicker(
              "Start Time", startTime, (context) => _selectTime(context, true)),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildTimePicker(
              "End Time", endTime, (context) => _selectTime(context, false)),
        ),
      ],
    );
  }

  Widget _buildTimePicker(
      String label, TimeOfDay? time, Function(BuildContext) onTap) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: AbsorbPointer(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.timer_outlined,
              color: Colors.purple,
            ),
            hintText: label,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          controller: TextEditingController(
            text: time != null ? time.format(context) : '',
          ),
        ),
      ),
    );
  }
}

Widget _buildFieldHeader(String heading) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Text(
      heading,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );
}
