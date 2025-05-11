//
//  Source.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<source>` element in SwiftHTML.
///
/// The `<source>` tag specifies multiple media resources for `<audio>` or `<video>` elements, enabling different formats for browser compatibility.
///
/// ### Examples:
/// ```swift
/// Video {
///     Source(src: "video.mp4", type: "video/mp4")
///     Source(src: "video.webm", type: "video/webm")
/// }
/// ```
///
/// - Important: This is a self-closing tag and must be a child of `<audio>` or `<video>`.
public struct Source: Element {
    /// The `<source>` tag has no body content.
    public typealias Body = Never
}
