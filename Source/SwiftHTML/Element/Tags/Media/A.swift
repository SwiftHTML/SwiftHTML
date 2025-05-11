//
//  A.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<a>` (anchor) element in SwiftHTML.
///
/// The `<a>` tag defines a hyperlink that links one page to another. It can also be used for anchor links and downloadable content.
///
/// ### Examples:
/// ```swift
/// A(href: "https://example.com") {
///     "Visit Example"
/// }
/// ```
///
/// - Parameters:
///   - href: The URL the hyperlink points to.
///   - target: (Optional) Specifies where to open the linked document (e.g., `_blank`).
///   - rel: (Optional) Specifies the relationship between the current and linked documents.
/// - Tip: Often styled with `:hover` or `:visited` in CSS.
public struct A<Content>: Element where Content: Node {
    /// The inner content of the `<a>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<a>` element with SwiftHTML nodes using a result builder.
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

