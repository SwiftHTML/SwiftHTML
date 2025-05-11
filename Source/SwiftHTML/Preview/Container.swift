//
//  Container.swift
//  SwiftHTML
//
//  Created by Jeremicz Piotr on 09/05/2025.
//

@_exported
import DeveloperTools

public extension Container {
    /// Initializes a `Container` with HTML content generated from a `NodeBuilder` closure.
    ///
    /// This initializer allows you to pass SwiftHTML nodes directly using a `@NodeBuilder`
    /// closure. It converts the resulting node into an HTML string and loads it into the WebView.
    ///
    /// - Parameter content: A closure that returns a SwiftHTML `Node`.
    ///
    /// ### Example:
    /// ```swift
    /// #Preview {
    ///     Container {
    ///         Div {
    ///             H1 { "Hello, world!" }
    ///             P { "This is a SwiftHTML preview." }
    ///         }
    ///     }
    /// }
    /// ```
    convenience init<Content>(
        @NodeBuilder _ content: () -> Content
    ) where Content: Node {
        self.init(html: content().description)
    }
}
