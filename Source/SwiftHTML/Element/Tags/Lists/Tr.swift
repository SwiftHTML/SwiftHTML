//
//  Tr.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<tr>` (table row) element in SwiftHTML.
///
/// The `<tr>` element is used to define a row of data in a table.
/// It contains one or more `<td>` (table data) elements or `<th>` (table header) elements that represent the columns of that row.
///
/// ### Examples:
/// ```swift
/// Table {
///     Tr {
///         Td("Row 1, Column 1")
///         Td("Row 1, Column 2")
///     }
///     Tr {
///         Td("Row 2, Column 1")
///         Td("Row 2, Column 2")
///     }
/// }
/// ```
///
/// - Note: Each `<tr>` defines a single row in a table, and it can contain `<td>` elements representing individual cells.
public struct Tr<Content>: Element where Content: Node {
    /// The inner content of the `<tr>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<tr>` element with SwiftHTML nodes using a result builder.
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
