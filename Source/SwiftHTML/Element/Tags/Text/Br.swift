//
//  Br.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<br>` (line break) element in SwiftHTML.
///
/// The `<br>` tag produces a line break in text, functioning similarly to pressing "Enter" in a word processor.
/// It is a self-closing tag and does not contain any content or children.
///
/// ### Examples:
/// ```swift
/// P {
///     "First line"
///     Br()
///     "Second line"
/// }
/// ```
///
/// - Note: `<br>` should be used sparingly and only when semantically appropriate.
///   Prefer CSS for layout or spacing when possible.
/// - Important: This element is self-closing and its body is defined as `Never`.
public struct Br: Element {
    /// The `<br>` tag has no body content.
    public typealias Body = Never
}

