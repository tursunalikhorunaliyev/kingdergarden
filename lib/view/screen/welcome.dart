import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kingdergarden/view/custome/witgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/first.png",
            ),
          ),
          Next(),
        ],
      ),
    );
  }
} //https://www.figma.com/file/OPwZeBzxbLlWxH0AzFYEY6/Untitled?node-id=1-447&t=QSAcWTKtKuSvVmdL-0
