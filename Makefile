test:
	swift test --parallel

test-with-coverage:
	swift test --parallel --enable-code-coverage

# arm64-apple-macosx
# x86_64-apple-macosx

code-coverage: test-with-coverage
	llvm-cov report \
        .build/arm64-apple-macosx/debug/MIMEPackageTests.xctest/Contents/MacOS/MIMEPackageTests \
        -instr-profile=.build/arm64-apple-macosx/debug/codecov/default.profdata \
        -ignore-filename-regex=".build|Tests" \
        -use-color

docs-preview:
	swift package --disable-sandbox preview-documentation --target MIME

docs-generate:
	swift package generate-documentation \
        --target MIME

docs-generate-static:
	swift package --disable-sandbox \
        generate-documentation \
        --transform-for-static-hosting \
        --hosting-base-path "MIME" \
        --target LiquidKit \
        --output-path ./docs

