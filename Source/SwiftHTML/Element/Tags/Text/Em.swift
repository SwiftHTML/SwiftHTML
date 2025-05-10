//
//  Em.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<em>` (emphasis) element in SwiftHTML.
///
/// The `Em` element is used to emphasize text, typically rendered in *italics*.
/// Unlike `<i>`, the `<em>` tag carries semantic meaning — it indicates stress emphasis,
/// making it more meaningful for screen readers and search engines.
///
/// ### Examples:
/// Using a simple string:
/// ```swift
/// Em("Important note")
/// ```
///
/// Using a node builder:
/// ```swift
/// Em {
///     "This is "
///     Strong("very")
///     " important."
/// }
/// ```
///
/// - Important: Emphasis with `<em>` can be nested to increase emphasis level (e.g., `<em><em>text</em></em>`).
/// - Note: When initialized with a string, the generic `Content` is constrained to `String`.
public struct Em<Content>: Element where Content: Node {
    /// The inner content of the `<em>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<em>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<em>` element with plain text.
    ///
    /// - Parameter text: A string to be wrapped inside the emphasis element.
    public init(_ text: String) where Content == String {
        self.content = text
    }

    /// The body of the element, used for rendering its content.
    public var body: some Node {
        content
    }
}

