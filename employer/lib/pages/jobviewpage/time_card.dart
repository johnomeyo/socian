import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  final int hours;
  final int minutes;
  final String startTime;
  final String endTime;

  const TimeCard({
    super.key,
    required this.hours,
    required this.minutes,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Display Total Time
            Text(
              '$hours${hours > 1 ? 'h' : 'h'} ${minutes.toString().padLeft(2, '0')}m',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Total Time Label
            const Text(
              'Total Time',
              style: TextStyle(
                fontSize: 16,
                color: Colors.purple,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20.0),
            // Divider line
            const Divider(thickness: 1),
            const SizedBox(height: 20.0),
            // Start and End Time Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Start Time Column
                _TimeDetailColumn(
                  label: 'Start Time',
                  time: startTime,
                ),
                // Vertical Divider
                Container(
                  width: 1,
                  height: 80,
                  color: Colors.grey[400],
                ),
                // End Time Column
                _TimeDetailColumn(
                  label: 'End Time',
                  time: endTime,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TimeDetailColumn extends StatelessWidget {
  final String label;
  final String time;

  const _TimeDetailColumn({
    super.key,
    required this.label,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.purple,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          time,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
