import 'package:flutter/material.dart';

class BestSellerContainer extends StatefulWidget {
  const BestSellerContainer({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<BestSellerContainer> createState() => _BestSellerContainerState();
}

class _BestSellerContainerState extends State<BestSellerContainer> with TickerProviderStateMixin{
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
   _animation = Tween(begin: 1.0, end: 1.2).animate(_controller);
   _controller..drive(CurveTween(curve: Curves.easeInOutCubic))..forward().whenComplete(() => _controller.reverse());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
        child: Container(
        height: 70,
        decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Text(widget.text),
      ),
       builder:(context, child) {
        debugPrint(_animation.value.toString());
       return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
    );
  }
}