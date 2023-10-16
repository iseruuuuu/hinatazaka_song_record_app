// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeScreenViewModelHash() =>
    r'b6f8250bbbba0edb7f73f7b550d1236f677a496b';

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

abstract class _$HomeScreenViewModel
    extends BuildlessAutoDisposeNotifier<HomeScreenState> {
  late final HomeScreenState initState;

  HomeScreenState build({
    HomeScreenState initState = const HomeScreenState(),
  });
}

/// See also [HomeScreenViewModel].
@ProviderFor(HomeScreenViewModel)
const homeScreenViewModelProvider = HomeScreenViewModelFamily();

/// See also [HomeScreenViewModel].
class HomeScreenViewModelFamily extends Family<HomeScreenState> {
  /// See also [HomeScreenViewModel].
  const HomeScreenViewModelFamily();

  /// See also [HomeScreenViewModel].
  HomeScreenViewModelProvider call({
    HomeScreenState initState = const HomeScreenState(),
  }) {
    return HomeScreenViewModelProvider(
      initState: initState,
    );
  }

  @override
  HomeScreenViewModelProvider getProviderOverride(
    covariant HomeScreenViewModelProvider provider,
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
  String? get name => r'homeScreenViewModelProvider';
}

/// See also [HomeScreenViewModel].
class HomeScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    HomeScreenViewModel, HomeScreenState> {
  /// See also [HomeScreenViewModel].
  HomeScreenViewModelProvider({
    HomeScreenState initState = const HomeScreenState(),
  }) : this._internal(
          () => HomeScreenViewModel()..initState = initState,
          from: homeScreenViewModelProvider,
          name: r'homeScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeScreenViewModelHash,
          dependencies: HomeScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              HomeScreenViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  HomeScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final HomeScreenState initState;

  @override
  HomeScreenState runNotifierBuild(
    covariant HomeScreenViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(HomeScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<HomeScreenViewModel, HomeScreenState>
      createElement() {
    return _HomeScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeScreenViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomeScreenViewModelRef
    on AutoDisposeNotifierProviderRef<HomeScreenState> {
  /// The parameter `initState` of this provider.
  HomeScreenState get initState;
}

class _HomeScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<HomeScreenViewModel,
        HomeScreenState> with HomeScreenViewModelRef {
  _HomeScreenViewModelProviderElement(super.provider);

  @override
  HomeScreenState get initState =>
      (origin as HomeScreenViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
