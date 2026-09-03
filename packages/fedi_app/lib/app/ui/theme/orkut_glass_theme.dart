import 'package:flutter/material.dart';

/// Paleta baseada no print de referência: header magenta,
/// fundo azul-acinzentado, cards em vidro translúcido.
class OrkutGlassColors {
  static const Color brandPink = Color(0xFFEB2D7B);
  static const Color brandPinkDark = Color(0xFFB81F5E);

  static const Color backgroundTop = Color(0xFFA9BFCF);
  static const Color backgroundBottom = Color(0xFF7E97AA);

  static const Color textPrimary = Color(0xFF1E2A38);
  static const Color textSecondary = Color(0xFF4C5A68);
  static const Color linkBlue = Color(0xFF2F6FB0);

  static const Color accentTeal = Color(0xFF2FB6C9);
  static const Color accentCoral = Color(0xFFF2635A);

  static const List<Color> backgroundGradient = [
    backgroundTop,
    backgroundBottom,
  ];
}

class OrkutGlassTextStyles {
  static const TextStyle welcomeTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: OrkutGlassColors.textPrimary,
  );

  static const TextStyle sectionLabel = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: OrkutGlassColors.textSecondary,
  );

  static const TextStyle counterNumber = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: OrkutGlassColors.textPrimary,
  );

  static const TextStyle counterLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: OrkutGlassColors.textSecondary,
  );

  static const TextStyle sortePhrase = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
    color: OrkutGlassColors.textPrimary,
  );
}
