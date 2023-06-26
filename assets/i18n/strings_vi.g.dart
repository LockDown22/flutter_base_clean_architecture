part of 'strings.g.dart';

// Path: <root>
class _StringsVi implements BaseTranslations<AppLocale, _StringsVi> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, _StringsVi> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsVi _root = this; // ignore: unused_field

	// Translations
	late final _StringsStringsVi strings = _StringsStringsVi._(_root);
}

// Path: strings
class _StringsStringsVi {
	_StringsStringsVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
}
