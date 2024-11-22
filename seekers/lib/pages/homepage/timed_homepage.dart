import 'package:flutter/material.dart';
import 'package:seekers/pages/homepage/widgets/job_details_card.dart';

class TimedHomePage extends StatelessWidget {
  final VoidCallback onDismissAudio;

  const TimedHomePage({super.key, required this.onDismissAudio});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              GestureDetector(
                onTap: onDismissAudio,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.wired.com/photos/59269cd37034dc5f91bec0f1/master/pass/GoogleMapTA.jpg"),
                          fit: BoxFit.cover)),
                  height: size.height * 0.55,
                ),
              ),
              const Positioned(right: 30, top: 30, child: CountdownTimer()),
            ],
          ),
          const SizedBox(height: 20),
          JobDetailsCard(
            rejectBtnPressed: onDismissAudio,
          )
        ]),
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  CountdownTimerState createState() => CountdownTimerState();
}

class CountdownTimerState extends State<CountdownTimer>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  String get timerString {
    Duration duration = _controller.duration! * _controller.value;
    return (duration.inSeconds % 60).toString().padLeft(2, '');
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    );

    _controller.reverse(from: 1.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                value: _controller.value,
                strokeWidth: 8.0,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.purple),
                backgroundColor: Colors.purple.shade100,
              ),
            ),
            Text(
              timerString,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      },
    );
  }
}
