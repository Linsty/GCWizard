import 'package:gc_wizard/tools/coords/_common/logic/coordinate_format_constants.dart';
import 'package:gc_wizard/tools/coords/_common/logic/coordinate_format_metadata.dart';
import 'package:gc_wizard/tools/coords/_common/logic/default_coord_getter.dart';

class CoordinateFormat{
  CoordinateFormatKey type;
  CoordinateFormatKey? subtype;

  CoordinateFormat(this.type, [this.subtype]){
    if (isCoordinateFormatWithSubtype(this.type)) {
      if (subtype == null || !isSubtypeOfCoordinateFormat(type, subtype!)) {
        this.subtype = defaultCoordinateFormatSubtypeForFormat(this.type);
      }
    }
  }

  static CoordinateFormat fromPersistenceKey(String persistenceKey) {
    var coordFormat = coordinateFormatMetadataByPersistenceKey(persistenceKey);
    if (coordFormat == null) {
      return defaultCoordinateFormat;
    } else {
      return CoordinateFormat(coordFormat.type);
    }
  }
}

bool isCoordinateFormatWithSubtype(CoordinateFormatKey format) {
  var coordFormat = coordinateFormatMetadataByKey(format);
  return coordFormat.subtypes != null;
}

bool isSubtypeOfCoordinateFormat(CoordinateFormatKey baseFormat, CoordinateFormatKey typeToCheck) {
  var coordFormat = coordinateFormatMetadataByKey(baseFormat);
  if (coordFormat.subtypes == null)
    return false;

  return coordFormat.subtypes!.map((CoordinateFormatMetadata _format) => _format.type).contains(typeToCheck);
}