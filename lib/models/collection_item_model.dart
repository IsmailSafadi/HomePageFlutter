class CollectionItemModel {
  final String title;
  final String workingHours;
  final String location;
  final String image;
  final int numberOfJoins;

  CollectionItemModel(this.numberOfJoins, {required this.image, required this.title, required this.workingHours, required this.location});
  
} 