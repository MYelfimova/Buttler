//
//  Node.swift
//  Buttler
//
//  Created by Maria Yelfimova on 27/04/2021.
//

import Foundation

final class Node<Value> {
    var value: Value
    private(set) var children: [Node]
    
    // total recursive number of children - in case it will ever be needed
    var count: Int {
        1 + children.reduce(0) { $0 + $1.count }
    }
    
    // computed property for my-only children
    var countChildren: Int {
        children.count
    }
    
    init(_ value: Value) {
        self.value = value
        self.children = []
    }
    
    init(_ value: Value, children: [Node]) {
        self.value = value
        self.children = children
    }
    
    init(_ value: Value, @NodeBuilder builder: () -> [Node]) {
        self.value = value
        self.children = builder()
    }
    
    func add(child: Node) {
        children.append(child)
    }
}

extension Node: Equatable where Value: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        lhs.value == rhs.value && lhs.children == rhs.children
    }
}
extension Node: Hashable where Value: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
        hasher.combine(children)
    }
}

// for later use for api-calls and networking
extension Node: Codable where Value: Codable {}

// for descriptive print-output
extension Node : ReflectedStringConvertible {}

// for finding specific node
extension Node where Value: Equatable {
    func find(_ value: Value) -> Node? {
        if self.value == value {
            return self
        }
        
        for child in children {
            if let match = child.find(value) {
                return match
            }
        }
        
        return nil
    }
}

// for confy nodes building
@_functionBuilder
struct NodeBuilder {
    static func buildBlock<Value>(_ children: Node<Value>...) -> [Node<Value>] {
        children
    }
}

