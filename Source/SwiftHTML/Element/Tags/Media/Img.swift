//
//  Img.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<img>` element in SwiftHTML.
///
/// The `<img>` tag embeds an image in the document. It is a self-closing element and does not contain content.
///
/// ### Examples:
/// ```swift
/// Img(src: "logo.png", alt: "Company Logo")
/// ```
///
/// - Attributes:
///   - src: URL of the image file.
///   - alt: Alternative text shown if image fails to load (important for accessibility).
///   - width/height: Optional dimensions.
///   - loading: Can be `"lazy"` for performance improvements.
///
/// - Important: This is a self-closing tag.
public struct Img: Element {
    /// The `<img>` tag has no body content.
    public typealias Body = Never
}
