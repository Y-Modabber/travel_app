class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;

  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.discription,
    required this.price,
  });
}

List<TravelModel> travelList = [
  TravelModel(
      name: "New York",
      location: "US- New York",
      image: "assets/images/newyork.jpg",
      distance: "7",
      temp: "30",
      rating: "5",
      discription:
          "discriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscription",
      price: "3000"),
  TravelModel(
      name: "Tehran",
      location: "Iran-Tehran",
      image: "assets/images/tehran.jpg",
      distance: "10",
      temp: "30",
      rating: "8",
      discription:
          "discriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscription",
      price: "4000"),
  TravelModel(
      name: "Paris",
      location: "france-Paris",
      image: "assets/images/paris.jpg",
      distance: "4",
      temp: "28",
      rating: "6",
      discription:
          "discriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscription",
      price: "3500"),
  TravelModel(
      name: "Rome",
      location: "Italy-Rome",
      image: "assets/images/rom.jpg",
      distance: "11",
      temp: "31",
      rating: "7",
      discription:
          "discriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscription",
      price: "2500"),
];
