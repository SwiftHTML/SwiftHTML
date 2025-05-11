//
//  Div.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<div>` element in SwiftHTML.
///
/// The `<div>` tag is a generic container for flow content. It has no semantic meaning
/// and is commonly used for grouping elements and applying styles or layout logic.
///
/// ### Examples:
/// ```swift
/// Div {
///     P("Inside a div")
/// }
/// ```
///
/// - Tip: Use with CSS classes or Flexbox/Grid for layout.
public struct Div<Content>: Element where Content: Node {
    /// The inner content of the `<div>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<div>` element with SwiftHTML nodes using a result builder.
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
