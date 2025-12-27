# Quick Preview Guide

## Fastest Way to Preview (30 seconds)

### In Xcode:

1. **Open Xcode** on your Mac

2. **Open any view file**, for example:
   ```
   KindSisters/Views/HomeView.swift
   ```

3. **Show the Canvas** (if not visible):
   - Menu: Editor → Canvas
   - Or press: `Option + Command + Return`

4. **Click "Resume"** in the canvas panel
   - You'll see a live preview of the view!

5. **Switch between views**:
   - Open `AboutView.swift` to see the team page
   - Open `ProjectsView.swift` to see projects
   - Open `DonateView.swift` to see donation form
   - Each has a `#Preview` at the bottom

### Run Full App in Simulator:

1. Open `KindSistersApp.swift` or `ContentView.swift`
2. Select a device (e.g., "iPhone 15 Pro") from the top toolbar
3. Press the ▶️ Play button or `Command + R`
4. The app will launch in the iOS Simulator

## What You'll See

### Home Tab
- Hero image with mission statement
- Three action cards (Volunteer, Donate, Projects)
- "Our Mission" section with description
- Testimonials carousel
- Newsletter signup
- Corporate sponsors list

### About Tab
- "Our People" header
- Team backstory with image
- Three team member cards (Jody, Penny, Alison)
- Volunteer and Donate buttons

### Projects Tab
- Project cards (Essentials Relief Bags, Community Connect)
- Photo gallery
- Local support network listings

### Contact Tab
- Contact information
- Message form with fields
- Newsletter signup section

### Donate Tab
- Donation amount selector
- One-time vs Monthly toggle
- Impact message
- Containers for Change info

## Preview Individual Components

Each view file ends with:
```swift
#Preview {
    HomeView()
}
```

You can modify this to test different states:
```swift
#Preview {
    NavigationStack {
        HomeView()
    }
}
```

## Interactive Preview

In the Xcode Canvas preview:
- ✅ Scroll through content
- ✅ Click buttons (won't navigate but shows interaction)
- ✅ Switch between tabs in ContentView
- ✅ See AsyncImages load (requires internet)
- ✅ Test different device sizes

## Switch Device Size

In the preview canvas, click the device name to switch:
- iPhone 15 Pro Max (large)
- iPhone 15 Pro (medium)
- iPhone SE (small)
- iPad Pro (tablet)

## Live Preview Tips

**Make changes in real-time:**
1. With preview running, edit the code
2. Changes appear instantly in the canvas
3. Try changing colors, text, or spacing

**Example - Change a color:**
```swift
// In HomeView.swift, find:
.foregroundColor(.ksPink)

// Change to:
.foregroundColor(.ksOrange)

// Preview updates immediately!
```

## No Xcode? Alternative Options

If you don't have Xcode installed:

1. **Install Xcode** (free from Mac App Store)
   - Requires: Mac with macOS Sonoma or later
   - Download size: ~7 GB
   - Installation time: 15-30 minutes

2. **Use Swift Playgrounds** (iPad/Mac)
   - Limited functionality
   - Copy individual view code
   - Simpler preview environment

## Expected Behavior

✅ **Working:**
- Tab navigation
- Scrolling
- Form inputs (typing)
- Button highlighting
- Image loading from URLs

⚠️ **Preview Limitations:**
- Forms don't submit (no backend)
- Navigation between tabs works
- External links don't open
- This is a UI prototype

## Having Issues?

**Preview says "Cannot preview"**
- Solution: Click "Try Again" or "Diagnostics"

**Build failed**
- Solution: Clean build (`Shift + Command + K`)

**Canvas not showing**
- Solution: Editor → Canvas

**Code completion slow**
- Solution: Close and reopen Xcode

## Next Steps

Once you can preview:
1. ✅ Navigate between all 5 tabs
2. ✅ Scroll through each view
3. ✅ Check responsiveness on different devices
4. ✅ Test form inputs
5. ✅ Verify color scheme matches design

Ready to preview? Open `ContentView.swift` in Xcode and click Resume! 🎉
