//
//  SharedFramework.swift
//  SharedFramework
//
//  Created by Samuel Giddins on 5/15/22.
//

import Foundation

var legacyObject: LegacyClass {
    return LegacyClass()
}

public func returnsTrue() -> Bool { legacyObject.returnsYES() }
public func returnsFalse() -> Bool { legacyObject.returnsNO() }

@objc public class SwiftSharedClass: NSObject {
    public override init() {}
    @objc public var one: Int = 1
}
