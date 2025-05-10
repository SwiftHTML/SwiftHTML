//
//  Table.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<table>` (table) element in SwiftHTML.
///
/// The `<table>` element is used to represent tabular data.
/// It typically contains rows (`<tr>`) and columns (`<td>` or `<th>`),
/// and is often used for displaying data in a structured grid.
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
/// - Note: Tables may also contain header rows (`<th>`) and can be styled with CSS for better appearance.
public struct Table<Content>: Element where Content: Node {
    /// The inner content of the `<table>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<table>` element with SwiftHTML nodes using a result builder.
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
