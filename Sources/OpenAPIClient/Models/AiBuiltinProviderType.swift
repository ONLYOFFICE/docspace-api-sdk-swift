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

/** Union of all 17 built-in AI provider type identifiers.  The `external` provider has no built-in transport — it delegates every HTTP request to `PlatformAdapter.externalFetch` and parses the response with the inner provider selected by `Profile.basedOn`. */
public enum AiBuiltinProviderType: String, Sendable, Codable, CaseIterable {
    case anthropic = "anthropic"
    case ollama = "ollama"
    case openai = "openai"
    case openaicompatible = "openaicompatible"
    case together = "together"
    case openrouter = "openrouter"
    case genai = "genai"
    case deepseek = "deepseek"
    case xai = "xai"
    case lmStudio = "lm-studio"
    case mistral = "mistral"
    case groq = "groq"
    case zhipu = "zhipu"
    case stabilityai = "stabilityai"
    case gpt4all = "gpt4all"
    case onlyoffice = "onlyoffice"
    case external = "external"
}
