import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';
import 'converter_viewmodel.dart';
import 'package:flutter/services.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final ConverterViewModel viewModel = ConverterViewModel();
  final menksoftTextStyle = TextStyle(fontFamily: 'menksoft', fontSize: 20);
  TextStyle currentTextStyle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'Mongol Code',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ValueListenableBuilder<String>(
                  valueListenable: viewModel.textNotifier,
                  builder: (context, text, child) {
                    return MongolText(
                      text,
                      style: currentTextStyle,
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              TextButton(
                child: Text('Unicode'),
                onPressed: () {
                  currentTextStyle = null;
                  viewModel.convertMenksoftToUnicode();
                },
              ),
              SizedBox(width: 8),
              TextButton(
                child: Text('Menksoft'),
                onPressed: () {
                  currentTextStyle = menksoftTextStyle;
                  viewModel.convertUnicodeToMenksoft();
                },
              ),
              SizedBox(width: 8),
              TextButton(
                child: Text('CMS'),
                onPressed: () {
                  currentTextStyle = null;
                  viewModel.convertUnicodeToCmsCode();
                },
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.paste),
                onPressed: () async {
                  final data = await Clipboard.getData(Clipboard.kTextPlain);
                  viewModel.textNotifier.setText(data.text);
                },
              ),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.copy),
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(text: viewModel.textNotifier.value),
                  );
                },
              ),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  viewModel.textNotifier.setText('');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
