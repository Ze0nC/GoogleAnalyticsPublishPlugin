# GoogleAnalyticsPublishPlugin

A plugin for enabling [Google Analytics](https://analytics.google.com/) when using  Publish](https://github.com/johnsundell/publish). 

## Note
**Important**
This plugin does not work on official [Publish](https://github.com/johnsundell/publish) yet.

Rather, it needs a [forked version of Publish](https://github.com/Ze0nC/publish) by now. 

Use at your own risk. 

## Installation
Add `GoogleAnalyticsPublishPlugin` to your package. 

```swift
let package = Package(
    ...
    dependencies: [
    .package(url: "https://github.com/Ze0nC/GoogleAnalyticsPublishPlugin", .branch("master"))
    ],
    targets: [
        .target(
            ...
            dependencies: [
                ...
                "GoogleAnalyticsPublishPlugin"
            ]
        )
    ]
    ...
)
```

## Usage

1. Get your Tracking ID for your site at [Google Analytics](https://analytics.google.com/).

2. Add the plugin with Tracking ID to your build pipeline (before HTML files are generated). 

```swift
import GoogleAnalyticsPublishPlugin
...
try MyWebsite().publish(using: [
    .addMarkdownFiles(),
    .installPlugin(.googleAnalytics(trackingID: "YOUR-TRACKING-ID")),
    ...
    .generateHTML(withTheme: .foundation),
    ...
])
```

Done!

## License
MIT License

