
// Job payment and time details
import 'package:employer/pages/jobviewpage/info_card.dart';
import 'package:employer/pages/jobviewpage/job_detail_row.dart';
import 'package:flutter/material.dart';


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
