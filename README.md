# WAActionSheetController
WAActionSheetController let you create actionsheet that similar to WhatsApp where you can input image and change label font.

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate WAActionSheetController into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'WAActionSheetController', '~> 0.1.2'
```

## Usage

```Swift
let alert = WAActionSheetController()
alert.addAction(title: "Do Action", titleTextColor: nil, titleFont: nil, icon: nil, iconColor: nil) { (action) in
    print("Clicked!")
}

alert.addSystemAction(title: "Cancel", style: .cancel, handler: nil)
self.present(alert, animated: true, completion: nil)
```
