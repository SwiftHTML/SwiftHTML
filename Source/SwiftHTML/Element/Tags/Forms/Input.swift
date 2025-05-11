//
//  P.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<input>` element in SwiftHTML.
///
/// The `<input>` element is a versatile control used in forms to accept user input.
/// This element is self-closing and can be configured with attributes like `type`, `name`, `value`, and more.
///
/// ### Examples:
/// ```swift
/// Input(type: "text", name: "username")
/// Input(type: "checkbox", name: "rememberMe")
/// ```
///
/// - Important: `Input` is a self-closing tag. It does not contain child content.
/// - Note: Different input types (e.g., `"text"`, `"password"`, `"email"`, `"submit"`) produce different UI behaviors.
public struct Input: Element {
    /// The `<input>` tag has no body content.
    public typealias Body = Never
}
