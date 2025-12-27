# Kind Sisters iOS App

A native SwiftUI application for the Kind Sisters nonprofit organization.

## Preview the App

### Option 1: Xcode Preview (Recommended)

1. **Open in Xcode:**
   - Open Xcode on your Mac
   - File → Open → Select the `KindSisters` folder
   - Or drag the folder into Xcode

2. **Preview Individual Views:**
   - Open any view file (e.g., `Views/HomeView.swift`)
   - Click the "Resume" button in the preview canvas (right side)
   - Or press: `Option + Command + P`

3. **Run in Simulator:**
   - Select a device from the scheme selector (e.g., iPhone 15 Pro)
   - Press `Command + R` to build and run

### Option 2: Quick Preview with Xcode Playground

1. Create a new Xcode Playground
2. Copy the content from any view file
3. Add this at the top:
```swift
import SwiftUI
import PlaygroundSupport

// Paste view code here

PlaygroundPage.current.setLiveView(HomeView())
```

### Option 3: Create New Xcode Project

If the files don't open directly:

1. **Create New Project:**
   - Open Xcode
   - File → New → Project
   - Choose "App" template
   - Product Name: "KindSisters"
   - Interface: SwiftUI
   - Language: Swift

2. **Replace Files:**
   - Delete the default `ContentView.swift`
   - Drag all files from this folder into your project
   - Ensure "Copy items if needed" is checked

3. **Run the App:**
   - Select your target device
   - Press `Command + R`

## Project Structure

```
KindSisters/
├── KindSistersApp.swift      # App entry point
├── ContentView.swift          # Main TabView navigation
├── Extensions/
│   ├── Color+Theme.swift      # Brand colors
│   └── Font+Custom.swift      # Custom fonts
└── Views/
    ├── HomeView.swift         # Home screen
    ├── AboutView.swift        # About/Team screen
    ├── ProjectsView.swift     # Projects & Events
    ├── ContactView.swift      # Contact form
    └── DonateView.swift       # Donation screen
```

## Requirements

- iOS 17.0+
- Xcode 15.0+
- macOS Sonoma or later

## Features

✅ Native SwiftUI components  
✅ TabView navigation  
✅ AsyncImage for remote images  
✅ Responsive layouts  
✅ Dark mode support (system)  
✅ Safe area handling  
✅ Quick Exit safety feature  

## Color Scheme

- **KS Pink**: #D42278
- **KS Light Pink**: #D54D88  
- **KS Orange**: #EF8E04
- **KS Lighter Orange**: #FFD79F

## Quick Start

The fastest way to see the app:

1. Open `Views/HomeView.swift` in Xcode
2. Enable Canvas preview (Editor → Canvas)
3. Click "Resume" button

Each view file has a `#Preview` at the bottom for instant previewing!

## Troubleshooting

**Preview not working?**
- Clean build folder: `Shift + Command + K`
- Restart Xcode
- Check that macOS and Xcode are up to date

**Build errors?**
- Ensure iOS deployment target is set to 17.0+
- Check that all files are included in the target

**Images not loading?**
- Images use AsyncImage with URLs
- Requires internet connection to load
- Placeholders shown while loading

## Support

This is a prototype/demonstration app built from the Kind Sisters website design.
