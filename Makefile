run-dev:
	flutter run --flavor dev
run-staging:
	flutter run --flavor staging
run-prod:
	flutter run --flavor prod
runner-build:
	flutter pub run build_runner build --delete-conflicting-outputs
clean:
	dart fix --apply