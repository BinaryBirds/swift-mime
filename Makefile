release:
	swift package update && swift build -c release

install: release
	install .build/Release/mime-cli /usr/local/bin/mime

uninstall:
	rm /usr/local/bin/mime
