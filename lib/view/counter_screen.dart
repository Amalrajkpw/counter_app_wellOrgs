import 'package:counter_app_wellorgs/view/widget/action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        title: const Text('Counter App WellOrgs'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Text(
                'Counter: ${counterController.count}',
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(
                    onPressed: counterController.increment,
                    icon: const Icon(Icons.add)),
                const SizedBox(width: 20),
                ActionButton(
                    onPressed: counterController.decrement,
                    icon: const Icon(Icons.remove)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
