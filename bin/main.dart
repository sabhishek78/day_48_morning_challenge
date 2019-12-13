import 'dart:io';

class Student {
  String name;
  int score;

  Student(this.name, this.score);
}

printStudentDetails(Student student) {
  print('Name=${student.name}');
  print('score=${student.score}');
}

void findMaxScore(List<Student> students) {
  Student Max;
  Max = students.reduce((curr, next) => curr.score > next.score ? curr : next);
  print('Student with Max Score');
  print('Name=${Max.name}');
  print('Score=${Max.score}');
}

void sortStudentsByScore(List<Student> students) {
  students.sort((a, b) => a.score.compareTo(b.score));
  printStudentList(students);
}

printStudentList(List<Student> students) {
  students.forEach((n) => print('Name=${n.name},Score=${n.score}'));
}
// Challenge  1 - Create 3 Students
// 1. Ram - 87
// 2. Shyam - 80
// 3. Ghanshyam - 91

// Put these students in a list called 'students'

// Challenge 2 - Print out the student name and score for all students

// Challenge 3 - Find student with Maximum score and print his name and score

// Challenge 4 - Sort the students based on their scores

// PART 2
// Write a function which prints 'Beginning Task n', delays for n seconds and prints
// 'Completed Task n'
Future nSecondDelay(int n) async {
  print(" Beginning Task $n");
  await Future.delayed(Duration(seconds: n));
  print("Completed Task $n");
}

void nSecondDelayUsingThen(int n) {
  print(" Beginning Task $n");
  Future.delayed(Duration(seconds: n)).then((value) {
    print("Completed Task $n");
  });
}

// PART 3
// Create a new function which does the same thing as previous function but
// without await keyword . (HINT: use '.then' method)

void main() {
  Student Ram = Student("Ram", 87);
  Student Shyam = Student("Shyam", 80);
  Student Ghanshyam = Student("Ghanshyam", 91);
  List<Student> students = [Ram, Shyam, Ghanshyam];
  printStudentDetails(Ram);
  printStudentDetails(Shyam);
  printStudentDetails(Ghanshyam);
  findMaxScore(students);
  sortStudentsByScore(students);
  nSecondDelay(3);
  nSecondDelay(2);
  nSecondDelay(1);
  nSecondDelayUsingThen(5);
}
