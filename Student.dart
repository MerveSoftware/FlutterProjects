class Student{
  int id = 0;
  String firstName="";
  String lastName="";
  int grade=0;
  String _status = "";

  Student.withId(int id, String firstName, String lastName, int grade) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }

  Student(String firstName, String lastName, int grade) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }
  Student.withoutInfo(){
    //herhangi bilgi atamadan olusturduk
  }

  String get getStatus {
    String message = "";
    if (this.grade >= 50) {
      message = "dersi geçtiniz";
    } else if (this.grade > 40) {
      message = 'bütünleme sınavına kaldı';
    } else {
      message = 'dersten kaldınız';
    }
    return message;
  }
}
