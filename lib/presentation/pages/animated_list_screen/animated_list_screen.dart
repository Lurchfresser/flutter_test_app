import 'package:flutter/material.dart';
import 'package:flutter_test_app/presentation/pages/animated_list_screen/widgets/best_seller_container.dart';
import 'package:routemaster/routemaster.dart';

class AnimatedListScreen extends StatelessWidget {
  const AnimatedListScreen({super.key});

  static const path = '/test-animation/animated-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Animated List"),
          leading: FloatingActionButton(
            onPressed: () => Routemaster.of(context).push('/'),
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          )),
      body: Center(
        child: SizedBox(
          width: 70,
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return BestSellerContainer(text: "$index");
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
    );
  }
}
