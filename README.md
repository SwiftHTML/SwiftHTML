# SwiftHTML

SwiftHTML is a modern Swift library that brings the declarative syntax of SwiftUI to HTML generation. It allows developers to construct HTML documents using Swift's powerful type system, ensuring type safety and code clarity.

## Overview

SwiftHTML enables developers to build HTML structures in Swift using a declarative syntax reminiscent of SwiftUI. By leveraging Swift's type system, it ensures that the generated HTML is well-structured and less prone to errors.

## Motivation

The primary motivation behind SwiftHTML is to provide a Swift-native way to generate HTML, eliminating the need for string concatenation or external templating engines. This approach offers:

* **Type Safety**: Catch errors at compile-time rather than at runtime.
* **Readability**: A declarative syntax that mirrors the structure of the resulting HTML.
* **Reusability**: Leverage Swift's features like functions and generics to create reusable components.([GitHub][1])

## Package Structure

SwiftHTML is built around two core protocols:

* **Node**: Represents any HTML node, including text and elements.
* **Element**: A specialized Node that can contain child nodes.([GitHub][2])

Each HTML tag is represented as a Swift struct conforming to these protocols. For example:

```swift
struct P<Content>: Element where Content: Node {
    let content: Content

    init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some Node {
        content
    }
}
```


This design ensures that the HTML structure is constructed in a type-safe manner, reducing the likelihood of malformed HTML.

## Preview Support

To facilitate live previews of HTML content within SwiftUI, SwiftHTML includes a `DeveloperTools` target. This target provides a `Container` class that wraps a `WKWebView`, allowing developers to render HTML content in SwiftUI previews.

By integrating this container, you can seamlessly preview SwiftHTML-generated content alongside SwiftUI views.

## Roadmap

Planned enhancements for SwiftHTML include:

* **Expanded Tag Support**: Incorporate additional HTML tags and attributes.
* **Improved Documentation**: Provide comprehensive guides and examples.
* **Enhanced Preview Capabilities**: Support for more complex preview scenarios.
* **Community Contributions**: Encourage community involvement for feature requests and improvements.

## Getting Started

To use SwiftHTML in your project:

1. Add SwiftHTML as a dependency in your `Package.swift` file.
2. Import SwiftHTML in your Swift files.
3. Construct HTML content using the provided structs and protocols.

For detailed examples and usage, please refer to the [Examples](https://github.com/SwiftHTML/SwiftHTML/tree/main/Examples) directory.

## Contributing

Contributions are welcome! If you'd like to contribute to SwiftHTML, please fork the repository and submit a pull request. For major changes, please open an issue first to discuss what you'd like to change.

## License

SwiftHTML is released under the MIT License. See [LICENSE](https://github.com/SwiftHTML/SwiftHTML/blob/main/LICENSE) for details.
