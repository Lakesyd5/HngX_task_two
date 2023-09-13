import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Textfield widget for text
TextField textFormField({TextEditingController? controller}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    ),
    autocorrect: false,
  );
}

// Textfield widget for number
TextField numberFormField({TextEditingController? controller}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    ),
    autocorrect: false,
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly
    ],
  );
}

TextField aboutMeFormfield({ TextEditingController? controller}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    ),
    autocorrect: false,
    maxLines: 7,
  );
}