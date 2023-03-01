release:
	swift package update && swift build -c release

install: release
	install .build/Release/mime /usr/local/bin/swift-mime

uninstall:
	rm /usr/local/bin/mime
