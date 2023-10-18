// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$liveScreenViewModelHash() =>
    r'e8dafaa68983969fabde560abc891e32f4c7e502';

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

abstract class _$LiveScreenViewModel
    extends BuildlessAutoDisposeNotifier<LiveScreenState> {
  late final LiveScreenState initState;

  LiveScreenState build({
    LiveScreenState initState = const LiveScreenState(),
  });
}

/// See also [LiveScreenViewModel].
@ProviderFor(LiveScreenViewModel)
const liveScreenViewModelProvider = LiveScreenViewModelFamily();

/// See also [LiveScreenViewModel].
class LiveScreenViewModelFamily extends Family<LiveScreenState> {
  /// See also [LiveScreenViewModel].
  const LiveScreenViewModelFamily();

  /// See also [LiveScreenViewModel].
  LiveScreenViewModelProvider call({
    LiveScreenState initState = const LiveScreenState(),
  }) {
    return LiveScreenViewModelProvider(
      initState: initState,
    );
  }

  @override
  LiveScreenViewModelProvider getProviderOverride(
    covariant LiveScreenViewModelProvider provider,
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
  String? get name => r'liveScreenViewModelProvider';
}

/// See also [LiveScreenViewModel].
class LiveScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    LiveScreenViewModel, LiveScreenState> {
  /// See also [LiveScreenViewModel].
  LiveScreenViewModelProvider({
    LiveScreenState initState = const LiveScreenState(),
  }) : this._internal(
          () => LiveScreenViewModel()..initState = initState,
          from: liveScreenViewModelProvider,
          name: r'liveScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$liveScreenViewModelHash,
          dependencies: LiveScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              LiveScreenViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  LiveScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final LiveScreenState initState;

  @override
  LiveScreenState runNotifierBuild(
    covariant LiveScreenViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(LiveScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: LiveScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<LiveScreenViewModel, LiveScreenState>
      createElement() {
    return _LiveScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LiveScreenViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LiveScreenViewModelRef
    on AutoDisposeNotifierProviderRef<LiveScreenState> {
  /// The parameter `initState` of this provider.
  LiveScreenState get initState;
}

class _LiveScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<LiveScreenViewModel,
        LiveScreenState> with LiveScreenViewModelRef {
  _LiveScreenViewModelProviderElement(super.provider);

  @override
  LiveScreenState get initState =>
      (origin as LiveScreenViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
