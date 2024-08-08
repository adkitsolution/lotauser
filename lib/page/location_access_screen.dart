import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: [
                  Icon(
                    Icons.warning,
                    color: Colors.red,
                    size: 48.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Location Access Notice',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dear Customer,'),
                    SizedBox(height: 15),
                    Text(
                      'Lota Ride uses location in the background to track the accurate pickup of users and ensure efficient services. Your location data is securely handled and used only to improve your ride experience.',
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 15),
                    Text('Thank you,'),
                    Text('Lota Ride Team'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back(result: true);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
