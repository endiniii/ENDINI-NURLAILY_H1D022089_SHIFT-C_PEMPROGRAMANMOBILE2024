import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _formKey = GlobalKey<FormState>();
  String nama = '';
  String nim = '';
  String shiftBaru = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Input Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nama'),
                onSaved: (value) {
                  setState(() {
                    nama = value ?? '';
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'NIM'),
                onSaved: (value) {
                  setState(() {
                    nim = value ?? '';
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Shift Baru'),
                onSaved: (value) {
                  setState(() {
                    shiftBaru = value ?? '';
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TampilData(
                          nama: nama,
                          nim: nim,
                          shiftBaru: shiftBaru,
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
