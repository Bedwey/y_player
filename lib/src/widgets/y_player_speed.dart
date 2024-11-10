import 'package:flutter/material.dart';

class YPlayerSpeed extends StatelessWidget {
  const YPlayerSpeed({
    super.key,
    required this.currentSpeed,
    required this.changePlaybackSpeed,
  });

  final double currentSpeed;
  final void Function(double) changePlaybackSpeed;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<double>(
      initialValue: currentSpeed,
      tooltip: 'Playback speed',
      onSelected: changePlaybackSpeed,
      itemBuilder: (context) => [
        for (final speed in [0.25, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0])
          PopupMenuItem(
            value: speed,
            child: Text('${speed}x'),
          ),
      ],
      child: const Icon(
        Icons.speed,
        size: 24,
        color: Colors.white,
      ),
    );
  }
}
