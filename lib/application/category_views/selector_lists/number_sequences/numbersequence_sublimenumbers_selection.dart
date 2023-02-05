import 'package:flutter/material.dart';
import 'package:gc_wizard/application/registry.dart';
import 'package:gc_wizard/common_widgets/gcw_selection.dart';
import 'package:gc_wizard/common_widgets/gcw_tool.dart';
import 'package:gc_wizard/common_widgets/gcw_toollist.dart';
import 'package:gc_wizard/tools/science_and_technology/number_sequences/sublime_numbers/widget/sublime_numbers.dart';
import 'package:gc_wizard/utils/ui_dependent_utils/common_widget_utils.dart';

class NumberSequenceSublimeNumbersSelection extends GCWSelection {
  @override
  Widget build(BuildContext context) {
    final List<GCWTool> _toolList = registeredTools.where((element) {
      return [
        className(NumberSequenceSublimeNumbersNthNumber()),
        className(NumberSequenceSublimeNumbersRange()),
        className(NumberSequenceSublimeNumbersDigits()),
        className(NumberSequenceSublimeNumbersCheckNumber()),
        className(NumberSequenceSublimeNumbersContainsDigits()),
      ].contains(className(element.tool));
    }).toList();

    return Container(child: GCWToolList(toolList: _toolList));
  }
}