//
//  H1.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<h1>` (heading level 1) element in SwiftHTML.
///
/// The `H1` element defines the most important heading on the page.
/// It is typically used once per page to represent the main title or purpose of the document,
/// and is important for accessibility and search engine optimization (SEO).
///
/// ### Examples:
/// Using a simple string:
/// ```swift
/// H1("Welcome to My Site")
/// ```
///
/// Using a node builder:
/// ```swift
/// H1 {
///     "Welcome to "
///     Strong("SwiftHTML")
/// }
/// ```
///
/// - Note: When initialized with a string, the generic `Content` is constrained to `String`.
public struct H1<Content>: Element where Content: Node {
    /// The inner content of the `<h1>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<h1>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<h1>` element with plain text.
    ///
    /// - Parameter text: A string to be wrapped inside the heading.
    public init(_ text: String) where Content == String {
        self.content = text
    }

    /// The body of the heading, used for rendering its content.
    public var body: some Node {
        content
    }
}
