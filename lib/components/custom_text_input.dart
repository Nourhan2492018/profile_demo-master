import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
   CustomTextInput({
     required this.textEditingController,
     required this.hint,
     required this.label,
     required this.prefixIcon,
     this.suffixIcon
   });
   final TextEditingController textEditingController;
   final String hint;
  final String label;
  final IconData prefixIcon;
  var suffixIcon;
  //IconData ?suffixIcon;
  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {

  @override
  Widget build(BuildContext context) {
    print('build custom text input');
    return Container(
      alignment: Alignment.center,
      width: 370,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,

        controller: widget.textEditingController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent),
              borderRadius: BorderRadius.circular(12)),
          prefixIcon: Icon(
            widget.prefixIcon,
            color: Colors.orangeAccent,
          ),
          suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              widget.suffixIcon=Icons.visibility_off_outlined;
            });
          },icon: Icon(
          widget.suffixIcon,
          color: Colors.orangeAccent,
        ),

        ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orangeAccent),
            borderRadius
                : BorderRadius.circular(12),
          ),
          label: Text(widget.label, style: TextStyle(color: Colors.orangeAccent)),
        ),
      ),
    );
  }
}
