import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:furniture_shop/data/local/onboarding_data/onboarding_data.dart';
import 'package:furniture_shop/domain/models/onboarding/onboarding_models.dart';

class OnBoardingProvider extends ChangeNotifier {
  final List<OnboardModel> _onBoardData = onboardingData;

  UnmodifiableListView<OnboardModel> get onBoardData =>
      UnmodifiableListView(_onBoardData);
}
