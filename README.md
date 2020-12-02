# xcframework
A simple xcframework sample for testing purpose

## Docs

* [WWDC 2019 Binary Frameworks in Swift](https://developer.apple.com/videos/play/wwdc2019/416/)

## Tree

```
Universal.xcframework/
├── Info.plist
├── ios-arm64
│   ├── BCSymbolMaps
│   │   └── 70773BD0-5F33-3DA9-B5C8-3BD3C40EFAE6.bcsymbolmap
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
├── ios-arm64_x86_64-maccatalyst
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
├── macos-arm64_x86_64
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
│   ├── BCSymbolMaps
│   │   └── CF0F42BE-4538-39F9-982D-644FA5E2E462.bcsymbolmap
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
│   ├── BCSymbolMaps
│   │   ├── 9E7FD72F-BA71-36C6-85CC-CE1D04758A7A.bcsymbolmap
│   │   └── A9A90270-B5EF-33B1-BCB4-D433FD205664.bcsymbolmap
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

97 directories, 63 files
```

## Info.plist

> /usr/libexec/PlistBuddy -c print Universal.xcframework/Info.plist 

```
Dict {
    AvailableLibraries = Array {
        Dict {
            SupportedPlatform = tvos
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                arm64
            }
            BitcodeSymbolMapsPath = BCSymbolMaps
            LibraryPath = Universal.framework
            LibraryIdentifier = tvos-arm64
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
            SupportedPlatform = ios
            DebugSymbolsPath = dSYMs
            SupportedPlatformVariant = maccatalyst
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-arm64_x86_64-maccatalyst
        }
        Dict {
            SupportedPlatform = macos
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                arm64
                x86_64
            }
            LibraryPath = Universal.framework
            LibraryIdentifier = macos-arm64_x86_64
        }
        Dict {
            SupportedPlatform = ios
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                arm64
            }
            BitcodeSymbolMapsPath = BCSymbolMaps
            LibraryPath = Universal.framework
            LibraryIdentifier = ios-arm64
        }
        Dict {
            SupportedPlatform = watchos
            DebugSymbolsPath = dSYMs
            SupportedArchitectures = Array {
                arm64_32
                armv7k
            }
            BitcodeSymbolMapsPath = BCSymbolMaps
            LibraryPath = Universal.framework
            LibraryIdentifier = watchos-arm64_32_armv7k
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
    }
    CFBundlePackageType = XFWK
    XCFrameworkFormatVersion = 1.0
}
```
