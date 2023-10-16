// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tabScreenViewModelHash() =>
    r'10d846c64d750e4d8e26c3175d4658a4b5ba8a3b';

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

abstract class _$TabScreenViewModel
    extends BuildlessAutoDisposeNotifier<TabScreenState> {
  late final TabScreenState initState;

  TabScreenState build({
    TabScreenState initState = const TabScreenState(),
  });
}

/// See also [TabScreenViewModel].
@ProviderFor(TabScreenViewModel)
const tabScreenViewModelProvider = TabScreenViewModelFamily();

/// See also [TabScreenViewModel].
class TabScreenViewModelFamily extends Family<TabScreenState> {
  /// See also [TabScreenViewModel].
  const TabScreenViewModelFamily();

  /// See also [TabScreenViewModel].
  TabScreenViewModelProvider call({
    TabScreenState initState = const TabScreenState(),
  }) {
    return TabScreenViewModelProvider(
      initState: initState,
    );
  }

  @override
  TabScreenViewModelProvider getProviderOverride(
    covariant TabScreenViewModelProvider provider,
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
  String? get name => r'tabScreenViewModelProvider';
}

/// See also [TabScreenViewModel].
class TabScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    TabScreenViewModel, TabScreenState> {
  /// See also [TabScreenViewModel].
  TabScreenViewModelProvider({
    TabScreenState initState = const TabScreenState(),
  }) : this._internal(
          () => TabScreenViewModel()..initState = initState,
          from: tabScreenViewModelProvider,
          name: r'tabScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tabScreenViewModelHash,
          dependencies: TabScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              TabScreenViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  TabScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final TabScreenState initState;

  @override
  TabScreenState runNotifierBuild(
    covariant TabScreenViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(TabScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: TabScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<TabScreenViewModel, TabScreenState>
      createElement() {
    return _TabScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TabScreenViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TabScreenViewModelRef on AutoDisposeNotifierProviderRef<TabScreenState> {
  /// The parameter `initState` of this provider.
  TabScreenState get initState;
}

class _TabScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<TabScreenViewModel,
        TabScreenState> with TabScreenViewModelRef {
  _TabScreenViewModelProviderElement(super.provider);

  @override
  TabScreenState get initState =>
      (origin as TabScreenViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
