import 'package:flutter_test/flutter_test.dart';
import 'package:money_plaza/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PersonalInfoViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
