import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities});
}

List<Activity> activities =[
  Activity(
      imageUrl: "https://images.unsplash.com/photo-1570168007204-dfb528c6958f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxhY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
      name: "St. Mark\'s Basillica",
      startTimes: ["9.00 am", "11:00 am"],
      rating: 5,
      price: 30,
      type: "Sightseeing Tour"

  ),

  Activity(
      imageUrl: "https://images.unsplash.com/photo-1596306499317-8490232098fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGxhY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
      name: "Walking Tour gondola ride",
      startTimes: ["7.00 am", "8:00 am"],
      rating: 4,
      price: 210,
      type: "Sightseeing Tour"
  ),

  Activity(
      imageUrl: "https://images.unsplash.com/photo-1622616234995-072f0e880b81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBsYWNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
      name: "Murano and Burnano Tour",
      startTimes: ["12:30 am", "2:00 am"],
      rating: 3,
      price: 125,
      type: "Sightseeing Tour"
  )
];

List <Destination> destinations = [
  Destination(
      imageUrl: "https://images.unsplash.com/photo-1572285278111-d186851a353d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c2VhJTIwYm9hdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
      city: "Venice",
      country: "italy",
      description: "Visit Vince for an amazing and unforgettable adventure",
      activities: activities),

  Destination(
      imageUrl: "https://images.unsplash.com/photo-1593604572577-1c6c44fa246c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBsYWNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
      city: "Paris",
      country: "France",
      description: "Visit Paris for an amazing and unforgettable adventure",
      activities: activities),


  Destination(
      imageUrl: "https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGFqJTIwbWFoYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
      city: "New Delhi",
      country: "India",
      description: "Visit India for an amazing and unforgettable adventure",
      activities: activities),

  Destination(
      imageUrl: "https://images.unsplash.com/photo-1621693247912-767f47a3c382?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJyYXppbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
      city: "Sao Paulo",
      country: "Brazil",
      description: "Visit Brazil for an amazing and unforgettable adventure",
      activities: activities),



];



