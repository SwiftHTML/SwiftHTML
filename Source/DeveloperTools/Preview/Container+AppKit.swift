//
//  Container.swift
//  SwiftHTML
//
//  Created by Jeremicz Piotr on 09/05/2025.
//

#if canImport(AppKit)
@_exported import AppKit
import WebKit

/// A container view controller used for rendering HTML content in a `WKWebView`.
///
/// This class is specifically designed to support **SwiftHTML previews** within Xcode's `#Preview` system on macOS.
///
/// ### Usage
/// Use convenience `Container` initializer to wrap HTML output from SwiftHTML and preview it inside Xcode's canvas.
///
/// ```swift
/// #Preview {
///     Container {
///         P("Hello, world!")
///     }
/// }
/// ```
///
/// ### SwiftUI Compatibility
/// You may also define a parallel version of `Container` for use with SwiftUI-native previews. The file that contains the `Container` class declaration should only be associated with the **SwiftUI** app target.
///
/// ```swift
/// struct Container<Content>: View where Content: View {
///     let content: Content
///
///     init(@ViewBuilder content: () -> Content) {
///         self.content = content()
///     }
///
///     var body: some View {
///         content
///     }
/// }
/// ```
public final class Container: NSViewController {
    private let webView = WKWebView()
    private let htmlContent: String

    package init(html: String) {
        self.htmlContent = html
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func loadView() {
        webView.loadHTMLString(htmlContent, baseURL: nil)
        self.view = webView
    }
}
#endif
