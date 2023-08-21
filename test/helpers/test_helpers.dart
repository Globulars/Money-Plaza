import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:money_plaza/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:money_plaza/services/auth_service.dart';
import 'package:money_plaza/services/toaster_service.dart';
import 'package:money_plaza/services/mortgage_service.dart';
import 'package:money_plaza/services/credit_card_service.dart';
import 'package:money_plaza/services/loan_card_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<AuthService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ToasterService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<MortgageService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<CreditCardService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<LoanCardService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterAuthService();
  getAndRegisterToasterService();
  getAndRegisterMortgageService();
  getAndRegisterCreditCardService();
  getAndRegisterLoanCardService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockAuthService getAndRegisterAuthService() {
  _removeRegistrationIfExists<AuthService>();
  final service = MockAuthService();
  locator.registerSingleton<AuthService>(service);
  return service;
}

MockToasterService getAndRegisterToasterService() {
  _removeRegistrationIfExists<ToasterService>();
  final service = MockToasterService();
  locator.registerSingleton<ToasterService>(service);
  return service;
}

MockMortgageService getAndRegisterMortgageService() {
  _removeRegistrationIfExists<MortgageService>();
  final service = MockMortgageService();
  locator.registerSingleton<MortgageService>(service);
  return service;
}

MockCreditCardService getAndRegisterCreditCardService() {
  _removeRegistrationIfExists<CreditCardService>();
  final service = MockCreditCardService();
  locator.registerSingleton<CreditCardService>(service);
  return service;
}

MockLoanCardService getAndRegisterLoanCardService() {
  _removeRegistrationIfExists<LoanCardService>();
  final service = MockLoanCardService();
  locator.registerSingleton<LoanCardService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
