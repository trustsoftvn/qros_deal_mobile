import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:qrosdeal/blocs/common/common_bloc.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/repositories/app_data_repository.dart';
import 'package:qrosdeal/screens/login/login_screen.dart';
import 'package:qrosdeal/screens/splash/splash_screen.dart';

Future<void> main() async {
  await loadEnv();
  await setupDependencies();
  runApp(const MyApp());
}

Future<void> setupDependencies() async {
  final getIt = GetIt.instance;

  getIt.registerSingleton<CommonBloc>(CommonBloc());

  getIt.registerSingleton<AppDataRepository>(AppDataRepository());

  await GetIt.instance.get<AppDataRepository>().loadData();
}

Future<void> loadEnv() async {
  const String env = String.fromEnvironment('env', defaultValue: 'staging');
  await dotenv.load(fileName: ".env.$env");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<CommonBloc>(),
      child: MaterialApp(
        title: 'Qrosdeal',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
          useMaterial3: true,
          fontFamily: 'Lato',
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
