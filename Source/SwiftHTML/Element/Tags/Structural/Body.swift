//
//  Body.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<body>` element in SwiftHTML.
///
/// The `<body>` element contains all the visible content of a web page—such as headings, paragraphs, images, links, tables, and more.
///
/// ### Examples:
/// ```swift
/// Body {
///     H1("Welcome")
///     P("This is the main content of the page.")
/// }
/// ```
///
/// - Note: There must only be one `<body>` element in a valid HTML document.
public struct Body<Content>: Element where Content: Node {
    /// The inner content of the `<body>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<body>` element with SwiftHTML nodes using a result builder.
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
