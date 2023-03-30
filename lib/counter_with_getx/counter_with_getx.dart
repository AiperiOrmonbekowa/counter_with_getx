import 'package:counter_with_getx/counter_with_getx/second_with_getx_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class CounterWithGetxPage extends StatelessWidget {
  CounterWithGetxPage({
    Key? key,
  }) : super(key: key);
  final controller = Get.put(CounterContoller());

  @override
  Widget build(BuildContext context) {
    print('build ishtedi');
    print(controller.count.value);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterWithGetxPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondWithGetxPage(),
                  ),
                );
              },
              child: const Text('Do to First Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
