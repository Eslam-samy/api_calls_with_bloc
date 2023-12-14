class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo({this.userId, this.id, this.title, this.completed});

  Todo.fromJson(Map<String, dynamic> json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    completed = json["completed"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["userId"] = userId;
    _data["id"] = id;
    _data["title"] = title;
    _data["completed"] = completed;
    return _data;
  }
}
