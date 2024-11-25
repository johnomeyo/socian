import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:seekers/auth/login_page.dart';
import 'package:seekers/pages/homepage/homepage.dart';
import 'package:seekers/pages/homepage/timed_homepage.dart';
import 'package:seekers/pages/profile/profile_page.dart';
import 'package:seekers/pages/walletpage/wallet_page.dart';
import 'package:seekers/providers/skills_provider.dart';
import 'package:seekers/theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 4));
  FlutterNativeSplash.remove();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SkillProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: appTheme, home:  LoginPage());
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [HomeController(), WalletPage(), ProfilePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.purple,
        // selectedItemColor: Theme.of(context).colorScheme.secondary,
        // unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        onTap: onItemTapped,
      ),
    );
  }
}

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  HomeControllerState createState() => HomeControllerState();
}

class HomeControllerState extends State<HomeController> {
  bool _isJobOfferDisplayed = false;
  Timer? _timer;
  final AudioPlayer _player = AudioPlayer();
  void onDismissAudio() async {
    //stop the audio
    await _player.stop();
    // Cancel the timer when rejecting
    // _timer?.cancel();

    // setState(() {
    //   _isJobOfferDisplayed = false;
    // });

    // Logic to handle job rejection (e.g., update backend, show message)
    print("Job has been rejected");
  }

  void showTimedHomePage() async {
    await _player.setSource(AssetSource('notification_alert.mp3'));
    await _player.play(AssetSource('notification_alert.mp3'));
    setState(() {
      _isJobOfferDisplayed = true;
    });

    // Start a timer to switch back after 30 seconds
    _timer = Timer(const Duration(seconds: 30), () {
      setState(() {
        _isJobOfferDisplayed = false;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer if the widget is disposed
    _player.dispose(); // Dispose the AudioPlayer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isJobOfferDisplayed
        ? TimedHomePage(onDismissAudio: onDismissAudio)
        : HomePage(onJobPosted: showTimedHomePage);
  }
}
