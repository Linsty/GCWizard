import 'package:flutter/material.dart';
import 'package:gc_wizard/tools/science_and_technology/teletypewriter/logic/teletypewriter.dart';
import 'package:gc_wizard/tools/science_and_technology/teletypewriter/teletypewriter/widget/teletypewriter.dart';

class CCITT4 extends Teletypewriter {
  CCITT4({Key key}) : super(key: key, defaultCodebook: TeletypewriterCodebook.CCITT_ITA4, codebook: null);
}