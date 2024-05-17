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
    isDone = !isDone;
  }
}

List<Task> tasks = [
  Task('Gassi gehen', true),
  Task('Arzt besuchen', true),
];

// immer wenn man auf das Plus klickt, wird diese Funktion aufgerufen
void onAddButtonPressed(String userInput) {}

// immer wenn man das Häkchen anklickt, wird diese Funktion aufgerufen
void onCheckboxChecked(Task t) {}
