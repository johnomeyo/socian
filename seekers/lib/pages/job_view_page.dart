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
              SizedBox(
                height: size.height * 0.35,
                child: const Center(
                  child: Text('Map Image Placeholder'),
                ),
              ),
              const SizedBox(height: 16),
              
              // Job Details Section
              const JobInfoSection(),
              const SizedBox(height: 20),
              
              // Job Payment Details Section
              const JobPaymentDetails(),
              const SizedBox(height: 20),
              
              // Start Shift Button
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.timelapse),
                  label: const Text("START SHIFT"),
                ),
              ),
              const SizedBox(height: 20),
              
              // Job Description Section
              const JobDescriptionSection(),
              const SizedBox(height: 20),
              
              // Bottom Action Buttons
              const BottomActionButtons(),
              const SizedBox(height: 8),
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
    return const InfoCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Arriving in 4 mins',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('2 Km',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.w600)),
            ],
          ),
          SizedBox(height: 8),
          JobIconsRow(),
        ],
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWithText(
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/e6a8/e58a/33b5ab9278017f8c6e6050f415bf8792?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ebL2NKpkuTV9546Sv9zzqkN0o1~CBXMvfFsR91BXafKZjEAk5CAFG0jJOC4-Ua8bNODe5HCMXgfAVxArfZzpE1vWVYYfN0APrUA0WAYxh1nlJXrK9Q7vAOpN-PcjLhOV2OCHDUsgJuJHGgahpyR102Wu2Nh2tC4qLo5dv-k71BHCAKAIylL0KNB~0XVW55vZnlacKK2M6tTu73MMvogskQFjeGhmmIAU53Szo8EiyQOWgwwjbcaBAAoUdxjjKmaC8lX-Rh5K~4v14JILA~B4mkvpfXc2mYlpNBHdGgK9wMsH~7i-N6a7PIWVWnKQpRl4ojVGg--RYdQJ59rw26rWlg__",
          label: "Java",
        ),
        IconWithText(icon: Icons.chat_bubble, label: 'Chat'),
        IconWithText(icon: Icons.shield_outlined, label: 'Safety'),
      ],
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData? icon;
  final String? imageUrl;
  final String label;

  const IconWithText({
    super.key,
    this.icon,
    this.imageUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[300],
          backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
          child: icon != null
              ? Icon(icon, color: Colors.purple, size: 24)
              : null,
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }
}

// Job payment and time details
class JobPaymentDetails extends StatelessWidget {
  const JobPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      child: Column(
        children: [
          JobDetailRow(label: 'Payment per hour', value: 'ksh 300'),
          SizedBox(height: 12),
          JobDetailRow(label: 'Total working hours', value: 'Time: 4 Hrs'),
          SizedBox(height: 12),
          JobDetailRow(label: 'Payment via', value: 'MPESA'),
          SizedBox(height: 12),
          Divider(),
          SizedBox(height: 12),
          JobDetailRow(label: 'Estimated Earnings', value: 'ksh 1500'),
        ],
      ),
    );
  }
}

// Reusable JobDetailRow Widget
class JobDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const JobDetailRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 17)),
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
    return  InfoCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Job Description',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.',
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 8),
          FilledButton.tonal(
            onPressed: () {},
            child: const Text("Read more"),
          ),
        ],
      ),
    );
  }
}

// Bottom action buttons: Share work details and Contact worker
class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      child: Column(
        children: [
          ActionButton(text: 'Share work details', icon: Icons.file_upload_outlined),
          ActionButton(text: 'Contact worker', icon: Icons.call),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(text),
    );
  }
}

// General Card container for padding and styling
class InfoCard extends StatelessWidget {
  final Widget child;

  const InfoCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}
