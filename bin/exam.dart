//a class for add details
class Fruit {
  String name;
  String color;
  double price;
  // initialize the map
  late Map<String, dynamic> details;

  //construct add the value to map
  Fruit(this.name, this.color, this.price) {
    details = {"Name": name, "Color": color, "Price": price};
  }

  //display the details about fruit
  void displayFruitDetails() {
    print(details);
  }
}

//display the fruit details before apply discount
void displayFruitDetails(List<Fruit> fruits) {
  for (var fruit in fruits) {
    fruit.displayFruitDetails();
  }
}

//apply the discount
void applyPriceDiscount(List<Fruit> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    fruit.price *= (1 - discountPercentage / 100);
    fruit.details['Price']=fruit.price;
  }
}

void main() {
  //make list and object for class
  var fruits = [
    Fruit('Apple', 'Red', 2.5),
    Fruit('Banana', 'Yellow', 1.0),
    Fruit('Grapes', 'Purple', 3.0),
  ];

  //print the fruit details before apply discount
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  //apply discount
  applyPriceDiscount(fruits, 10);

  //print the fruit details after apply discount
  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}
