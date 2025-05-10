//
//  Td.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<td>` (table data) element in SwiftHTML.
///
/// The `<td>` element represents a single cell within a table and is typically used within a `<tr>` (table row).
/// It contains data that corresponds to the intersection of a row and column in a table.
///
/// ### Examples:
/// ```swift
/// Tr {
///     Td("Cell 1")
///     Td("Cell 2")
/// }
/// ```
///
/// - Note: A table row (`<tr>`) contains one or more `<td>` elements that hold the data for each column in that row.
public struct Td<Content>: Element where Content: Node {
    /// The inner content of the `<td>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<td>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<td>` element with plain text.
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
