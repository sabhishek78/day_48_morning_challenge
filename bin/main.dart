import 'dart:io';
class Student {
  String name;
  int score;

  Student(this.name, this.score);

}
printStudentDetails(Student student){
  print("Name=${student.name}");
  print("score=${student.score}");
}
findMaxScore(List<Student> students){
  int maxScore=0;
  int index=0;
  for(int i=0;i<students.length;i++){
    if(students[i].score>maxScore){
       index=i;
       maxScore=students[i].score;
    }
  }
  print("Max Score=");
  printStudentDetails(students[index]);
}
sortStudentsByScore(List<Student> students){

  for(int i=0;i<students.length-1;i++){
    for(int j=i+1;j<students.length;j++){
      if(students[i].score>students[j].score){
        //swap
        String tempName=students[j].name;
        int tempScore=students[j].score;
        students[j].name=students[i].name;
        students[j].score=students[i].score;
        students[i].name=tempName;
        students[i].score=tempScore;
      }
    }
  }
 printStudentList(students);
}
printStudentList(List<Student> students){
  for(int i=0;i<students.length;i++){
    print('${students[i].name} :'+'${students[i].score}');
  }
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
  await  Future.delayed(Duration(seconds: n));
   print("Completed Task $n");
}
void nSecondDelayUsingThen(int n) {

  print(" Beginning Task $n");
   Future.delayed(Duration(seconds: n)).then((value){
     print("Completed Task $n");
   });

}

// PART 3
// Create a new function which does the same thing as previous function but
// without await keyword . (HINT: use '.then' method)


void main() {
  Student Ram=Student("Ram",87);
  Student Shyam=Student("Shyam",80);
  Student Ghanshyam= Student("Ghanshyam",91);
  List<Student> students=[Ram,Shyam,Ghanshyam];
printStudentDetails(Ram);
  printStudentDetails(Shyam);
  printStudentDetails(Ghanshyam);
  findMaxScore(students);
  sortStudentsByScore(students);
  //nSecondDelay(5);
  nSecondDelayUsingThen(5);
}
