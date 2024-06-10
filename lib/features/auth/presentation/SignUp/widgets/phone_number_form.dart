import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberForm extends StatefulWidget {
  const PhoneNumberForm({super.key});

  @override
  State<PhoneNumberForm> createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final TextEditingController phoneController = TextEditingController();
  Country country = Country(
    phoneCode: "20",
    countryCode: "EG",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Egypt",
    example: "Egypt",
    displayName: "Egypt",
    displayNameNoCountryCode: "EG",
    e164Key: "e164Key",
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      controller: phoneController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.circular(12)),
          hintText: "رقم الهاتف",
          prefixIcon: Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              child: Text("${country.flagEmoji} + ${country.phoneCode}"),
              onTap: () {
                showCountryPicker(
                  context: context,
                  onSelect: (value) {
                    setState(() {
                      country = value;
                    });
                  },
                );
              },
            ),
          )),
    );
  }
}
