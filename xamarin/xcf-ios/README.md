# Build

> msbuild -p:Configuration=Release -p:Platform=iPhone -p:ArchiveOnBuild=true -bl:xcf-ios.binlog 

# Tree

```
bin/iPhone/Release/
├── Universal.framework.dSYM
│   └── Contents
│       ├── Info.plist
│       └── Resources
│           └── DWARF
│               └── Universal
├── bundler.stamp
├── iTunesMetadata.plist
├── xcf_ios.app
│   ├── AppIcon60x60@2x.png
│   ├── AppIcon76x76@2x~ipad.png
│   ├── Assets.car
│   ├── Frameworks
│   │   └── Universal.framework
│   │       ├── Headers
│   │       │   └── Universal.h
│   │       ├── Info.plist
│   │       ├── Modules
│   │       │   └── module.modulemap
│   │       ├── Universal
│   │       └── _CodeSignature
│   │           └── CodeResources
│   ├── Info.plist
│   ├── LaunchScreen.storyboardc
│   │   ├── 01J-lp-oVM-view-Ze5-6b-2t3.nib
│   │   ├── Info.plist
│   │   └── UIViewController-01J-lp-oVM.nib
│   ├── Main.storyboardc
│   │   ├── BYZ-38-t0r-view-8bC-Xf-vdC.nib
│   │   ├── Info.plist
│   │   └── UIViewController-BYZ-38-t0r.nib
│   ├── PkgInfo
│   ├── System.aotdata.arm64
│   ├── System.dll
│   ├── Watch
│   │   └── xcf-watchWatchOSApp.app
│   │       ├── Info.plist
│   │       ├── Interface-notification.plist
│   │       ├── Interface.plist
│   │       ├── PkgInfo
│   │       ├── PlugIns
│   │       │   └── xcf-watchWatchOSExtension.appex
│   │       │       ├── Frameworks
│   │       │       │   └── Universal.framework
│   │       │       │       ├── Headers
│   │       │       │       │   └── Universal.h
│   │       │       │       ├── Info.plist
│   │       │       │       ├── Modules
│   │       │       │       │   └── module.modulemap
│   │       │       │       ├── Universal
│   │       │       │       └── _CodeSignature
│   │       │       │           └── CodeResources
│   │       │       ├── Info.plist
│   │       │       ├── PushNotificationPayload.json
│   │       │       ├── System.aotdata.armv7k
│   │       │       ├── System.dll
│   │       │       ├── Xamarin.WatchOS.aotdata.armv7k
│   │       │       ├── Xamarin.WatchOS.dll
│   │       │       ├── _CodeSignature
│   │       │       │   └── CodeResources
│   │       │       ├── archived-expanded-entitlements.xcent
│   │       │       ├── embedded.mobileprovision
│   │       │       ├── mscorlib.aotdata.armv7k
│   │       │       ├── mscorlib.dll
│   │       │       ├── xcf-watchWatchOSExtension
│   │       │       ├── xcf-watchWatchOSExtension.aotdata.armv7k
│   │       │       └── xcf-watchWatchOSExtension.dll
│   │       ├── _CodeSignature
│   │       │   └── CodeResources
│   │       ├── _WatchKitStub
│   │       │   └── WK
│   │       ├── archived-expanded-entitlements.xcent
│   │       ├── embedded.mobileprovision
│   │       └── xcf-watchWatchOSApp
│   ├── Xamarin.iOS.aotdata.arm64
│   ├── Xamarin.iOS.dll
│   ├── _CodeSignature
│   │   └── CodeResources
│   ├── archived-expanded-entitlements.xcent
│   ├── embedded.mobileprovision
│   ├── mscorlib.aotdata.arm64
│   ├── mscorlib.dll
│   ├── xcf_ios
│   ├── xcf_ios.aotdata.arm64
│   └── xcf_ios.exe
├── xcf_ios.app.dSYM
│   └── Contents
│       ├── Info.plist
│       └── Resources
│           └── DWARF
│               └── xcf_ios
├── xcf_ios.app.mSYM
│   ├── 0c3d4da7367647c9a650750b1a4d0c53
│   │   ├── mscorlib.dll
│   │   └── mscorlib.pdb
│   ├── 5c16f83af3194c11a8ecedffcb5479e6
│   │   ├── Xamarin.iOS.dll
│   │   └── Xamarin.iOS.pdb
│   ├── 888abd975859258569e4b4cd913ccb28
│   │   └── xcf_ios.exe.msym
│   ├── c00e8e56dc9244bcb74e385bb57e9a59
│   │   ├── System.dll
│   │   └── System.pdb
│   ├── d7bfc5ffd0f05f39dc9d33c188d8d4d4
│   │   └── mscorlib.dll.msym
│   ├── db2ae7be037e1f394d992ebc71d3e07d
│   │   └── Xamarin.iOS.dll.msym
│   ├── dbe37277b2e72845fe62addf91242bbd
│   │   └── System.dll.msym
│   └── manifest.xml
└── xcf_ios.exe

37 directories, 74 files
```