import 'dart:math' as math;

import 'package:flutter/material.dart';

class ProgressHud extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  const ProgressHud({super.key, required this.child, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        child,
        if (isLoading) ...{
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.white,
            ),
          ),
          const Center(
            child: BrechoLoading(),
          )
        }
      ],
    );
  }
}

class BrechoLoading extends StatefulWidget {
  final Duration duration;
  const BrechoLoading(
      {super.key, this.duration = const Duration(milliseconds: 1000)});

  @override
  State<BrechoLoading> createState() => _BrechoLoadingState();
}

class _BrechoLoadingState extends State<BrechoLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final onColor = Colors.black;
  final offColor = Colors.white;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      })
      ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: List.generate(3, (i) {
      return Opacity(
        opacity: TweenDouble(begin: 0, end: 1, delay: i / 10)
            .animate(_controller)
            .value,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      );
    }));
  }
}

class TweenDouble extends Tween<double> {
  final double delay;
  TweenDouble({super.begin, super.end, required this.delay});

  @override
  double lerp(double t) => super.lerp(math.sin(t - delay));

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
