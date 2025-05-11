//
//  Select.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<select>` element in SwiftHTML.
///
/// The `<select>` element creates a dropdown list of options. Each option should be provided using `<option>` tags (or their SwiftHTML equivalent).
///
/// ### Examples:
/// ```swift
/// Select {
///     Option("One", value: "1")
///     Option("Two", value: "2")
/// }
/// ```
///
/// - Tip: Combine with `<label>` for better accessibility.
/// - Note: You can use attributes like `multiple` to allow multiple selections.
public struct Select<Content>: Element where Content: Node {
    /// The inner content of the `<select>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<select>` element with SwiftHTML nodes using a result builder.
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
