import 'package:flutter/material.dart';
import 'package:mongol_code_converter/ui/converter_viewmodel.dart';
import 'package:provider_architecture/viewmodel_provider.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<ConverterViewModel>.withConsumer(
      viewModel: ConverterViewModel(),
      builder: (context, model, child) => SafeArea(
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
              child: TextField(
                controller: textController,
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    hintText: 'Enter Unicode text'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Unicode -> CMs'),
                  onPressed: () async {
                    final unicode = textController.text;
                    final cms = await model.convertUnicodeToCmsCode(unicode);
                    textController.text = cms;
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
