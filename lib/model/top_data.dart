class TopData {
  int iD;
  String title;
  String description;
  int pageCount;
  String excerpt;
  String publishDate;

  TopData(
      {this.iD,
      this.title,
      this.description,
      this.pageCount,
      this.excerpt,
      this.publishDate});

  TopData.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    title = json['Title'];
    description = json['Description'];
    pageCount = json['PageCount'];
    excerpt = json['Excerpt'];
    publishDate = json['PublishDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Title'] = this.title;
    data['Description'] = this.description;
    data['PageCount'] = this.pageCount;
    data['Excerpt'] = this.excerpt;
    data['PublishDate'] = this.publishDate;
    return data;
  }
}
