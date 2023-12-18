import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/student_add.dart';
import 'package:my_flutter_project/screens/student_edit.dart';
import 'Modules/Student.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mesaj = "ÖĞRENCİ TAKİP SİSTEMİ ";

  Student selectedStudent= Student.withId(0,"", "", 0);

  List<Student> students = [
    Student.withId(1,"merve", "arslan", 45,),
    Student.withId(2,"fatma", "yazılımcıHanım", 70),
    Student.withId(3,"halil", "kara", 20,)];

// flutter statlus managment
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: buildBody(context),
    );
  }

  void mesajGoster(BuildContext context, String mesaj) {
    var alert = AlertDialog(
      title: Text("İşlem Sonucu"),
      content: Text(mesaj),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2023/10/23/14/37/bee-8336245_1280.png"),
                ),
                title: Text(students[index].firstName +
                    "  " +
                    students[index].lastName),
                subtitle: Text("sinavdan aldigi not: " +
                    students[index].grade.toString() +
                    " [" +
                    students[index].getStatus +
                    "]"),
                trailing: buildStatusIcon(students[index].grade),
                onTap: () {
                  setState(() {
                    selectedStudent= students[index];
                  });

                  print(selectedStudent.firstName);
                },
              );
            },
          ),
        ),
        Text("seçili öğrenci : " + selectedStudent.firstName),
        Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Text Color
                ),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("yeni öğrenci"),
                  ],
                ),
                onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>StudentAdd(students)));
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Text Color
                ),
                child: Row(
                  children: [
                    Icon(Icons.update),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("güncelle"),
                  ],
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>StudentEdit(selectedStudent)));
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Text Color
                ),
                child: Row(
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("sil"),
                  ],
                ),
                onPressed: () {
                  setState(() {
                    students.remove(selectedStudent);
                  });
                  var mesaj="ogrenci silindi ";
                  mesajGoster(context, mesaj);
                },
              ),
            )
          ],
        )
      ],
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    } else if (grade >= 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }
}
