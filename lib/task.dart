// ignore_for_file: avoid_print

class Task {
  // ATTRIBUTES
  String title;
  bool isDone;

  // CONSTRUCTOR
  Task(
    this.title,
    this.isDone,
  );

  // METHODS
  void setCompleted() {
    if (isDone == true) {
      isDone = false;
    } else {
      isDone = true;
    }
  }
}

List<Task> tasks = [
  Task('Gassi gehen', false),
  Task('Arzt besuchen', false),
];

// immer wenn man auf das Plus klickt, wird diese Funktion aufgerufen
void onAddButtonPressed(String userInput) {
  Task t = Task(userInput, false);
  tasks.add(t);
}

// immer wenn man das Häkchen anklickt, wird diese Funktion aufgerufen
void onCheckboxChecked(Task t) {
  t.setCompleted();
}
