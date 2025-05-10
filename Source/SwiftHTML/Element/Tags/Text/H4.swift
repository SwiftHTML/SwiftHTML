//
//  H4.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<h4>` (heading level 4) element in SwiftHTML.
///
/// The `H4` element is used for subheadings below an `H3` heading, often to organize finer content detail.
///
/// ### Examples:
/// ```swift
/// H4("Technical Details")
/// ```
///
/// ```swift
/// H4 {
///     "API "
///     Code("v1.2")
/// }
/// ```
public struct H4<Content>: Element where Content: Node {
    /// The inner content of the `<h4>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<h4>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<h4>` element with plain text.
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
