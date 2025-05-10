//
//  Strong.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<strong>` element in SwiftHTML.
///
/// The `Strong` element is used to give importance to its content, typically rendering it in bold.
/// It is functionally similar to `<b>`, but carries semantic meaning for accessibility and SEO.
///
/// ### Examples:
/// Using a simple string:
/// ```swift
/// Strong("Important text")
/// ```
///
/// Using a node builder:
/// ```swift
/// Strong {
///     "Very "
///     Em { "important" }
///     " message."
/// }
/// ```
///
/// - Note: When initialized with a string, the generic `Content` is constrained to `String`.
public struct Strong<Content>: Element where Content: Node {
    /// The inner content of the `<strong>` tag, conforming to `Node`.
    let content: Content

    /// Initializes a `<strong>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes a `<strong>` element with plain text.
    ///
    /// - Parameter text: A string to be wrapped inside the element.
    public init(_ text: String) where Content == String {
        self.content = text
    }

    /// The body of the element, used for rendering its content.
    public var body: some Node {
        content
    }
}
