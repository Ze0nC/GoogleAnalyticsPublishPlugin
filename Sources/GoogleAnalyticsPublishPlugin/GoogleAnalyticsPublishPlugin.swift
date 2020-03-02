import Foundation
import Publish
import Plot

public extension Plugin {
    static func googleAnalytics(trackingID: String) -> Self {
        Plugin(name: "Google Analytics for Tracking ID \(trackingID)") { context in
            context.site.add(
                headNode: .script(
                    .attribute(named: "async", value: nil, ignoreIfValueIsEmpty: false),
                    .src("https://www.googletagmanager.com/gtag/js?id=\(trackingID)")
                )
            )
            
            context.site.add(
                headNode: .script(
                    .text("window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}gtag('js', new Date());gtag('config', '\(trackingID)');")
                )
            )
        }
    }
}
