import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:resume_template/data.dart';

class MyResumePage extends StatelessWidget {
  const MyResumePage({super.key});

  @override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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume For me'),
      ),
      body: FlutterResumeTemplate(
        data: data,
        templateTheme: TemplateTheme.modern,
        mode: TemplateMode.shakeEditAndSaveMode,
        onSaveResume: (globalKey) async =>
            await PdfHandler().createResume(globalKey),
      ),
    );
  }
}
