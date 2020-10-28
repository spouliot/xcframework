# xcframework
A simple xcframework sample for testing purpose

## Tree

```
Universal.xcframework/
├── Info.plist
├── ios-arm64
│   └── Universal.framework
│       ├── Headers
│       │   └── Universal.h
│       ├── Info.plist
│       ├── Modules
│       │   └── module.modulemap
│       ├── Universal
│       └── _CodeSignature
│           └── CodeResources
├── ios-arm64_x86_64-simulator
│   └── Universal.framework
│       ├── Headers
│       │   └── Universal.h
│       ├── Info.plist
│       ├── Modules
│       │   └── module.modulemap
│       ├── Universal
│       └── _CodeSignature
│           └── CodeResources
├── ios-x86_64-maccatalyst
│   └── Universal.framework
│       ├── Headers -> Versions/Current/Headers
│       ├── Modules -> Versions/Current/Modules
│       ├── Resources -> Versions/Current/Resources
│       ├── Universal -> Versions/Current/Universal
│       └── Versions
│           ├── A
│           │   ├── Headers
│           │   │   └── Universal.h
│           │   ├── Modules
│           │   │   └── module.modulemap
│           │   ├── Resources
│           │   │   └── Info.plist
│           │   ├── Universal
│           │   └── _CodeSignature
│           │       └── CodeResources
│           └── Current -> A
├── macos-x86_64
│   └── Universal.framework
│       ├── Headers -> Versions/Current/Headers
│       ├── Modules -> Versions/Current/Modules
│       ├── Resources -> Versions/Current/Resources
│       ├── Universal -> Versions/Current/Universal
│       └── Versions
│           ├── A
│           │   ├── Headers
│           │   │   └── Universal.h
│           │   ├── Modules
│           │   │   └── module.modulemap
│           │   ├── Resources
│           │   │   └── Info.plist
│           │   ├── Universal
│           │   └── _CodeSignature
│           │       └── CodeResources
│           └── Current -> A
├── tvos-arm64
│   └── Universal.framework
│       ├── Headers
│       │   └── Universal.h
│       ├── Info.plist
│       ├── Modules
│       │   └── module.modulemap
│       ├── Universal
│       └── _CodeSignature
│           └── CodeResources
├── tvos-arm64_x86_64-simulator
│   └── Universal.framework
│       ├── Headers
│       │   └── Universal.h
│       ├── Info.plist
│       ├── Modules
│       │   └── module.modulemap
│       ├── Universal
│       └── _CodeSignature
│           └── CodeResources
├── watchos-arm64_32_armv7k
│   └── Universal.framework
│       ├── Headers
│       │   └── Universal.h
│       ├── Info.plist
│       ├── Modules
│       │   └── module.modulemap
│       ├── Universal
│       └── _CodeSignature
│           └── CodeResources
└── watchos-arm64_x86_64-simulator
    └── Universal.framework
        ├── Headers
        │   └── Universal.h
        ├── Info.plist
        ├── Modules
        │   └── module.modulemap
        ├── Universal
        └── _CodeSignature
            └── CodeResources

54 directories, 43 files
```

## Info.plist

> /usr/libexec/PlistBuddy -c print Universal.xcframework/Info.plist 

```
Dict {
    AvailableLibraries = Array {
        Dict {
            SupportedPlatform = watchos
            SupportedArchitectures = Array {
                arm64_32
                armv7k
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = watchos-arm64_32_armv7k
        }
        Dict {
            SupportedPlatform = ios
            SupportedPlatformVariant = simulator
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-arm64_x86_64-simulator
        }
        Dict {
            SupportedPlatform = macos
            SupportedArchitectures = Array {
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = macos-x86_64
        }
        Dict {
            SupportedPlatform = ios
            SupportedPlatformVariant = maccatalyst
            SupportedArchitectures = Array {
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-x86_64-maccatalyst
        }
        Dict {
            SupportedPlatform = tvos
            SupportedPlatformVariant = simulator
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = tvos-arm64_x86_64-simulator
        }
        Dict {
            SupportedPlatform = ios
            SupportedArchitectures = Array {
                arm64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-arm64
        }
        Dict {
            SupportedPlatform = watchos
            SupportedPlatformVariant = simulator
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = watchos-arm64_x86_64-simulator
        }
        Dict {
            SupportedPlatform = tvos
            SupportedArchitectures = Array {
                arm64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = tvos-arm64
        }
    }
    CFBundlePackageType = XFWK
    XCFrameworkFormatVersion = 1.0
}
```
