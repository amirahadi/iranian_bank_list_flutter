# Iranian Banks

[![pub version](https://img.shields.io/pub/v/iranian_banks.svg)](https://pub.dev/packages/iranian_banks)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

A Flutter library to identify Iranian banks based on card numbers (first 6 digits) and IBANs. It also includes utility functions to validate card numbers and IBANs using standard algorithms.

## ✨ Features

- Detect bank information from a 16-digit card number.
- Detect bank information from an IBAN (e.g., `IR123456...`).
- Validate card numbers using the Luhn algorithm.
- Validate Iranian IBANs using the MOD-97 algorithm.
- Provides a detailed `BankInfoView` object with names, logos, and a color palette.
- Includes a `logoBuilder` method to easily display bank logos.

***

## 📦 Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  iranian_banks: ^2.0.0 # Replace with the latest version
```

Then, run `flutter pub get` in your terminal.

***

## 🚀 Usage

First, import the package into your Dart file:

```dart
import 'package:iranian_banks/iranian_banks.dart';
```

### Get Bank Info by Card Number

Provide the first 6 digits of a card number to get the bank's information.

```dart
// Get bank info from a card number
BankInfoView? bankInfo = IranianBanks.getBankFromCard('603799'); // Example for Bank Melli

if (bankInfo != null) {
  print('Bank Name: ${bankInfo.name}');
  print('Persian Title: ${bankInfo.title}');
} else {
  print('Bank not found.');
}
```

### Get Bank Info by IBAN

Provide the full IBAN string.

```dart
// Get bank info from an IBAN
BankInfoView? bankInfo = IranianBanks.getBankFromIban('IR070550012300100000000001'); // Example for Bank Eghtesad Novin

if (bankInfo != null) {
  print('Bank Name: ${bankInfo.name}');
  print('Persian Title: ${bankInfo.title}');
} else {
  print('Bank not found.');
}
```

### Displaying the Bank Logo 🖼️

The `BankInfoView` model includes a handy `logoBuilder` method that returns an `SvgPicture` widget.

```dart
BankInfoView? bankInfo = IranianBanks.getBankFromCard('603799');

// ... In your Widget's build method:
if (bankInfo != null) {
  SizedBox(
    width: 100,
    height: 100,
    // Use the logoBuilder to get the SvgPicture widget
    child: bankInfo.logoBuilder(
      width: 80,
      height: 80,
      fit: BoxFit.scaleDown,
    ),
  );
}
```

### Using Bank Colors 🎨

The `BankInfoView` object provides a palette of colors associated with the bank's brand, which you can use to style your widgets dynamically.

```dart
BankInfoView? bankInfo = IranianBanks.getBankFromCard('627412'); // Example for Bank Eghtesad Novin

// ... In your Widget's build method:
if (bankInfo != null) {
  Container(
    width: 300,
    height: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      // Use the colors to create a gradient background
      gradient: LinearGradient(
        colors: [bankInfo.darkerColor, bankInfo.primaryColor, bankInfo.lighterColor],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Use the onPrimary for text to ensure good contrast
          Text(
            bankInfo.name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: bankInfo.onPrimaryColor,
            ),
          ),
          const Spacer(),
          bankInfo.logoBuilder(width: 60),
        ],
      ),
    ),
  );
}
```

***

## 🛠️ Validation Utilities

The package also provides static methods to validate card numbers and IBANs directly.

### Verify Card Number

This method checks if a 16-digit card number is valid according to the **Luhn algorithm**.

```dart
// A valid card number
bool isValid = IranianBanks.verifyCardNumber('6037-9975-9912-3456'); // true
```

### Verify IBAN

This method checks if a 26-character Iranian IBAN is valid.

```dart
// A valid IBAN
bool isValidIBAN = IranianBanks.verifyIBAN('IR850540102680010987654321'); // true
```

***

## 🗂️ The `BankInfoView` Model

The functions return a nullable `BankInfoView` object with the following properties and methods:

| Member          | Type                        | Description                                            |
| :-------------  | :-------------------------- | :----------------------------------------------------- |
| `name`          | `String`                    | The official English name of the bank.                 |
| `title`         | `String`                    | The official Persian title of the bank.                |
| `logoPath`      | `String`                    | The asset path to the bank's logo.                     |
| `primaryColor`  | `Color`                     | The primary brand color of the bank.                   |
| `lighterColor`  | `Color`                     | A lighter shade of the primary color.                  |
| `darkerColor`   | `Color`                     | A darker shade of the primary color.                   |
| `onPrimaryColor`| `Color`                     | A color that's clearly legible when drawn on primary.  |
| `logoBuilder()` | `SvgPicture Function()`     | A method that returns an `SvgPicture` widget.          |

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/amirahadi/iranian_bank_list_flutter/issues).

***

This software is proudly developed and maintained by **Amir Ahadi**.
If you find it useful, feel free to ⭐️ it on GitHub or share it with others.

- **GitHub (Project):** <https://github.com/amirahadi/iranian_bank_list_flutter>
- **GitHub (Profile):** <https://github.com/amirahadi>
- **Email:** <amir.ahadi.dev@gmail.com>

**Note:** This project uses part of the publicly available bank dataset from:
<https://github.com/masihgh/iranian-bank-list>
