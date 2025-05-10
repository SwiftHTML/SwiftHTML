//
//  Ul.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<ul>` (unordered list) element in SwiftHTML.
///
/// The `<ul>` element is used to define an unordered (bulleted) list.
/// List items are defined using `<li>` elements, and the list is typically rendered with bullet points or other markers.
///
/// ### Examples:
/// ```swift
/// Ul {
///     Li("Item 1")
///     Li("Item 2")
/// }
/// ```
///
/// - Note: Lists defined with `<ul>` are unordered, with each item being marked with a bullet by default.
public struct Ul<Content>: Element where Content: Node {
    /// The inner content of the `<ul>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<ul>` element with SwiftHTML nodes using a result builder.
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
