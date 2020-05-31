class Store {
  String storeName;
  String location;
  String hours;
  String image;
  int currentLine;
  bool isJoined;

  Store(this.storeName, this.location, this.hours, this.image, this.currentLine, this.isJoined);

  Store.fromJson(Map<String, dynamic> json) {
    storeName = json["storeName"];
    location = json["location"];
    hours = json["hours"];
    image = json["image"];
    currentLine = json["currentLine"];
    isJoined = json["isJoined"];
  }
}