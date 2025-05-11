//
//  Audio.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents the HTML `<audio>` element in SwiftHTML.
///
/// The `<audio>` tag is used to embed sound content, such as music or voice recordings, into a web page.
///
/// ### Examples:
/// ```swift
/// Audio {
///     Source(src: "song.mp3", type: "audio/mpeg")
///     "Your browser does not support the audio element."
/// }
/// ```
///
/// - Attributes:
///   - controls: Enables user controls (e.g. play, pause).
///   - autoplay: Starts playback automatically (optional).
///   - loop: Repeats the audio (optional).
///   - muted: Mutes the audio by default (optional).
///   - src: Can also be set directly without `<source>`, but not recommended for multiple formats.
public struct Audio<Content>: Element where Content: Node {
    /// The inner content of the `<audio>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<audio>` element with SwiftHTML nodes using a result builder.
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

