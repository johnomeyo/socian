import 'package:flutter/material.dart';

class ShiftCard extends StatelessWidget {
  final int hours;
  final int minutes;
  final int endingInMinutes;
  final VoidCallback onEndShift;

  const ShiftCard({
    super.key,
    required this.hours,
    required this.minutes,
    required this.endingInMinutes,
    required this.onEndShift,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Time Display
              Text(
                '$hours${hours > 1 ? 'h' : 'h'} $minutes${minutes > 1 ? 'm' : 'm'}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 18.0),
              // Ending Text
              Text(
                'On Shift, ending in $endingInMinutes min',
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 26.0),
              // End Shift Button
              ElevatedButton(
                onPressed: onEndShift,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  child: Text('END SHIFT', style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
