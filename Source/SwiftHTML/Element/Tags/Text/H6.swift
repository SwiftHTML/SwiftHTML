//
//  H6.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<h6>` (heading level 6) element in SwiftHTML.
///
/// The `H6` element is the least prominent heading level and is typically used for very fine document structure.
///
/// ### Examples:
/// ```swift
/// H6("Footer Note")
/// ```
///
/// ```swift
/// H6 {
///     "Last Updated: 2025-05-10"
/// }
/// ```
public struct H6<Content>: Element where Content: Node {
    /// The inner content of the `<h6>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<h6>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<h6>` element with plain text.
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
