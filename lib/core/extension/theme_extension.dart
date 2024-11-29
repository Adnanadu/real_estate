import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/themes/extensions/color_extension.dart';
import 'package:flutter_application_1/core/themes/extensions/space_extension.dart';
import 'package:flutter_application_1/core/themes/extensions/typography_extension.dart';

/// An extension to the build context to allow the user to use the theme values
/// like colors, spaces, etc. in the app.
extension ThemeExtension on BuildContext {
  /// Colors
  AppColorExtension get colors {
    return Theme.of(this).extension<AppColorExtension>()!;
  }

  /// Typography
  AppTypographyExtension get typography {
    return Theme.of(this).extension<AppTypographyExtension>()!;
  }

  /// Spaces
  AppSpaceExtension get spaces {
    return Theme.of(this).extension<AppSpaceExtension>()!;
  }
}