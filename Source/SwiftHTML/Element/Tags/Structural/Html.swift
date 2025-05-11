//
//  Html.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the root `<html>` element in SwiftHTML.
///
/// The `<html>` element is the top-level container of every HTML document. It wraps both the `<head>` and `<body>` sections.
///
/// ### Examples:
/// ```swift
/// Html {
///     Head { ... }
///     Body { ... }
/// }
/// ```
///
/// - Important: This should be the root element in every HTML page.
public struct Html<Content>: Element where Content: Node {
    /// The inner content of the `<html>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<html>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// The body of the element, used for rendering its content.
    public var body: some Node {
        content
    }
}
