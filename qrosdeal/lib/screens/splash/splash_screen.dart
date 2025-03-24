import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:qrosdeal/repositories/app_data_repository.dart';
import 'package:qrosdeal/screens/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AppDataRepository appDataRepository = GetIt.instance.get();

  @override
  void initState() {
    super.initState();
    _initLogin();
  }

  Future<void> _initLogin() async {
    var accessToken = appDataRepository.accessToken;
    if (accessToken == null || accessToken.isEmpty) {
      Future(() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    } else {
      Future(() {
        if (mounted) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const LoginScreen(hasAccessToken: true)));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox.shrink(),
    );
  }
}
