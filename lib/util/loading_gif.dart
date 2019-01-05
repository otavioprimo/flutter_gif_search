import 'package:flutter/material.dart';

import 'package:progress_indicators/progress_indicators.dart';

class LoadingGif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HeartbeatProgressIndicator(
      child: Icon(
        Icons.gif,
        size: 25.0,
        color: Colors.white,
      ),
    );
  }
}
