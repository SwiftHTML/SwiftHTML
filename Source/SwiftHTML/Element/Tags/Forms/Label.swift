//
//  Label.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<label>` element in SwiftHTML.
///
/// The `<label>` element defines a label for an `<input>` element and improves accessibility and form usability.
///
/// ### Examples:
/// ```swift
/// Label("Email:")
/// Input(type: "email", name: "email")
/// ```
///
/// ```swift
/// Label {
///     Text("Password")
///     Input(type: "password", name: "pwd")
/// }
/// ```
///
/// - Tip: Use the `for` attribute to explicitly associate the label with a specific input ID.
public struct Label<Content>: Element where Content: Node {
    /// The inner content of the `<label>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<label>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<label>` element with plain text.
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
