import 'package:flutter/material.dart';
import 'package:sign_in_demo/config/colors.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key key,
      @required this.label,
      this.isPassword = false,
      this.controller,
      this.disabled = false,
      this.error})
      : super(key: key);

  final TextEditingController textEditingController = TextEditingController();

  final String label;
  final bool isPassword;
  final TextEditingController controller;
  final bool disabled;
  final String error;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _showPassword = false;
  FocusNode _focusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: widget.disabled,
      child: Column(
        children: [
          TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ? !_showPassword : false,
            focusNode: _focusNode,
            onTap: _requestFocus,
            decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? IconButton(
                      color: AppColors.colorBlack,
                      icon: Icon(
                        !_showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 24.0,
                      ),
                      onPressed: () => setState(() {
                        _showPassword = !_showPassword;
                        if (!_focusNode.hasFocus) {
                          _focusNode.unfocus();
                          _focusNode.canRequestFocus = false;

                          //Enable the text field's focus node request after some delay
                          Future.delayed(Duration(milliseconds: 100), () {
                            _focusNode.canRequestFocus = true;
                          });
                        }
                      }),
                    )
                  : null,
              labelText: widget.label,
              labelStyle: _focusNode.hasFocus
                  ? TextStyle(
                      color: AppColors.colorBlack,
                      fontWeight: FontWeight.w800,
                      fontSize: 24.0)
                  : TextStyle(color: AppColors.colorBlack, fontSize: 18.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.colorBlack, width: 4.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.colorBlack, width: 2.0),
              ),
            ),
          ),
          widget.error != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.error,
                      style: TextStyle(color: AppColors.colorLavender),
                    )
                  ],
                )
              : SizedBox()
        ],
      ),
    );
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }
}
