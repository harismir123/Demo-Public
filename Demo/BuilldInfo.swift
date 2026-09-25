//
//  BuilldInfo.swift
//  SHADemo
//
//  Created by Malik Farrukh on 9/23/26.
//

import Foundation

struct BuildInfo {

    static let gitBranch: String = {
        Bundle.main.object(forInfoDictionaryKey: "GitBranch") as? String
        ?? "Unknown"
    }()

    static let gitCommit: String = {
        Bundle.main.object(forInfoDictionaryKey: "GitCommit") as? String
        ?? "Unknown"
    }()

    static let version: String = {
        Bundle.main.object(forInfoDictionaryKey: "BuildVersion") as? String
        ?? "Unknown"
    }()

    static let buildNumber: String = {
        Bundle.main.object(forInfoDictionaryKey: "BuildNumber") as? String
        ?? "Unknown"
    }()

    static let isIxGuardUsed: Bool = {
        Bundle.main.object(forInfoDictionaryKey: "IxGuardUsed") as? Bool
        ?? false
    }()
}
