# Changelog

All notable changes to this package will be documented here.

## 2.1.0 - 2026-07-24

### Fixed

- Optimized large SVG logo assets to reduce the overall package size.
- Reduced the size of oversized bundled logos such as Bank Melli, Sepah, and Tejarat.
- Preserved the visual appearance of the optimized assets.

## 2.0.0 - 2026-06-02

### Added

- Added example GIF media asset for documentation.
- Added bank assets and dataset entries for `iran-venezuela`, `melal`, and `noor`.

### Changed

- Renamed the public `BankInfoView.secondaryColor` property to `BankInfoView.onPrimaryColor` for clearer color semantics.
- Renamed the internal bank dataset color field from `secondary_color` to `onPrimary_color` to match the updated API naming.
- Updated the README examples and API reference to use `onPrimaryColor`.
- Updated tests to validate the renamed color property.

### Fixed

- Refreshed the Bank Melli SVG logo asset.

### Breaking Changes

- `BankInfoView.secondaryColor` has been removed.
- Use `BankInfoView.onPrimaryColor` instead.

### Migration

- Replace `secondaryColor` usages with `onPrimaryColor`.

## [1.2.0] - 2025-05-28

### BREAKING

- The `verifyCard` method has been renamed to `verifyCardNumber` for better clarity and consistency with the package's API.

### Added

- Comprehensive Dartdoc comments for all public APIs (classes, methods, fields) to improve usability and achieve a high score on pub.dev.
- A new getter `IranianBanks.allBanks` to provide access to the complete, unmodifiable list of bank data.

### Changed

- The example application is now fully interactive, featuring `TextField`s and a `TabBar` for a better demonstration of the package's capabilities.
- Added real-time validation feedback (icons) to the example app's UI.
- Improved and standardized the internal bank data list:
  - Data for merged banks (Ansar, Ghavvamin, etc.) now correctly points to Bank Sepah, ensuring consistency while maintaining recognition of old card numbers.
  - The list is now sorted alphabetically for easier maintenance.
- Refactored `BankInfoView` to eliminate redundant code in logo path generation, making it more efficient.
- Renamed secondaryColor to onPrimaryColor for better clarity, as it defines the color for text drawn over the primary background color.

### Fixed

- **Critical:** Replaced the buggy `verifyIBAN` implementation with a robust and correct MOD-97 algorithm.
- Corrected incorrect IBAN codes for several banks (e.g., Bank Day, Resalat Bank).
- Resolved numerous data conflicts, including duplicate `bank_name` identifiers and conflicting card number prefixes.
- Fixed the `allBanks` getter, which previously returned an empty list.
- Corrected various typos and informational errors in the bank database.

## [1.1.0] - 2025-05-27

- Included validation utilities for card numbers and IBANs.

## [1.0.0] - 2025-05-19

- Initial official release
- Bank detection based on card number and IBAN
- Provides detailed bank info including name, title, logo, and color
- Added basic documentation and usage examples
- Configured linting and static analysis
