.PHONY: clean wipe build build-for-cocoapods test

default: clean build

clean:
	swift package clean

wipe:
	rm -rf .build

build:
	swift build -c release

build-cli:
	swift build --product apollo-ios-cli -c release

build-cli-universal:
	swift build --product apollo-ios-cli -c release --arch arm64 --arch x86_64

build-cli-for-cocoapods:
	swift build --product apollo-ios-cli -c release -Xswiftc -DCOCOAPODS

test: 
	swift test
