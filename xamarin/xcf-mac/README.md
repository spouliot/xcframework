# Build

> msbuild -p:Configuration=Release -p:ArchiveOnBuild=true -bl:xcf-mac.binlog 

# Tree

```
xcf-mac poupou$ tree bin/Release/xcf-mac.app/
bin/Release/xcf-mac.app/
└── Contents
    ├── Frameworks
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
    ├── Info.plist
    ├── MacOS
    │   └── xcf-mac
    ├── MonoBundle
    │   ├── System.dll
    │   ├── Universal
    │   ├── Xamarin.Mac.dll
    │   ├── config
    │   ├── libmono-native.dylib
    │   ├── mscorlib.dll
    │   └── xcf-mac.exe
    ├── PkgInfo
    ├── Resources
    │   ├── AppIcon.icns
    │   ├── Assets.car
    │   ├── Main.storyboardc
    │   │   ├── Info.plist
    │   │   ├── MainMenu.nib
    │   │   ├── NSWindowController-B8D-0N-5wS.nib
    │   │   └── XfG-lQ-9wD-view-m2S-Jp-Qdl.nib
    │   ├── archived-expanded-entitlements.xcent
    │   └── runtime-options.plist
    └── _CodeSignature
        └── CodeResources

18 directories, 25 files
```