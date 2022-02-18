import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider_base/screens/file/file_handling.dart';
import 'package:provider_base/screens/file/file_handling_screen.dart';

class UploadFileScreen extends StatefulWidget {
  const UploadFileScreen({Key? key}) : super(key: key);

  @override
  _UploadFileScreenState createState() => _UploadFileScreenState();
}

class _UploadFileScreenState extends State<UploadFileScreen> {
  PlatformFile? platformFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => FileHandling().openFileExplorer(), child: const Text('Choose files')),
            listFiles.length == 0 ? Container() : ListView.builder(
              shrinkWrap: true,
              itemCount: listFiles.length,
              itemBuilder: (context, index) => Text(listFiles[index]?.name ?? ''),
            ),
            IconButton(onPressed: () async {
              await uploadFileToS3();
              Navigator.push(context, MaterialPageRoute(builder: (context) => FileHandlingScreen()));
            }, icon: const Icon(Icons.drive_folder_upload)),
          ],
        ),
      ),

    );
  }

  Future uploadFileToS3() async {}
}
