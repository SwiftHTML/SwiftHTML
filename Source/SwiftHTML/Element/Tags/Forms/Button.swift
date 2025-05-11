//
//  Button.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

///
/// The `<button>` element defines a clickable button, which can be used to submit forms or trigger interactive behavior.
///
/// ### Examples:
/// ```swift
/// Button("Submit")
/// ```
///
/// ```swift
/// Button {
///     Strong("Click me")
/// }
/// ```
///
/// - Note: You can control the behavior using the `type` attribute (e.g., `"submit"`, `"reset"`, `"button"`).
public struct Button<Content>: Element where Content: Node {
    /// The inner content of the `<button>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<button>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<button>` element with plain text.
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
