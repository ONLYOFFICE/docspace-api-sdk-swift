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

/** [0 - PortalAi, 1 - OpenAi, 2 - TogetherAi, 3 - OpenAiCompatible, 4 - Anthropic, 5 - OpenRouter, 6 - DeepSeek, 7 - XAi, 8 - GoogleAi] */
public enum ProviderType: Int, Sendable, Codable, CaseIterable {
    case PortalAi = 0
    case OpenAi = 1
    case TogetherAi = 2
    case OpenAiCompatible = 3
    case Anthropic = 4
    case OpenRouter = 5
    case DeepSeek = 6
    case XAi = 7
    case GoogleAi = 8
}
