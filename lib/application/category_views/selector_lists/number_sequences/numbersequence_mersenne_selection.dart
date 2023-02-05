import 'package:flutter/material.dart';
import 'package:gc_wizard/application/registry.dart';
import 'package:gc_wizard/common_widgets/gcw_selection.dart';
import 'package:gc_wizard/common_widgets/gcw_tool.dart';
import 'package:gc_wizard/common_widgets/gcw_toollist.dart';
import 'package:gc_wizard/tools/science_and_technology/number_sequences/mersenne/widget/mersenne.dart';
import 'package:gc_wizard/utils/ui_dependent_utils/common_widget_utils.dart';

class NumberSequenceMersenneSelection extends GCWSelection {
  @override
  Widget build(BuildContext context) {
    final List<GCWTool> _toolList = registeredTools.where((element) {
      return [
        className(NumberSequenceMersenneNthNumber()),
        className(NumberSequenceMersenneRange()),
        className(NumberSequenceMersenneDigits()),
        className(NumberSequenceMersenneCheckNumber()),
        className(NumberSequenceMersenneContainsDigits()),
      ].contains(className(element.tool));
    }).toList();

    return Container(child: GCWToolList(toolList: _toolList));
  }
}