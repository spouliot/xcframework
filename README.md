# xcframework
A simple xcframework sample for testing purpose

## Docs

* [WWDC 2019 Binary Frameworks in Swift](https://developer.apple.com/videos/play/wwdc2019/416/)

## Tree

```
Universal.xcframework/
├── Info.plist
├── ios-arm64
│   ├── Universal.framework
│   │   ├── Headers
│   │   │   └── Universal.h
│   │   ├── Info.plist
│   │   ├── Modules
│   │   │   └── module.modulemap
│   │   ├── Universal
│   │   └── _CodeSignature
│   │       └── CodeResources
│   └── dSYMs
│       └── Universal.framework.dSYM
│           └── Contents
│               ├── Info.plist
│               └── Resources
│                   └── DWARF
│                       └── Universal
├── ios-arm64_x86_64-simulator
│   ├── Universal.framework
│   │   ├── Headers
│   │   │   └── Universal.h
│   │   ├── Info.plist
│   │   ├── Modules
│   │   │   └── module.modulemap
│   │   ├── Universal
│   │   └── _CodeSignature
│   │       └── CodeResources
│   └── dSYMs
│       └── Universal.framework.dSYM
│           └── Contents
│               ├── Info.plist
│               └── Resources
│                   └── DWARF
│                       └── Universal
├── ios-x86_64-maccatalyst
│   ├── Universal.framework
│   │   ├── Headers -> Versions/Current/Headers
│   │   ├── Modules -> Versions/Current/Modules
│   │   ├── Resources -> Versions/Current/Resources
│   │   ├── Universal -> Versions/Current/Universal
│   │   └── Versions
│   │       ├── A
│   │       │   ├── Headers
│   │       │   │   └── Universal.h
│   │       │   ├── Modules
│   │       │   │   └── module.modulemap
│   │       │   ├── Resources
│   │       │   │   └── Info.plist
│   │       │   ├── Universal
│   │       │   └── _CodeSignature
│   │       │       └── CodeResources
│   │       └── Current -> A
│   └── dSYMs
│       └── Universal.framework.dSYM
│           └── Contents
│               ├── Info.plist
│               └── Resources
│                   └── DWARF
│                       └── Universal
├── macos-x86_64
│   ├── Universal.framework
│   │   ├── Headers -> Versions/Current/Headers
│   │   ├── Modules -> Versions/Current/Modules
│   │   ├── Resources -> Versions/Current/Resources
│   │   ├── Universal -> Versions/Current/Universal
│   │   └── Versions
│   │       ├── A
│   │       │   ├── Headers
│   │       │   │   └── Universal.h
│   │       │   ├── Modules
│   │       │   │   └── module.modulemap
│   │       │   ├── Resources
│   │       │   │   └── Info.plist
│   │       │   ├── Universal
│   │       │   └── _CodeSignature
│   │       │       └── CodeResources
│   │       └── Current -> A
│   └── dSYMs
│       └── Universal.framework.dSYM
│           └── Contents
│               ├── Info.plist
│               └── Resources
│                   └── DWARF
│                       └── Universal
├── tvos-arm64
│   ├── Universal.framework
│   │   ├── Headers
│   │   │   └── Universal.h
│   │   ├── Info.plist
│   │   ├── Modules
│   │   │   └── module.modulemap
│   │   ├── Universal
│   │   └── _CodeSignature
│   │       └── CodeResources
│   └── dSYMs
│       └── Universal.framework.dSYM
│           └── Contents
│               ├── Info.plist
│               └── Resources
│                   └── DWARF
│                       └── Universal
├── tvos-arm64_x86_64-simulator
│   ├── Universal.framework
│   │   ├── Headers
│   │   │   └── Universal.h
│   │   ├── Info.plist
│   │   ├── Modules
│   │   │   └── module.modulemap
│   │   ├── Universal
│   │   └── _CodeSignature
│   │       └── CodeResources
│   └── dSYMs
│       └── Universal.framework.dSYM
│           └── Contents
│               ├── Info.plist
│               └── Resources
│                   └── DWARF
│                       └── Universal
├── watchos-arm64_32_armv7k
│   ├── Universal.framework
│   │   ├── Headers
│   │   │   └── Universal.h
│   │   ├── Info.plist
│   │   ├── Modules
│   │   │   └── module.modulemap
│   │   ├── Universal
│   │   └── _CodeSignature
│   │       └── CodeResources
│   └── dSYMs
│       └── Universal.framework.dSYM
│           └── Contents
│               ├── Info.plist
│               └── Resources
│                   └── DWARF
│                       └── Universal
└── watchos-arm64_x86_64-simulator
    ├── Universal.framework
    │   ├── Headers
    │   │   └── Universal.h
    │   ├── Info.plist
    │   ├── Modules
    │   │   └── module.modulemap
    │   ├── Universal
    │   └── _CodeSignature
    │       └── CodeResources
    └── dSYMs
        └── Universal.framework.dSYM
            └── Contents
                ├── Info.plist
                └── Resources
                    └── DWARF
                        └── Universal

94 directories, 59 files
```

## Info.plist

> /usr/libexec/PlistBuddy -c print Universal.xcframework/Info.plist 

```
Dict {
    AvailableLibraries = Array {
        Dict {
            SupportedPlatform = watchos
            DebugSymbolsPath = dSYMs
            SupportedPlatformVariant = simulator
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = watchos-arm64_x86_64-simulator
        }
        Dict {
            SupportedPlatform = macos
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = macos-x86_64
        }
        Dict {
            SupportedPlatform = watchos
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                arm64_32
                armv7k
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = watchos-arm64_32_armv7k
        }
        Dict {
            SupportedPlatform = ios
            DebugSymbolsPath = dSYMs
            SupportedPlatformVariant = maccatalyst
            SupportedArchitectures = Array {
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-x86_64-maccatalyst
        }
        Dict {
            SupportedPlatform = tvos
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                arm64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = tvos-arm64
        }
        Dict {
            SupportedPlatform = ios
            DebugSymbolsPath = dSYMs
            SupportedPlatformVariant = simulator
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-arm64_x86_64-simulator
        }
        Dict {
            SupportedPlatform = ios
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                arm64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-arm64
        }
        Dict {
            SupportedPlatform = tvos
            DebugSymbolsPath = dSYMs
            SupportedPlatformVariant = simulator
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = tvos-arm64_x86_64-simulator
        }
    }
    CFBundlePackageType = XFWK
    XCFrameworkFormatVersion = 1.0
}
```
