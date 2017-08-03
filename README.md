# Imp
Imp is a tiny yet useful Xcode extension for sorting import statements in a file.

## Supported languages
Objective-C, Swift

## Features

- [x] Basic import sorting
- [ ] The class header on top
- [ ] Split frameworks and headers imports
- [ ] Sorting selected lines
- [ ] Settings

If you have an idea for a new feature, please file an issue and tell me more.

## Installation

### Demo way
Clone and Run the project with Xcode >= 8 (make sure the App and the Extension are signed with your developer account)

### Right way
1. Open ``Imp.xcodeproj``
2. Sign both the Application and the Extension using your own developer account
3. Product > Archive
4. Right click archive > Show in Finder
5. Right click archive > Show Package Contents
6. Open Products, Applications
7. Drag ``Imp.app`` to your Applications folder
8. Run ``Imp.app`` and close it (the app need to be run at least once)
9. Go to System Preferences -> Extensions and check if ``Imp Tools`` is enabled in Xcode Source Editor section (or ``Imp`` in All section)
10. ``Imp Tools`` should now be available from Xcode's Editor menu

## Enjoy!
For any questions or feedbacks, feel free to contact me directly via Telegram: @alexxxander