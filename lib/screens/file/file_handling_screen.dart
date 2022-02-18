import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider_base/screens/file/file_handling.dart';
import 'package:provider_base/screens/file/upload_file_screen.dart';

class FileHandlingScreen extends StatefulWidget {
  const FileHandlingScreen({Key? key}) : super(key: key);

  @override
  State<FileHandlingScreen> createState() => _FileHandlingScreenState();
}

class _FileHandlingScreenState extends State<FileHandlingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Handling'),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UploadFileScreen())),
              icon: const Icon(Icons.upload_file))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:

        Column(
          children: [
            listFiles.length == 0 ? Container() : ListView.builder(
              shrinkWrap: true,
              itemCount: listFiles.length,
              itemBuilder: (context, index) =>
                  buildFileCard(listFiles[index]),
            ),
            ElevatedButton(
                onPressed: () => FileHandling().downloadFile(
                    'https://hosonhanvat.net/wp-content/uploads/2020/07/Luffy-1.jpg',
                    'Luffy-1.jpg'),
                child: Text('Test download'))
          ],
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

}
