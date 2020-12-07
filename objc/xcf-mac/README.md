# Mac Sample using Objective-C

## Tree

```
.
├── Info.plist
├── Products
│   └── Applications
│       └── xcf-mac.app
│           └── Contents
│               ├── Frameworks
│               │   └── Universal.framework
│               │       ├── Resources -> Versions/Current/Resources
│               │       ├── Universal -> Versions/Current/Universal
│               │       └── Versions
│               │           ├── A
│               │           │   ├── Resources
│               │           │   │   └── Info.plist
│               │           │   ├── Universal
│               │           │   └── _CodeSignature
│               │           │       └── CodeResources
│               │           └── Current -> A
│               ├── Info.plist
│               ├── MacOS
│               │   └── xcf-mac
│               ├── PkgInfo
│               ├── Resources
│               │   └── Base.lproj
│               │       └── Main.storyboardc
│               │           ├── Info.plist
│               │           ├── MainMenu.nib
│               │           ├── NSWindowController-B8D-0N-5wS.nib
│               │           └── XfG-lQ-9wD-view-m2S-Jp-Qdl.nib
│               └── _CodeSignature
│                   └── CodeResources
├── SCMBlueprint
└── dSYMs
    ├── Universal.framework.dSYM
    │   └── Contents
    │       ├── Info.plist
    │       └── Resources
    │           └── DWARF
    │               └── Universal
    └── xcf-mac.app.dSYM
        └── Contents
            ├── Info.plist
            └── Resources
                └── DWARF
                    └── xcf-mac

27 directories, 17 files
```
