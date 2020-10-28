
all: ios tvos watchos macos Universal.xcframework

ios:
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -destination=iOS -archivePath tmp/archive/ios -derivedDataPath tmp/ios -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -destination="iOS Simulator" -archivePath tmp/archive/ios-sim -derivedDataPath tmp/ios-sim -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

tvos:
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -destination=tvOS -archivePath tmp/archive/tvos -derivedDataPath tmp/tvos -sdk appletvos SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -destination="tvOS Simulator" -archivePath tmp/archive/tvos-sim -derivedDataPath tmp/tvos-sim -sdk appletvsimulator SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

watchos:
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -destination=watchOS -archivePath tmp/archive/watchos -derivedDataPath tmp/watchos -sdk watchos SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -destination="watchOS Simulator" -archivePath tmp/archive/watchos-sim -derivedDataPath tmp/watchos-sim -sdk watchsimulator SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

macos:
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -archivePath tmp/archive/macos-catalyst -derivedDataPath tmp/macos-catalyst -sdk macosx SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES SUPPORTS_MACCATALYST=YES
	xcodebuild -project Universal/Universal.xcodeproj archive -scheme Universal -archivePath tmp/archive/macos -derivedDataPath tmp/macos -sdk macosx SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

Universal.xcframework:
	xcodebuild -create-xcframework \
		-framework tmp/archive/ios.xcarchive/Products/Library/Frameworks/Universal.framework \
		-framework tmp/archive/ios-sim.xcarchive/Products/Library/Frameworks/Universal.framework \
		-framework tmp/archive/tvos.xcarchive/Products/Library/Frameworks/Universal.framework \
		-framework tmp/archive/tvos-sim.xcarchive/Products/Library/Frameworks/Universal.framework \
		-framework tmp/archive/watchos.xcarchive/Products/Library/Frameworks/Universal.framework \
		-framework tmp/archive/watchos-sim.xcarchive/Products/Library/Frameworks/Universal.framework \
		-framework tmp/archive/macos-catalyst.xcarchive/Products/Library/Frameworks/Universal.framework \
		-framework tmp/archive/macos.xcarchive/Products/Library/Frameworks/Universal.framework \
		-output Universal.xcframework

clean:
	rm -rf tmp/
	rm -rf Universal.xcframework
