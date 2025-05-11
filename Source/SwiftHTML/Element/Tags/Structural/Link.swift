//
//  Link.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<link>` element in SwiftHTML.
///
/// The `<link>` tag defines the relationship between the current document and an external resource, most commonly used to link to stylesheets.
///
/// ### Examples:
/// ```swift
/// Link(rel: "stylesheet", href: "/styles.css")
/// ```
///
/// - Important: This is a self-closing tag and must appear inside the `<head>` element.
public struct Link: Element {
    /// The `<link>` tag has no body content.
    public typealias Body = Never
}
