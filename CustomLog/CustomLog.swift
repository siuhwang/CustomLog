//
//  CustomLog.swift
//  CustomLog
//
//  Created by Siu on 9/9/23.
//

import Foundation

// MARK: - 커스텀 로그

/// 커스텀 로그 단일 아이템 출력
func log(title:String, content: Any, logType: LogType, object: AnyObject, function: String = #function, line: Int = #line) {
    
    print("")
    print("---")
    print("LOG) \(logType.rawValue) \(logType) \n  [ \(title) ] : [ \(content) ], \n  위치 : \(type(of: object)), \n  함수 : \(function), \n  줄 : \(line)")
    print("---")
}

/// 커스텀 로그 다중 아이템 출력
func log(dictionary: Dictionary<String, Any>, logType: LogType, object: AnyObject, function: String = #function, line: Int = #line) {
    
    print("")
    print("---")
    print("LOG) \(logType.rawValue) \(logType)")
    for (index, dict) in dictionary.enumerated() {
        print("  \(index+1). [ \(dict.key) ] : [ \(dict.value) ]")
    }
    print("  위치 : \(type(of: object)), \n  함수 : \(function), \n  줄 : \(line)")
    print("---")
}

/// 커스텀 로그 타입
enum LogType: String {
    case verbose = "🟦"
    case info = "🟩"
    case debug = "🟧"
    case warnning = "🟨"
    case error = "🟥"
}
