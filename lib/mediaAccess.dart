import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
//  
  Future<void> _pickImageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
  }

  Future<void> _takePhotoWithCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = pickedFile;
      print(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? Text('No image selected.')
                : Image.file(File(_image!.path)),
            ElevatedButton(
              onPressed: _pickImageFromGallery,
              child: Text('Pick Image from Gallery'),
            ),
            ElevatedButton(
              onPressed: _takePhotoWithCamera,
              child: Text('Take Photo with Camera'),
            ),
          ],
        ),
      ),
    );
  }
}
