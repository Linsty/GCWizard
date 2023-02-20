part of 'package:gc_wizard/tools/wherigo/wherigo_analyze/widget/wherigo_analyze.dart';

List<List<String>> buildOutputListOfItemData(BuildContext context, WherigoItemData data) {
  List<List<String>> result = [];
  if (wherigoExpertMode)
    result = buildOutputListOfItemDataExpertMode(context, data);
  else
    result = buildOutputListOfItemDataUserMode(context, data);

  if (data.ItemLocation == 'ZonePoint')
    result.add([
      i18n(context, 'wherigo_output_location'),
      formatCoordOutput(
          LatLng(data.ItemZonepoint.Latitude, data.ItemZonepoint.Longitude), defaultCoordFormat(), defaultEllipsoid())
    ]);
  else
    result.add([i18n(context, 'wherigo_output_location'), data.ItemLocation]);

  result.add([
    i18n(context, 'wherigo_output_container'),
    data.ItemContainer +
        (data.ItemContainer != ''
            ? (NameToObject[data.ItemContainer] != null ? ' ⬌ ' + NameToObject[data.ItemContainer]!.ObjectName : '')
            : '')
  ]);
  return result;
}

List<List<String>> buildOutputListOfItemDataUserMode(BuildContext context, WherigoItemData data) {
  return [
    [i18n(context, 'wherigo_output_name'), data.ItemName],
    [i18n(context, 'wherigo_output_description'), data.ItemDescription],
  ];
}

List<List<String>> buildOutputListOfItemDataExpertMode(BuildContext context, WherigoItemData data) {
  return [
    [i18n(context, 'wherigo_output_luaname'), data.ItemLUAName],
    [i18n(context, 'wherigo_output_id'), data.ItemID],
    [i18n(context, 'wherigo_output_name'), data.ItemName],
    [i18n(context, 'wherigo_output_description'), data.ItemDescription],
    [i18n(context, 'wherigo_output_visible'), data.ItemVisible],
    [
      i18n(context, 'wherigo_output_medianame'),
      data.ItemMedia +
          (data.ItemMedia != ''
              ? (NameToObject[data.ItemMedia] != null ? ' ⬌ ' + NameToObject[data.ItemMedia]!.ObjectName : '')
              : '')
    ],
    [
      i18n(context, 'wherigo_output_iconname'),
      data.ItemIcon +
          (data.ItemIcon != ''
              ? (NameToObject[data.ItemIcon] != null ? ' ⬌ ' + NameToObject[data.ItemIcon]!.ObjectName : '')
              : '')
    ],
    [i18n(context, 'wherigo_output_locked'), data.ItemLocked],
    [i18n(context, 'wherigo_output_opened'), data.ItemOpened],
  ];
}

