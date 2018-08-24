class Item {
  final int id;
  String appName;
  String appLink;
  String fromName;
  String fromLink;
  String toName;
  String toLink;

  Item(this.id, this.appName, this.appLink, this.fromName, this.fromLink, this.toName, this.toLink);
  
  @override
  String toString() => '$id: $appName';
}