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

/** The API date and time parameters. */
public struct AiApiDateTime: Sendable, Codable, Hashable {

    /** The time in UTC format. */
    public var utcTime: Date?
    /** The time zone offset, as hh:mm:ss with a leading minus sign west of UTC. */
    public var timeZoneOffset: String?

    public init(utcTime: Date? = nil, timeZoneOffset: String? = nil) {
        self.utcTime = utcTime
        self.timeZoneOffset = timeZoneOffset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case utcTime
        case timeZoneOffset
    }

    // The portal writes and reads this type as one ISO 8601 string with the offset of its time zone
    // ("2026-10-15T14:00:00.0000000+03:00"); the object shape the document describes is accepted as well.
    public init(from decoder: Decoder) throws {
        if let single = try? decoder.singleValueContainer(), let raw = try? single.decode(String.self) {
            if raw.isEmpty {
                self.init()
                return
            }
            guard let parsed = Self.parse(raw) else {
                throw DecodingError.dataCorruptedError(in: single, debugDescription: "Invalid date-time '\(raw)'")
            }
            self = parsed
            return
        }
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init(utcTime: try container.decodeIfPresent(Date.self, forKey: .utcTime),
                  timeZoneOffset: try container.decodeIfPresent(String.self, forKey: .timeZoneOffset))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        guard let utcTime else {
            try container.encodeNil()
            return
        }
        let offset = Self.offsetSeconds(timeZoneOffset)
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: offset)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
        try container.encode(formatter.string(from: utcTime) + (offset < 0 ? "-" : "+") + Self.hoursAndMinutes(abs(offset)))
    }

    static func parse(_ raw: String) -> Self? {
        guard raw.range(of: #"^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(\.\d+)?(Z|[+-]\d{2}:\d{2})?$"#, options: .regularExpression) != nil else {
            return nil
        }
        let base = String(raw.prefix(19))
        var rest = Substring(raw.dropFirst(19))
        var fraction = 0.0
        if rest.hasPrefix(".") {
            let digits = rest.dropFirst().prefix { $0.isNumber }
            fraction = Double("0." + digits) ?? 0
            rest = rest.dropFirst(1 + digits.count)
        }
        var offset = 0
        if rest.count == 6, let hours = Int(rest.dropFirst().prefix(2)), let minutes = Int(rest.suffix(2)) {
            offset = (hours * 3600 + minutes * 60) * (rest.hasPrefix("-") ? -1 : 1)
        }
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: offset)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        guard let date = formatter.date(from: base) else {
            return nil
        }
        return Self(utcTime: date.addingTimeInterval(fraction),
                    timeZoneOffset: (offset < 0 ? "-" : "") + hoursAndMinutes(abs(offset)) + ":00")
    }

    static func offsetSeconds(_ value: String?) -> Int {
        guard let value, !value.isEmpty else {
            return 0
        }
        let parts = value.trimmingCharacters(in: CharacterSet(charactersIn: "+-")).split(separator: ":").compactMap { Int($0) }
        guard parts.count >= 2 else {
            return 0
        }
        let seconds = parts[0] * 3600 + parts[1] * 60 + (parts.count > 2 ? parts[2] : 0)
        return value.hasPrefix("-") ? -seconds : seconds
    }

    static func hoursAndMinutes(_ seconds: Int) -> String {
        String(format: "%02d:%02d", seconds / 3600, seconds % 3600 / 60)
    }
}

