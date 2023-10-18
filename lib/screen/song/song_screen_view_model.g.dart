// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$songScreenViewModelHash() =>
    r'3d09f08403c18214300e1a1cef1962bcae42a4a4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SongScreenViewModel
    extends BuildlessAutoDisposeNotifier<SongScreenState> {
  late final SongScreenState initState;

  SongScreenState build({
    SongScreenState initState = const SongScreenState(),
  });
}

/// See also [SongScreenViewModel].
@ProviderFor(SongScreenViewModel)
const songScreenViewModelProvider = SongScreenViewModelFamily();

/// See also [SongScreenViewModel].
class SongScreenViewModelFamily extends Family<SongScreenState> {
  /// See also [SongScreenViewModel].
  const SongScreenViewModelFamily();

  /// See also [SongScreenViewModel].
  SongScreenViewModelProvider call({
    SongScreenState initState = const SongScreenState(),
  }) {
    return SongScreenViewModelProvider(
      initState: initState,
    );
  }

  @override
  SongScreenViewModelProvider getProviderOverride(
    covariant SongScreenViewModelProvider provider,
  ) {
    return call(
      initState: provider.initState,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'songScreenViewModelProvider';
}

/// See also [SongScreenViewModel].
class SongScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    SongScreenViewModel, SongScreenState> {
  /// See also [SongScreenViewModel].
  SongScreenViewModelProvider({
    SongScreenState initState = const SongScreenState(),
  }) : this._internal(
          () => SongScreenViewModel()..initState = initState,
          from: songScreenViewModelProvider,
          name: r'songScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$songScreenViewModelHash,
          dependencies: SongScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              SongScreenViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  SongScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final SongScreenState initState;

  @override
  SongScreenState runNotifierBuild(
    covariant SongScreenViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(SongScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SongScreenViewModelProvider._internal(
        () => create()..initState = initState,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initState: initState,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SongScreenViewModel, SongScreenState>
      createElement() {
    return _SongScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SongScreenViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SongScreenViewModelRef
    on AutoDisposeNotifierProviderRef<SongScreenState> {
  /// The parameter `initState` of this provider.
  SongScreenState get initState;
}

class _SongScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<SongScreenViewModel,
        SongScreenState> with SongScreenViewModelRef {
  _SongScreenViewModelProviderElement(super.provider);

  @override
  SongScreenState get initState =>
      (origin as SongScreenViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
