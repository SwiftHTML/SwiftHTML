//
//  Meta.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the `<meta>` element in SwiftHTML.
///
/// The `<meta>` tag provides metadata such as character set, viewport settings, and SEO-related tags.
///
/// ### Examples:
/// ```swift
/// Meta(name: "viewport", content: "width=device-width, initial-scale=1.0")
/// ```
///
/// - Important: This is a self-closing tag and usually placed in `<head>`.
public struct Meta: Element {
    /// The `<meta>` tag has no body content.
    public typealias Body = Never
}
