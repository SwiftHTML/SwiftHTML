//
//  H5.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<h5>` (heading level 5) element in SwiftHTML.
///
/// The `H5` element is used for deeply nested headings, such as sub-subsections.
///
/// ### Examples:
/// ```swift
/// H5("Note")
/// ```
///
/// ```swift
/// H5 {
///     "Optional "
///     Em("configuration")
/// }
/// ```
public struct H5<Content>: Element where Content: Node {
    /// The inner content of the `<h5>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<h5>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<h5>` element with plain text.
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
