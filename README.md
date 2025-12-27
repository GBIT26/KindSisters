# Kind Sisters - Community Support Website

A responsive website for Kind Sisters, a grass-roots nonprofit organization dedicated to serving vulnerable groups of people and those suffering hardship in the City of Stirling and surrounding areas in Perth, Western Australia.

[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

## 🌟 About Kind Sisters

Kind Sisters is committed to **creating space for community** by providing essential support services, resources, and safe spaces for individuals and families facing difficult circumstances.

### Our Mission
Supporting vulnerable communities and individuals facing hardship through compassionate, grass-roots initiatives that create lasting positive change.

### Our Services
- Housing support and resources
- Food security programs  
- Skills training and development workshops
- Crisis support and emergency assistance
- Family and children's services
- Community outreach and partnerships

## 🚀 Website Features

### Technical Implementation
- **Responsive Design**: Mobile-first approach using Bootstrap 5
- **Accessibility**: WCAG compliant with screen reader support
- **Safety Features**: Quick exit functionality for user safety
- **Contact Forms**: Working contact forms via Formspree integration
- **Performance**: Optimized loading and modern web standards

### Key Components
- **Hero Section**: Custom CSS with community-focused imagery
- **Program Showcase**: Interactive cards highlighting services
- **Contact System**: Functional contact forms with validation
- **Donation Interface**: Clear donation options and alternative support methods
- **Safety Features**: Quick exit and accessibility considerations

## 💻 Technology Stack

- **Frontend**: HTML5, CSS3, Bootstrap 5
- **Fonts**: Google Fonts (Red Hat Text, La Belle Aurore)
- **Icons**: Font Awesome 6
- **Forms**: Formspree for contact form processing
- **Hosting**: GitHub Pages ready
- **Version Control**: Git with comprehensive change tracking

## 🎨 Design System

### Brand Colors
- **KS Pink**: `#D42278` (Primary brand color)
- **KS Orange**: `#FF7F50` (Accent color)
- **Light Pink**: `#F8E8F1` (Background elements)
- **Dark Pink**: `#B01A5B` (Hover states)

### Typography
- **Primary Font**: Red Hat Text (Body text, headings)
- **Accent Font**: La Belle Aurore (Hero title, decorative elements)

## 📱 Responsive Breakpoints

- **Desktop**: 1200px and up
- **Tablet**: 768px - 1199px
- **Mobile**: Below 768px

All components are fully responsive with mobile-first design principles.

## 🛡️ Safety & Accessibility Features

### Safety
- **Quick Exit Button**: Immediate redirect to Google for user safety
- **Keyboard Shortcut**: Triple ESC key press for quick exit
- **Discreet Navigation**: User safety considerations throughout

### Accessibility
- **ARIA Labels**: Comprehensive screen reader support
- **Keyboard Navigation**: Full keyboard accessibility
- **Color Contrast**: WCAG AA compliant contrast ratios
- **Focus States**: Clear focus indicators for all interactive elements
- **Semantic HTML**: Proper heading structure and semantic markup

## 🚀 Development Setup

1. **Clone Repository**:
   ```bash
   git clone https://github.com/GBIT26/KindSisters.git
   cd KindSisters
   ```

2. **Local Development**:
   - Open `index.html` in a web browser
   - Or use a local server: `python -m http.server 8000`

3. **GitHub Pages Deployment**:
   - Repository is configured for GitHub Pages
   - Automatic deployment from main branch
   - Access at: `https://gbit26.github.io/KindSisters/`

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
