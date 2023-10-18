.PHONY: setup
setup:
	fvm flutter pub get
	fvm flutter pub run flutter_launcher_icons

.PHONY: generate
generate:
	fvm flutter pub get
	fvm flutter pub run flutter_launcher_icons
	dart run flutter_native_splash:create

.PHONY: gen
gen:
	fvm flutter pub get
	fvm flutter pub run build_runner build --delete-conflicting-outputs
