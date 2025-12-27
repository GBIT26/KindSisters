# Kind Sisters iOS App

A native SwiftUI application for the Kind Sisters nonprofit organization.

[![iOS](https://img.shields.io/badge/iOS-17.0%2B-blue.svg)](https://developer.apple.com/ios/)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-5.9-orange.svg)](https://developer.apple.com/xcode/swiftui/)
[![Swift](https://img.shields.io/badge/Swift-5.9-red.svg)](https://swift.org/)
[![Xcode](https://img.shields.io/badge/Xcode-15.0%2B-blue.svg)](https://developer.apple.com/xcode/)

## 📱 About This Project

This iOS application serves the Kind Sisters nonprofit organization, providing an accessible mobile platform for community engagement, volunteer coordination, and donation management. Built with SwiftUI, the app demonstrates modern iOS development practices while serving a meaningful social purpose.

### Key Features
- 🏠 **Home Dashboard** - Organization overview and quick access
- ℹ️ **About Section** - Mission, team, and organizational information  
- 📋 **Projects Hub** - Current initiatives and volunteer opportunities
- 📞 **Contact Interface** - Multi-channel communication options
- 💝 **Donation Portal** - Secure contribution and support options
- 🚪 **Quick Exit** - Safety feature for sensitive situations
- 🌙 **Dark Mode** - Automatic system theme support
- ♿ **Accessibility** - VoiceOver and Dynamic Type support

## 📖 Documentation

This project includes comprehensive documentation for academic and professional review:

- **[📋 TEACHER_REPORT.md](TEACHER_REPORT.md)** - Academic project summary and assessment
- **[🛠 DEVELOPMENT_REPORT.md](DEVELOPMENT_REPORT.md)** - Technical architecture and implementation details
- **[🎨 DESIGN_REPORT.md](DESIGN_REPORT.md)** - UI/UX design decisions and visual system
- **[📝 CHANGELOG.md](CHANGELOG.md)** - Complete version history and change tracking
- **[👀 PREVIEW_GUIDE.md](PREVIEW_GUIDE.md)** - Development workflow and preview setup

## 🚀 Quick Start

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

## 🏗 Development Workflow

### Repository Structure
```
KindSisters/
├── 📱 App Files
│   ├── KindSistersApp.swift          # App entry point
│   ├── ContentView.swift             # Navigation container
│   └── Package.swift                 # Swift package configuration
├── 🎨 Extensions
│   ├── Color+Theme.swift             # Brand color system
│   └── Font+Custom.swift             # Typography extensions
├── 📄 Views
│   ├── HomeView.swift                # Home dashboard
│   ├── AboutView.swift               # Organization info
│   ├── ProjectsView.swift            # Projects & events
│   ├── ContactView.swift             # Contact interface
│   └── DonateView.swift              # Donation portal
└── 📚 Documentation
    ├── README.md                     # This file
    ├── TEACHER_REPORT.md             # Academic summary
    ├── DEVELOPMENT_REPORT.md         # Technical documentation
    ├── DESIGN_REPORT.md              # Design system
    ├── CHANGELOG.md                  # Version history
    └── PREVIEW_GUIDE.md              # Development guide
```

### Version Control
This project uses Git for version control with the following setup:
- **Repository**: Private GitHub repository for educational purposes
- **Branching**: Main branch for production-ready code
- **Commits**: Descriptive commit messages following professional standards

### Code Quality Standards
- ✅ Swift naming conventions
- ✅ iOS Human Interface Guidelines compliance  
- ✅ SwiftUI best practices
- ✅ Accessibility implementation
- ✅ Performance optimization
- ✅ Comprehensive documentation

## 🎯 Project Goals & Achievements

### Educational Objectives Met
- [x] Native iOS development proficiency
- [x] SwiftUI framework mastery
- [x] Modern app architecture implementation
- [x] Professional documentation practices
- [x] Version control workflow
- [x] UI/UX design principles application

### Technical Skills Demonstrated
- **iOS Development**: Complete SwiftUI application with native features
- **Swift Programming**: Modern Swift language features and best practices
- **Architecture**: MVVM-adjacent pattern with clear separation of concerns
- **Design Systems**: Consistent brand implementation and component reusability
- **Documentation**: Technical writing and specification creation

## 🚀 Future Enhancement Opportunities

### Phase 2: Advanced Features
- Backend API integration for dynamic content
- User authentication and profile management
- Push notifications for events and updates
- Advanced animations and micro-interactions

### Phase 3: Platform Expansion  
- Apple Watch companion app
- iPad-optimized interface
- macOS Catalyst support
- Cross-platform sharing capabilities

## 📞 Support & Contact

### Academic Review
This project is available for educational assessment and review. For access to the private repository or additional documentation, please contact the development team.

### Technical Questions
For technical inquiries about the implementation, architecture, or development process, refer to the comprehensive documentation provided in this repository.

## 📄 License & Usage

This project is created for educational purposes as part of academic coursework. The codebase demonstrates professional development practices and serves as a portfolio piece for iOS development skills.

---

**Project Type**: Educational/Portfolio Demonstration  
**Development Period**: December 2024  
**Technologies**: SwiftUI, Swift, iOS 17+, Xcode 15+  
**Status**: Complete and Ready for Review
