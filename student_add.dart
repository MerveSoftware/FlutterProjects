import 'package:flutter/material.dart';
import 'package:my_flutter_project/Modules/Student.dart';

class StudentAdd extends StatefulWidget {
  final List<Student> students;

  StudentAdd(this.students);

  @override
  State<StatefulWidget> createState() {
    return _StudentAddState();
  }
}

class _StudentAddState extends State<StudentAdd> {
  late Student student = Student.withoutInfo();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Öğrenci Ekle"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildFirstNameField(),
              buildLastNameField(),
              buildGradeField(),
              buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFirstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci Adı"),
      validator: (value) {
        if (value!.trim().isEmpty || value.length < 2) {
          return "İsim en az iki karakter olmalıdır";
        }
        return null;
      },
      onSaved: (value) {
        student.firstName = value!;
      },
    );
  }

  Widget buildLastNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci Soyadı"),
      validator: (value) {
        if (value!.trim().isEmpty || value.length < 2) {
          return "Soyad en az iki karakter olmalıdır";
        }
        return null;
      },
      onSaved: (value) {
        student.lastName = value!;
      },
    );
  }

  Widget buildGradeField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Aldığı Not"),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "Lütfen bir not girin";
        }
        final grade = int.tryParse(value);
        if (grade == null || grade < 0 || grade > 100) {
          return "Not 0-100 arasında olmalıdır";
        }
        return null;
      },
      onSaved: (value) {
        student.grade = int.parse(value!);
      },
    );
  }

  Widget buildSubmitButton() {
    return ElevatedButton(
      child: Text("Kaydet"),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          setState(() {
            widget.students.add(student);
            Navigator.pop(context);
          });
          student = Student.withoutInfo();
        }
      },
    );
  }
}
