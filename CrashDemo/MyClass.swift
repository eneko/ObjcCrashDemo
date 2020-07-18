//
//  MyClass.swift
//  CrashDemo
//
//  Created by Eneko Alonso on 7/17/20.
//

import Foundation

@objc
class SwiftModel: NSObject {
    @objc var date: Date?
}

@objc
class MyClass: NSObject {
    @objc
    func crashNow(date: Date) {
        print("Crashing on \(date)")
    }
}
