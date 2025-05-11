//
//  Hr.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents a horizontal rule `<hr>` element in SwiftHTML.
///
/// The `<hr>` tag creates a thematic break between paragraphs or sections of content.
///
/// ### Examples:
/// ```swift
/// Hr()
/// ```
///
/// - Important: This is a self-closing tag and does not contain content.
public struct Hr: Element {
    /// The `<hr>` tag has no body content.
    public typealias Body = Never
}
