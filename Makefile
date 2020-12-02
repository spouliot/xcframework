
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
	# The `-debug-symbols` option is new in xcode12 but it needs the full path - a partial one will fail
	# BCSymbols includes an UUID that change on each build and watchOS has more than one (arch related)
	xcodebuild -create-xcframework \
		-framework tmp/archive/ios.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/ios.xcarchive/dSYMs/Universal.framework.dSYM -debug-symbols `pwd`/tmp/archive/ios.xcarchive/BCSymbolMaps/*.bcsymbolmap \
		-framework tmp/archive/ios-sim.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/ios-sim.xcarchive/dSYMs/Universal.framework.dSYM \
		-framework tmp/archive/tvos.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/tvos.xcarchive/dSYMs/Universal.framework.dSYM -debug-symbols `pwd`/tmp/archive/tvos.xcarchive/BCSymbolMaps/*.bcsymbolmap \
		-framework tmp/archive/tvos-sim.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/tvos-sim.xcarchive/dSYMs/Universal.framework.dSYM \
		-framework tmp/archive/watchos.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/watchos.xcarchive/dSYMs/Universal.framework.dSYM $(addprefix -debug-symbols `pwd`/,$(wildcard tmp/archive/watchos.xcarchive/BCSymbolMaps/*.bcsymbolmap)) \
		-framework tmp/archive/watchos-sim.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/watchos-sim.xcarchive/dSYMs/Universal.framework.dSYM \
		-framework tmp/archive/macos-catalyst.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/macos-catalyst.xcarchive/dSYMs/Universal.framework.dSYM \
		-framework tmp/archive/macos.xcarchive/Products/Library/Frameworks/Universal.framework -debug-symbols `pwd`/tmp/archive/macos.xcarchive/dSYMs/Universal.framework.dSYM \
		-output Universal.xcframework

clean:
	rm -rf tmp/
	rm -rf Universal.xcframework
