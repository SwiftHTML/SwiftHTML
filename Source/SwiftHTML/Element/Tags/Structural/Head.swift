//
//  Head.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<head>` element in SwiftHTML.
///
/// The `<head>` element contains metadata for the document, including `<title>`, `<meta>`, `<link>`,
/// and other non-visible settings.
///
/// ### Examples:
/// ```swift
/// Head {
///     Title("My Page")
///     Meta(charset: "utf-8")
/// }
/// ```
///
/// - Note: This tag is required in HTML documents and should appear once before `<body>`.
public struct Head<Content>: Element where Content: Node {
    /// The inner content of the `<head>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<head>` element with SwiftHTML nodes using a result builder.
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
