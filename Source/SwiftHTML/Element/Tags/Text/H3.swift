//
//  H3.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<h3>` (heading level 3) element in SwiftHTML.
///
/// The `H3` element is used for third-level headings, typically under an `H2` section.
///
/// ### Examples:
/// ```swift
/// H3("Usage Instructions")
/// ```
///
/// ```swift
/// H3 {
///     "Step "
///     Strong("1")
/// }
/// ```
public struct H3<Content>: Element where Content: Node {
    /// The inner content of the `<h3>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<h3>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<h3>` element with plain text.
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
