//
//  Copyright (c) Ascensio System SIA 2026
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
import Foundation

public struct APIHelper {
    public static func rejectNil(_ source: [String: (any Sendable)?]) -> [String: any Sendable]? {
        let destination = source.reduce(into: [String: any Sendable]()) { result, item in
            if let value = item.value {
                result[item.key] = value
            }
        }

        if destination.isEmpty {
            return nil
        }
        return destination
    }

    public static func rejectNilHeaders(_ source: [String: (any Sendable)?]) -> [String: String] {
        return source.reduce(into: [String: String]()) { result, item in
            if let collection = item.value as? [Any?] {
                result[item.key] = collection
                    .compactMap { value in convertAnyToString(value) }
                    .joined(separator: ",")
            } else if let value: Any = item.value {
                result[item.key] = convertAnyToString(value)
            }
        }
    }

    public static func convertBoolToString(_ source: [String: any Sendable]?) -> [String: any Sendable]? {
        guard let source = source else {
            return nil
        }

        return source.reduce(into: [String: any Sendable]()) { result, item in
            switch item.value {
            case let x as Bool:
                result[item.key] = x.description
            default:
                result[item.key] = item.value
            }
        }
    }

    public static func convertAnyToString(_ value: Any?) -> String? {
        guard let value = value else { return nil }
        if let value = value as? any RawRepresentable {
            return "\(value.rawValue)"
        } else {
            return "\(value)"
        }
    }

    public static func mapValueToPathItem(_ source: Any) -> Any {
        if let collection = source as? [Any?] {
            return collection
                .compactMap { value in convertAnyToString(value) }
                .joined(separator: ",")
        } else if let value = source as? any RawRepresentable {
            return "\(value.rawValue)"
        }
        return source
    }

    /// maps all values from source to query parameters
    ///
    /// explode attribute is respected: collection values might be either joined or split up into separate key value pairs
    public static func mapValuesToQueryItems(_ source: [String: (wrappedValue: (any Sendable)?, isExplode: Bool)]) -> [URLQueryItem]? {
        let destination = source.filter { $0.value.wrappedValue != nil }.reduce(into: [URLQueryItem]()) { result, item in
            if let collection = item.value.wrappedValue as? [Any?] {

                let collectionValues: [String] = collection.compactMap { value in convertAnyToString(value) }

                if !item.value.isExplode {
                    result.append(URLQueryItem(name: item.key, value: collectionValues.joined(separator: ",")))
                } else {
                    collectionValues
                        .forEach { value in
                            result.append(URLQueryItem(name: item.key, value: value))
                        }
                }

            } else if let value = item.value.wrappedValue {
                result.append(URLQueryItem(name: item.key, value: convertAnyToString(value)))
            }
        }

        if destination.isEmpty {
            return nil
        }
        return destination.sorted { $0.name < $1.name }
    }

    /// maps all values from source to query parameters
    ///
    /// collection values are always exploded
    public static func mapValuesToQueryItems(_ source: [String: (any Sendable)?]) -> [URLQueryItem]? {
        let destination = source.filter { $0.value != nil }.reduce(into: [URLQueryItem]()) { result, item in
            if let collection = item.value as? [Any?] {
                collection
                    .compactMap { value in convertAnyToString(value) }
                    .forEach { value in
                        result.append(URLQueryItem(name: item.key, value: value))
                    }

            } else if let value = item.value {
                result.append(URLQueryItem(name: item.key, value: convertAnyToString(value)))
            }
        }

        if destination.isEmpty {
            return nil
        }
        return destination.sorted { $0.name < $1.name }
    }
}
