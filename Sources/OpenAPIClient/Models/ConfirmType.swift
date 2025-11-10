//
//  Copyright (c) Ascensio System SIA 2025
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

/** [0 - Emp invite, 1 - Link invite, 2 - Portal suspend, 3 - Portal continue, 4 - Portal remove, 5 - Dns change, 6 - Portal owner change, 7 - Activation, 8 - Email change, 9 - Email activation, 10 - Password change, 11 - Profile remove, 12 - Phone activation, 13 - Phone auth, 14 - Auth, 15 - Tfa activation, 16 - Tfa auth, 17 - Wizard, 18 - Guest share link] */
public enum ConfirmType: Int, Sendable, Codable, CaseIterable {
    case EmpInvite = 0
    case LinkInvite = 1
    case PortalSuspend = 2
    case PortalContinue = 3
    case PortalRemove = 4
    case DnsChange = 5
    case PortalOwnerChange = 6
    case Activation = 7
    case EmailChange = 8
    case EmailActivation = 9
    case PasswordChange = 10
    case ProfileRemove = 11
    case PhoneActivation = 12
    case PhoneAuth = 13
    case Auth = 14
    case TfaActivation = 15
    case TfaAuth = 16
    case Wizard = 17
    case GuestShareLink = 18
}
