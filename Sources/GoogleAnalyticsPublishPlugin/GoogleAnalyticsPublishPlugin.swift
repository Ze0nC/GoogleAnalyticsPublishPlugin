import Foundation
import Publish
import Plot

public extension Plugin {
    static func googleAnalytics(trackingID: String) -> Self {
        Plugin(name: "Google Analytics for Tracking ID \(trackingID)") { context in
            Node<HTML.DocumentContext>.additionalWholeSiteHeadNodes.append(contentsOf:
                [.raw("<!-- Global site tag (gtag.js) - Google Analytics -->"),
                .raw("<script async src=\"https://www.googletagmanager.com/gtag/js?id=\(trackingID)\"></script>"),
                .script(.text("""
                    window.dataLayer = window.dataLayer || [];
                    function gtag(){dataLayer.push(arguments);}
                    gtag('js', new Date());

                    gtag('config', '\(trackingID)');
                """))
            ])
        }
    }
}
