class CurrencyService {
  getSymbol(currency){
    if(currency == 'USD')
      return "USD";
    if(currency == 'UYU')
      return "UYU";
  }
  getCurrency(currency){
    if(currency == 'USD')
      return "United States Dollar";
    if(currency == 'UYU')
      return "Peso Uruguayo";
  }
}