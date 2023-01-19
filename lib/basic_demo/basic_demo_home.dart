import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Controller extends GetxController {
  var count = 0.obs;

  increment() => count++;
}

class BasicDemoHome extends StatelessWidget {
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text('Clicks :: ${c.count}'))),
      body: Center(
          child: ElevatedButton(
            child: const Text('Go to Other'),
            onPressed: () {
              Get.to(Other());
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Other extends StatelessWidget {
  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
