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

/** [EmpInvite - Emp invite, LinkInvite - Link invite, PortalSuspend - Portal suspend, PortalContinue - Portal continue, PortalRemove - Portal remove, DnsChange - Dns change, PortalOwnerChange - Portal owner change, Activation - Activation, EmailChange - Email change, EmailActivation - Email activation, PasswordChange - Password change, ProfileRemove - Profile remove, PhoneActivation - Phone activation, PhoneAuth - Phone auth, Auth - Auth, TfaActivation - Tfa activation, TfaAuth - Tfa auth, Wizard - Wizard, GuestShareLink - Guest share link] */
public enum ConfirmType: String, Sendable, Codable, CaseIterable {
    case empInvite = "EmpInvite"
    case linkInvite = "LinkInvite"
    case portalSuspend = "PortalSuspend"
    case portalContinue = "PortalContinue"
    case portalRemove = "PortalRemove"
    case dnsChange = "DnsChange"
    case portalOwnerChange = "PortalOwnerChange"
    case activation = "Activation"
    case emailChange = "EmailChange"
    case emailActivation = "EmailActivation"
    case passwordChange = "PasswordChange"
    case profileRemove = "ProfileRemove"
    case phoneActivation = "PhoneActivation"
    case phoneAuth = "PhoneAuth"
    case auth = "Auth"
    case tfaActivation = "TfaActivation"
    case tfaAuth = "TfaAuth"
    case wizard = "Wizard"
    case guestShareLink = "GuestShareLink"
}
