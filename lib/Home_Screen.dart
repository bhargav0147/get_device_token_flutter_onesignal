// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String token = 'Id';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Get Device Token',
          style: TextStyle(
              letterSpacing: 1,
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () async {
                  var deviceState = await OneSignal.User;
                  setState(() {
                    token = deviceState.pushSubscription.token!;
                  });
                },
                child: const Text('Get Token',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500))),
            const SizedBox(height: 20),
            Text(
              token,
              style: const TextStyle(
                  letterSpacing: 1,
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
