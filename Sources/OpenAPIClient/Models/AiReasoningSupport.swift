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

/** What one model can do with extended thinking. Providers describe each model through this shape so the UI offers only the choices that change the request, and the request builders clamp to the same table. */
public struct AiReasoningSupport: Sendable, Codable, Hashable {

    /** Whether the model can think at all. False hides the whole control. */
    public var thinks: Bool
    /** Whether `off` really turns thinking off. False means the model thinks always and off only drops to its lowest depth (or leaves the default depth, where there is no knob). */
    public var canDisable: Bool
    /** Depths the model distinguishes, lowest first. Empty when thinking is an on/off switch with no depth (or the model doesn't think). A level not listed is clamped to the nearest one — see `clampReasoningLevel`. */
    public var depths: [AiReasoningDepth]
    /** The depth the model runs at when nothing asks for one — what a stored `off` means on a model that cannot be switched off. Known only where a catalogue reports it (OpenRouter's `default_effort`); otherwise `DEFAULT_REASONING_LEVEL` clamped to `depths` is assumed. */
    public var defaultDepth: AiReasoningDepth?

    public init(thinks: Bool, canDisable: Bool, depths: [AiReasoningDepth], defaultDepth: AiReasoningDepth? = nil) {
        self.thinks = thinks
        self.canDisable = canDisable
        self.depths = depths
        self.defaultDepth = defaultDepth
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case thinks
        case canDisable
        case depths
        case defaultDepth
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(thinks, forKey: .thinks)
        try container.encode(canDisable, forKey: .canDisable)
        try container.encode(depths, forKey: .depths)
        try container.encodeIfPresent(defaultDepth, forKey: .defaultDepth)
    }
}

