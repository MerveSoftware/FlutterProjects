import 'package:flutter/material.dart';
import 'package:my_flutter_project/Modules/Student.dart';

class StudentEdit extends StatefulWidget {
  Student selectedStudent;

  StudentEdit( this.selectedStudent);

  @override
  State<StatefulWidget> createState() {
    return _StudentEditState();
  }
}

class _StudentEditState extends State<StudentEdit> {
  late Student selectedStudent;

  @override
  void initState() {
    super.initState();
    selectedStudent = widget.selectedStudent;
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Düzenle"),
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
      initialValue: selectedStudent.firstName,
      decoration: InputDecoration(labelText: "Öğrenci Adı"),
      validator: (value) {
        // Doğrulama kuralları
      },
      onSaved: (value) {
        selectedStudent.firstName = value!;
      },
    );
  }

  Widget buildLastNameField() {
    return TextFormField(
      initialValue: selectedStudent.lastName,
      decoration: InputDecoration(labelText: "Öğrenci Soyadı"),
      validator: (value) {
        // Doğrulama kuralları
      },
      onSaved: (value) {
        selectedStudent.lastName = value!;
      },
    );
  }

  Widget buildGradeField() {
    return TextFormField(
      initialValue: selectedStudent.grade.toString(),
      decoration: InputDecoration(labelText: "Aldığı Not"),
      keyboardType: TextInputType.number,
      validator: (value) {
        // Doğrulama kuralları
      },
      onSaved: (value) {
        selectedStudent.grade = int.parse(value!);
      },
    );
  }

  Widget buildSubmitButton() {
    return ElevatedButton(
      child: Text("Güncelle"),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          setState(() {

            Navigator.pop(context);
          });
        }
      },
    );
  }
}
/*
   int index =
                widget.selectedStudent.indexWhere((s) => s.id == selectedStudent.id);
            if (index != -1) {
              widget.selectedStudent[index] = selectedStudent;
            }
 */