//
//  H2.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<h2>` (heading level 2) element in SwiftHTML.
///
/// The `H2` element is used for second-level headings, typically to structure sections beneath the main title.
///
/// ### Examples:
/// ```swift
/// H2("Features")
/// ```
///
/// ```swift
/// H2 {
///     "Section: "
///     Em("Details")
/// }
/// ```
public struct H2<Content>: Element where Content: Node {
    /// The inner content of the `<h2>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<h2>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<h2>` element with plain text.
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
