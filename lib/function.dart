import 'package:get/get.dart';

class CurrencyConverter {
  static RxString results = ''.obs;
  static RxDouble exchangeRate = 330.37.obs;
  //static RxString slrController = 'Enter Value'.obs;

  static void convertToLKR(String usdValue) {
    double result = double.parse(usdValue) * exchangeRate.value;
    results.value = result.toStringAsFixed(2);
    //print(results);
    //slrController = results;
  }

  static void convertToUSD(String slrValue) {
    double result = double.parse(slrValue) / exchangeRate.value;
    results.value = result.toStringAsFixed(2);
    //print(results);
    //slrController = results;
  }
}
