Öğrenci Takip sistemi Uygulaması:

Bu proje, basit bir öğrenci otomasyonu uygulamasını içerir. Kullanıcılar, öğrencileri ekleyebilir, düzenleyebilir, silebilir ve eklenen öğrencilerin sınav performansına göre durumlarını görebilirler.

Nasıl Kullanılır

    Yeni Öğrenci Ekleme
        Ana ekranda "Yeni Öğrenci" butonuna tıklayarak yeni bir öğrenci eklenir.
        Açılan formda öğrenci adı, soyadı ve sınav notu girilir.
        "Kaydet" butonuna basılarak formdan çıkılır ve eklenen öğrenci ana ekrana eklenir.

    Öğrenci Düzenleme
        Eklenen öğrenciler arasından seçim yapılır.
        Seçilen öğrencinin alt kısmında "Düzenle" seçeneği bulunur.
        "Düzenle" seçeneğine tıklandığında öğrencinin adı, soyadı ve sınav notu düzenlenebilir.

    Sınav Durumu Kontrolü
        Her öğrenci, aldığı not baz alınarak durumu belirtilir.
        Aldığı nota göre "Dersten Kaldı", "Dersten Geçti" veya "Bute Kaldı" gibi bir durum belirtilir.

    Öğrenci Silme
        Silinmek istenen öğrenciye ait "Sil" butonuna tıklanır.
        Öğrenci başarıyla silinir.

Proje Yapısı:
    main.dart: Ana uygulama arayüzü, Uygulamanın data Stuctures işlemlerinin yapıldığı dosyadır.
    Student.dart: Uygulamanın temel işlevlerini içeren Dart dosyası.
    Student_add.dart: Uygulamada yeni öğrencileri ekleyen dart dosyası.
    Student_edit.dart: Uygulamada eklenen ogrencılerı duzenlemek için kullanılan class.
    Student_validator.dart : Bu class içersinde ogrenciler eklenirken ogrencılerin dogrulanmasını yapar. ve olası hata durumlarında diğer classlar içinde çağrılarak formda hata bildirimini sunar.
    


Geliştirici:Merve Arslan

Eğer projeye katkıda bulunmak isterseniz:

    Forklayın ve yerel makinenizde projeyi çalıştırın.
    Geliştirmeleriniz için yeni özellikler ekleyin veya hataları düzeltin.
    Pull request oluşturarak değişiklikleri tartışmaya açın.

Lisans:

Bu proje lisansı altında dağıtılmaktadır. 

---------

En 



Student tracking system Application:

This project includes a simple student automation application. Users can add, edit, delete students and view the status of added students according to their exam performance.

How to use

    Adding a New Student
        A new student is added by clicking the "New Student" button on the main screen.
        In the opened form, student name, surname and exam grade are entered.
        By clicking the "Save" button, the form is exited and the added student is added to the main screen.

    Student Editing
        A selection is made among the added students.
        There is an "Edit" option at the bottom of the selected student.
        By clicking "Edit", the student's name, surname and exam grade can be edited.

    Exam Status Check
        Each student's status is indicated based on the grade they received.
        Depending on the grade received, a status such as "Failed the Course", "Passed the Course" or "Failed the Course" is indicated.

    Student Deletion
        Click on the "Delete" button for the student you want to delete.
        The student is deleted successfully.

Project Structure:
    main.dart: The main application interface is the file where the application's data structures operations are performed.
    Student.dart: Dart file containing the basic functionality of the application.
    Student_add.dart: Dart file that adds new students in the application.
    Student_edit.dart: Class used to edit students added in the application.
    Student_validator.dart: Validates students when adding students within this class. and in case of possible errors, it is called from other classes and presents the error notification in the form.
    


Developer:Merve Arslan

If you would like to contribute to the project:

    Fork it and run the project on your local machine.
    Add new features or fix bugs for your improvements.
    Discuss the changes by creating a pull request.

Licence:

This project is distributed under the GNU license 
