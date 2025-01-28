class TPricingCalculator{

  /// Calculate Price Based on tax and shipping
  static double calculatePrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate shipping cost
  static String calculateShippingCost(String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }
  /// Calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    // Lookup the tax rate for the given location from a tax rate database pr API
    // Return the appropiate tax rate
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location){
    // Lookup the shipping cost for the given location from a shipping cost database pr API
    // Return the appropiate shipping cost
    return 5.0; // Example shipping cost of $5
  }

}