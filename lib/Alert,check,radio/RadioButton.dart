import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RadioButton',
      home: CustomRadioExample(),
    );
  }
}

class MyRadioOption<T> extends StatelessWidget {

  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;

  const MyRadioOption({
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.red,
          ),
        ),
        color: isSelected ? Colors.teal : Colors.white,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.teal,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.yellow.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
              const SizedBox(width: 10),
              _buildText(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRadioExample extends StatefulWidget {

  @override
  State createState() => new _CustomRadioExampleState();
}

class _CustomRadioExampleState extends State<CustomRadioExample> {

  String? groupValue;

  ValueChanged<String?> valueChangedHandler() {
    return (value) => setState(() => groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('RadioButton'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          MyRadioOption<String>(
            value: 'A',
            groupValue: groupValue,
            onChanged: valueChangedHandler(),
            label: 'A',
            text: 'One',
          ),
          MyRadioOption<String>(
            value: 'B',
            groupValue: groupValue,
            onChanged: valueChangedHandler(),
            label: 'B',
            text: 'Two',
          ),
          MyRadioOption<String>(
            value: 'C',
            groupValue: groupValue,
            onChanged: valueChangedHandler(),
            label: 'C',
            text: 'Three',
          ),
          MyRadioOption<String>(
            value: 'D',
            groupValue: groupValue,
            onChanged: valueChangedHandler(),
            label: 'D',
            text: 'Four',
          ),
          MyRadioOption<String>(
            value: 'E',
            groupValue: groupValue,
            onChanged: valueChangedHandler(),
            label: 'E',
            text: 'Five',
          ),
        ],
      ),
    );
  }
}