//
//  Span.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<span>` element in SwiftHTML.
///
/// The `<span>` tag is an inline container with no semantic meaning. It's useful for styling or scripting small portions of text.
///
/// ### Examples:
/// ```swift
/// P {
///     "Click "
///     Span("here").class("link")
///     " to continue."
/// }
/// ```
///
/// - Tip: Ideal for targeting inline content with CSS or JavaScript.
public struct Span<Content>: Element where Content: Node {
    /// The inner content of the `<span>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<span>` element with SwiftHTML nodes using a result builder.
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
