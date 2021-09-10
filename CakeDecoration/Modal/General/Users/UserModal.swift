//
//  UserModal.swift
//  NewProject
//
//  Created by Dharmesh Avaiya on 22/08/20.
//  Copyright © 2020 dharmesh. All rights reserved.
//

import Foundation

// MARK: - UserModal
struct UserModal: Codable {
    var id, name, email, password: String?
    var image, authenticateToken, role, loginStatus: String?
    var creationAt: String?

    enum CodingKeys: String, CodingKey {
        case id, name, email, password, image
        case authenticateToken = "authenticate_token"
        case role
        case loginStatus = "login_status"
        case creationAt = "creation_at"
    }
}

// MARK: UserModal convenience initializers and mutators

extension UserModal {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UserModal.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

