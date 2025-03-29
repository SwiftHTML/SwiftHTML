//
//  H5.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

struct H5<Content>: Element where Content: Node {
    let content: Content
    
    init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some Node {
        content
    }
}
