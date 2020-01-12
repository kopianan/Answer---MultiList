class BottomData {
  int iD;
  int iDBook;
  String url;

  BottomData({this.iD, this.iDBook, this.url});

  BottomData.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    iDBook = json['IDBook'];
    url = json['Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['IDBook'] = this.iDBook;
    data['Url'] = this.url;
    return data;
  }
}
