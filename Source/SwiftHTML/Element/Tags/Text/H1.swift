//
//  H1.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

public struct H1<Content>: Element where Content: Node {
    let content: Content
    
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some Node {
        content
    }
}
