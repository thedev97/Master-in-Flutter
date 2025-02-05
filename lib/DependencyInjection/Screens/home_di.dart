import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/DependencyInjection/app_service.dart';
import 'package:flutter_interview_ques/DependencyInjection/injection_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            "Home Screen",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
          )),
      body: Padding(
        padding: const EdgeInsets.all(55.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "Singleton Date",
              color: Colors.blue,
              onPressed: () {
               /* String currentDate = locator<AppService>().execute();
                debugPrint('Current Date $currentDate');
                showSnackBar(currentDate, context);*/
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: "Lazy Singleton Date",
              color: Colors.green,
              onPressed: () {
                /*String currentDate = locator<AppService>().execute();
                debugPrint('Current Date $currentDate');
                showSnackBar(currentDate, context);*/
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: "Factory Date",
              color: Colors.red,
              onPressed: () {
                String currentDate = locator<AppService>().execute();
                debugPrint('Current Date $currentDate');
                showSnackBar(currentDate, context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        content: Text(
          message,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
