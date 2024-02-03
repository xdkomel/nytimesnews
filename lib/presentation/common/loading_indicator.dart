import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: Constants.purplePrimary,
    );
  }
}
