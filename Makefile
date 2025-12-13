.PHONY: help get build test coverage clean run analyze format

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

get: ## Get dependencies
	flutter pub get

build: ## Generate code (Freezed, Riverpod, JSON)
	dart run build_runner build --delete-conflicting-outputs

watch: ## Watch and generate code on changes
	dart run build_runner watch --delete-conflicting-outputs

test: ## Run all tests
	flutter test

coverage: ## Run tests with coverage report
	flutter test --coverage
	@echo "Coverage:"
	@awk -F: '/^LH:/{lh+=$$2} /^LF:/{lf+=$$2} END{printf "  Total: %d/%d (%.1f%%)\n", lh, lf, (lf>0 ? (lh/lf)*100 : 0)}' coverage/lcov.info

clean: ## Clean build artifacts
	flutter clean
	rm -rf coverage/

run: ## Run the app (requires OPENWEATHER_API_KEY)
	flutter run --dart-define=OPENWEATHER_API_KEY=$(OPENWEATHER_API_KEY)

run-dev: ## Run with a test API key placeholder
	flutter run --dart-define=OPENWEATHER_API_KEY=your_api_key_here

analyze: ## Run static analysis
	flutter analyze

format: ## Format code
	dart format lib/ test/

fix: ## Apply auto-fixes
	dart fix --apply

setup: get build ## Initial setup (get deps + generate code)
