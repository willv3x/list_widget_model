class ResponsePage<T> {
  List<T> content;
  bool first;
  bool last;
  int totalPages;
  int totalElements;
  int size;
  int number;
  int numberOfElements;
  List<Map<String, dynamic>> sorts;

  ResponsePage.fromJson(Map<String, dynamic> json,
      T Function(dynamic contentJson) contentFromJson) {
    first = json["first"];
    last = json["last"];
    totalPages = json["totalPages"];
    totalElements = json["totalElements"];
    size = json["size"];
    number = json["number"];
    numberOfElements = json["numberOfElements"];
    sorts = json["sort"];

    content = List<T>();

    for (dynamic item in json["content"]) {

      content.add(contentFromJson(item));
    }
  }
}