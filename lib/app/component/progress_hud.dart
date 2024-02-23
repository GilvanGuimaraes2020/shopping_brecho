import 'dart:math' as math;

import 'package:brecho_utilities/brecho_utilities.dart';
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
  final Color color;
  final BoxShape shape;
  final double radius;
  final double spacing;
  final Duration duration;
  final bool isCentered;

  const BrechoLoading({
    super.key,
    this.color = BrechoColors.monoWhite,
    this.shape = BoxShape.circle,
    this.radius = 8,
    this.spacing = 3.0,
    this.duration = const Duration(milliseconds: 1200),
    this.isCentered = true,
  });

  @override
  BrechoLoadingState createState() => BrechoLoadingState();
}

class BrechoLoadingState extends State<BrechoLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..addListener(() {
        if (mounted) setState(() {});
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Widget loadingWidget = Wrap(
      spacing: widget.spacing,
      children: List.generate(
        3,
        (i) {
          return Opacity(
            opacity: DelayTween(begin: 1, end: 0.3, delay: (5 + i) / 10)
                .animate(_controller)
                .value,
            child: _LoadingItem(
              color: widget.color,
              shape: widget.shape,
              radius: widget.radius,
            ),
          );
        },
      ),
    );

    return widget.isCentered ? Center(child: loadingWidget) : loadingWidget;
  }
}

class DelayTween extends Tween<double> {
  DelayTween({super.begin, super.end, required this.delay});

  final double delay;

  @override
  double lerp(double t) =>
      super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}

class _LoadingItem extends StatelessWidget {
  final Color color;
  final BoxShape shape;
  final double radius;

  const _LoadingItem({
    required this.color,
    required this.shape,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromRadius(radius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: shape,
        ),
      ),
    );
  }
}
