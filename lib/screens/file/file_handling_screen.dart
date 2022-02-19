import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider_base/screens/file/file_handling.dart';

class FileHandlingScreen extends StatefulWidget {
  const FileHandlingScreen({Key? key}) : super(key: key);

  @override
  State<FileHandlingScreen> createState() => _FileHandlingScreenState();
}

class _FileHandlingScreenState extends State<FileHandlingScreen> {
  FileHandling fileHandling = FileHandling();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Handling'),
        actions: [
          IconButton(
              onPressed: () => fileHandling.openFileExplorer(),
              icon: const Icon(Icons.upload_file))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child:

          Column(
            children: [
              // ElevatedButton(onPressed: () {
              //   listFiles.forEach((e) {
              //     print(e);
              //   });
              // }, child: Text('Test')),
              ListView.builder(
                shrinkWrap: true,
                itemCount: fileHandling.listFiles.length,
                itemBuilder: (context, index) =>
                    buildFileCard(fileHandling.listFiles[index]),
              ),
              ElevatedButton(
                  onPressed: () {
                    _showSimpleDialog(context);
                    FileHandling().downloadFile(
                        'https://hosonhanvat.net/wp-content/uploads/2020/07/Luffy-1.jpg',
                        'Luffy-1.jpg');
                  },
                  child: Text('Test download'))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFileCard(PlatformFile file) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => FileHandling().openFile(file),
            child: Expanded(
              child: Text(
                file.name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.file_download)),
        ],
      ),
    );
  }

  // Show dialog
  _showSimpleDialog(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return const SimpleDialog(
        contentPadding: EdgeInsets.all(20),
        children: [
          Text('Downloading...'),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: LinearProgressIndicator(),),
        ],
      );
    });
  }

}