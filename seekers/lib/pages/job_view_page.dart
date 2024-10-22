import 'package:flutter/material.dart';



class ViewJobPage extends StatelessWidget {
  const ViewJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
       
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image - Placeholder for the map image
              Container(
                height: size.height * 0.35,
                color: Colors.grey[200],
                child: const Center(child: Text('Map Image Placeholder')),
              ),
              const SizedBox(height: 16),

              // Job Details Section
              const JobInfoSection(),

              const SizedBox(height: 20),

              // Job Description Section
              const JobDescriptionSection(),

              const SizedBox(height: 20),

              // Bottom Action Buttons
              const BottomActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for displaying job info like payment, time, distance
class JobInfoSection extends StatelessWidget {
  const JobInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Arriving in 4 mins', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('2 Km', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w600)),
                JobIconsRow(),
              ],
            ),
            SizedBox(height: 16),
            JobPaymentDetails(),
          ],
        ),
      ),
    );
  }
}

// Row with Java, Chat, and Safety icons
class JobIconsRow extends StatelessWidget {
  const JobIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IconWithText(icon: Icons.local_cafe, text: 'Java'),
        SizedBox(width: 10),
        IconWithText(icon: Icons.chat_bubble_outline, text: 'Chat'),
        SizedBox(width: 10),
        IconWithText(icon: Icons.shield, text: 'Safety'),
      ],
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.purple, size: 24),
        const SizedBox(height: 4),
        Text(text, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }
}

// Job payment and time details
class JobPaymentDetails extends StatelessWidget {
  const JobPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        JobDetailRow(label: 'Payment per hour', value: 'ksh 300'),
        SizedBox(height: 4),
        JobDetailRow(label: 'Total working hours', value: 'Time: 4 Hrs'),
        SizedBox(height: 4),
        JobDetailRow(label: 'Payment via', value: 'Socian Wallet'),
        SizedBox(height: 4),
        JobDetailRow(label: 'Estimated Earnings', value: 'ksh 1500'),
      ],
    );
  }
}

// Reusable JobDetailRow Widget
class JobDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const JobDetailRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.black54)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

// Job description section with a read more button
class JobDescriptionSection extends StatelessWidget {
  const JobDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Job Description', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text(
          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.',
          style: TextStyle(color: Colors.black54),
        ),
        const SizedBox(height: 8),
         ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: const Text('Read more'),
        ),
      ],
    );
  }
}

// Bottom action buttons: Share work details and Contact worker
class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionButton(text: 'Share work details', icon: Icons.share),
        ActionButton(text: 'Contact worker', icon: Icons.contact_phone),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const ActionButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 18),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
