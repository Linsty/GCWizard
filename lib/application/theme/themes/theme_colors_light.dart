part of 'package:gc_wizard/application/theme/theme_colors.dart';

class _ThemeColorsLight extends ThemeColors {
  static const _creme = Color(0xFFF5F3ED);
  static const _darkGray = Color(0xFF404040);
  static const _gray = Color(0xFF919191);
  static const _lightGray = Color(0xFFD1D1D1);

  @override
  ThemeData base() {
    return ThemeData.light();
  }

  @override
  Color secondary() {
    return Colors.orange;
  }

  @override
  Color focused() {
    return Colors.cyan;
  }

  @override
  Color inactive() {
    return Colors.grey;
  }

  @override
  Color inputBackground() {
    return Colors.white;
  }

  @override
  Color mainFont() {
    return Colors.black;
  }

  @override
  Color outputListOddRows() {
    return _lightGray;
  }

  @override
  Color dialog() {
    return Colors.orangeAccent;
  }

  @override
  Color dialogText() {
    return Colors.black;
  }

  @override
  Color primaryBackground() {
    return _creme;
  }

  @override
  Color iconImageBackground() {
    return Colors.white;
  }

  @override
  Color textFieldHintText() {
    return _gray;
  }

  @override
  Color messageBackground() {
    return Colors.white;
  }

  @override
  Color switchThumb1() {
    return _gray;
  }

  @override
  Color switchTrack1() {
    return _lightGray.withAlpha((255.0 * 0.5).round());
  }

  @override
  Color switchThumb2() {
    return secondary();
  }

  @override
  Color switchTrack2() {
    return secondary().withAlpha((255.0 * 0.5).round());
  }

  @override
  Color checkBoxActiveColor() {
    return _gray;
  }

  @override
  Color checkBoxFillColor(Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return _lightGray.withAlpha((255.0 * 0.5).round());
    }
    return _lightGray.withAlpha((255.0 * 0.5).round());
  }

  @override
  Color checkBoxCheckColor() {
    return secondary();
  }

  @override
  Color checkBoxFocusColor() {
    return secondary().withAlpha((255.0 * 0.5).round());
  }

  @override
  Color checkBoxHoverColor() {
    return secondary();
  }

  @override
  Color checkBoxOverlayColor(Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return secondary().withAlpha((255.0 * 0.5).round());
    }
    return secondary().withAlpha((255.0 * 0.5).round());
  }

  @override
  Color listSubtitle() {
    return _darkGray;
  }

  @override
  Color gridBackground() {
    return Colors.white;
  }

  @override
  Color hyperLinkText() {
    return Colors.deepOrange;
  }

  @override
  Color textFieldFill() {
    return Colors.black;
  }

  @override
  Color textFieldFillText() {
    return Colors.white;
  }

  @override
  Color formulaNumber() {
    return const Color.fromRGBO(48, 145, 0, 1);
  }

  @override
  Color formulaVariable() {
    return const Color.fromRGBO(255, 135, 0, 1);
  }

  @override
  Color formulaMath() {
    return Colors.indigoAccent;
  }

  @override
  Color formulaError() {
    return Colors.red;
  }
}
