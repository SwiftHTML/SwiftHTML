//
//  Em.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

public struct Em<Content>: Element where Content: Node {
    let content: Content
    
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    public init(_ text: String) where Content == String {
        self.content = text
    }
    
    public var body: some Node {
        content
    }
}
