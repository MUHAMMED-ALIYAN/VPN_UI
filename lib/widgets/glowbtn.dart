import 'package:flutter/material.dart';

class GlowingButton extends StatefulWidget {
  final VoidCallback? onTap;

  const GlowingButton({super.key, this.onTap});

  @override
  State<GlowingButton> createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();

    _animation1 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.7)),
    );

    _animation2 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.2, 0.9)),
    );

    _animation3 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.4, 1.0)),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildCircle(double radius, Animation<double> animation) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final scale = 1 + animation.value * 2;
        final opacity = 1.0 - animation.value;
        return Transform.scale(
          scale: scale,
          child: Container(
            width: radius * 1.5,
            height: radius * 1.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(opacity * 0.3),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildCircle(80, _animation1),
          _buildCircle(80, _animation2),
          _buildCircle(80, _animation3),
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 2, 110, 252),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.power_settings_new,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
