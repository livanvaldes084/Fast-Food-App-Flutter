class HamburgerModel{
  String title;
  String picture;
  String description;
  double price;
  String currency;
  HamburgerModel({this.title, this.picture, this.description,this.price, this.currency});
}

List<HamburgerModel> hamburgerItems = [
  HamburgerModel(title:"Neapolitan Burger", picture:"assets/img/1_hamburger.png", description: 'Neapolitan is the original pizza. This delicious pie dates all the way back to 18th century in Naples, Italy. ', price: 5.00, currency: 'USD'),
  HamburgerModel(title:"Chicago Pizza", picture:"assets/img/2_hamburger.png", description: 'Chicago pizza, also commonly referred to as deep-dish pizza, gets its name from the city it was invented in.', price: 5.00, currency: 'USD'),
  HamburgerModel(title:"New York-Style Pizza", picture:"assets/img/3_hamburger.png", description: 'With its characteristic large, foldable slices and crispy outer crust, New York-style pizza is one of America’s most famous regional pizza types.', price: 5.00, currency: 'USD'),
  HamburgerModel(title:"Sicilian Pizza", picture:"assets/img/4_hamburger.png", description: 'Sicilian pizza, also known as "sfincione," provides a thick cut of pizza with pillowy dough, a crunchy crust, and robust tomato sauce.', price: 5.00, currency: 'USD'),
  HamburgerModel(title:"Greek Pizza", picture:"assets/img/5_hamburger.png", description: 'Greek pizza was created by Greek immigrants who came to America and were introduced to Italian pizza.', price: 5.00, currency: 'USD'),
];