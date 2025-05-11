//
//  Video.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<video>` element in SwiftHTML.
///
/// The `<video>` tag is used to embed video content in a web page. It supports multiple `<source>` tags for cross-browser compatibility.
///
/// ### Examples:
/// ```swift
/// Video {
///     Source(src: "intro.mp4", type: "video/mp4")
///     "Your browser does not support the video element."
/// }
/// ```
///
/// - Attributes:
///   - controls: Enables playback controls.
///   - autoplay: Starts playback automatically (optional).
///   - loop: Plays the video in a loop (optional).
///   - muted: Mutes audio by default (optional).
///   - poster: An image shown before the video plays.
///
/// - Note: You can include multiple `<source>` tags to support different video formats.
public struct Video<Content>: Element where Content: Node {
    /// The inner content of the `<video>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<video>` element with SwiftHTML nodes using a result builder.
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

