import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';
import 'package:mongol_code_converter/converter/converter_service.dart';
import 'package:flutter/services.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final menksoftTextStyle = TextStyle(fontFamily: 'menksoft', fontSize: 20);
  TextStyle? currentTextStyle;
  final converter = ConverterService();
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: MongolTextField(
              controller: textController,
              style: currentTextStyle,
              maxLines: null,
              expands: true,
              textAlignHorizontal: TextAlignHorizontal.left,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
              ),
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            children: [
              TextButton(
                child: Text('Unicode'),
                onPressed: () {
                  currentTextStyle = null;
                  textController.text = converter.convertToUnicode(textController.text);
                  setState(() {});
                },
              ),
              SizedBox(width: 8),
              TextButton(
                child: Text('Menksoft'),
                onPressed: () {
                  currentTextStyle = menksoftTextStyle;
                  textController.text = converter.convertToMenksoft(textController.text);
                  setState(() {});
                },
              ),
              SizedBox(width: 8),
              TextButton(
                child: Text('CMS'),
                onPressed: () {
                  currentTextStyle = null;
                  textController.text = converter.convertToCmsCode(textController.text);
                  setState(() {});
                },
              ),
            ],
          ),
          Wrap(
            children: [
              IconButton(
                icon: Icon(Icons.paste),
                onPressed: () async {
                  final data = await Clipboard.getData(Clipboard.kTextPlain);
                  if (data?.text != null) {
                    textController.text = data!.text!;
                    setState(() {});
                  }
                },
              ),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.copy),
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(text: textController.text),
                  );
                },
              ),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  textController.text = '';
                  currentTextStyle = null;
                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
