class TodoModel {
  String? id;
  String? text;
  bool? isDone;

  TodoModel();

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel()
    ..id = json['id'] as String?
    ..text = json['text'] as String?
    ..isDone = json['isDone'] as bool?;

  // TaskModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   text = json['text'];
  //   isDone = json['isDone'];
  // }


  factory TodoModel.fromSqfliteJson(Map<String, dynamic> json) => TodoModel()
    ..id = json['id'] as String?
    ..text = json['text'] as String?
    ..isDone = (json['isDone'] as int) == 1 ? true : false;

    Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'isDone': isDone,
    };
  }

  Map<String, dynamic> toSqfliteJson() {
    return {
      'id': id,
      'text': text,
      'isDone': isDone == true ? 1 : 0,
    };
  }
}

List<TodoModel> tasksA = [
  TodoModel()
    ..id = '1'
    ..text = 'Learn Flutter'
    ..isDone = false,
  TodoModel()
    ..id = '2'
    ..text = 'Test project'
    ..isDone = false,
  TodoModel()
    ..id = '3'
    ..text = 'Task Item Two'
    ..isDone = false,
  TodoModel()
    ..id = '4'
    ..text = 'Code'
    ..isDone = false,
  TodoModel()
    ..id = '5'
    ..text = 'learn dart'
    ..isDone = false,
  TodoModel()
    ..id = '6'
    ..text = 'learn java'
    ..isDone = false,
  TodoModel()
    ..id = '7'
    ..text = 'todo 4'
    ..isDone = false,
  TodoModel()
    ..id = '8'
    ..text = 'todo 3'
    ..isDone = false,
  TodoModel()
    ..id = '9'
    ..text = 'todo 2'
    ..isDone = false,
  TodoModel()
    ..id = '10'
    ..text = 'todo 1'
    ..isDone = false,
];
