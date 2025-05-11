//
//  Form.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<form>` element in SwiftHTML.
///
/// The `<form>` element is used to collect user input through controls like text fields, checkboxes, and buttons.
///
/// ### Examples:
/// ```swift
/// Form {
///     Label("Username:")
///     Input(type: "text", name: "username")
///     Button("Login")
/// }
/// ```
///
/// - Note: Attributes such as `action`, `method`, and `autocomplete` can be used to control form behavior.
public struct Form<Content>: Element where Content: Node {
    /// The inner content of the `<form>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<form>` element with SwiftHTML nodes using a result builder.
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
