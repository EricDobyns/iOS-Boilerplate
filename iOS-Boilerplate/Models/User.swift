//
//  User.swift
//
//  Generated with https://swift.quicktype.io
//  Copyright © 2017 Eric Dobyns & Luis Garcia. All rights reserved.
//

import Foundation

public struct User: Codable {
    let info: UserInfo
    let results: [UserResult]
}

public struct UserResult: Codable {
    let cell: String
    let dob: String
    let email: String
    let gender: String
    let id: UserId
    let location: UserLocation
    let login: UserLogin
    let name: UserName
    let nat: String
    let phone: String
    let picture: UserPicture
    let registered: String
}

public struct UserPicture: Codable {
    let large: String
    let medium: String
    let thumbnail: String
}

public struct UserName: Codable {
    let first: String
    let last: String
    let title: String
}

public struct UserLogin: Codable {
    let md5: String
    let password: String
    let salt: String
    let sha1: String
    let sha256: String
    let username: String
}

public struct UserLocation: Codable {
    let city: String
    let postcode: Int
    let state: String
    let street: String
}

public struct UserId: Codable {
    let name: String
    let value: String
}

public struct UserInfo: Codable {
    let page: Int
    let results: Int
    let seed: String
    let version: String
}

// MARK: Top-level extensions -

extension User {
    static func from(json: String, using encoding: String.Encoding = .utf8) -> User? {
        guard let data = json.data(using: encoding) else { return nil }
        return from(data: data)
    }
    
    static func from(data: Data) -> User? {
        let decoder = JSONDecoder()
        return try? decoder.decode(User.self, from: data)
    }
    
    static func from(url urlString: String) -> User? {
        guard let url = URL(string: urlString) else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        return from(data: data)
    }
    
    var jsonData: Data? {
        let encoder = JSONEncoder()
        return try? encoder.encode(self)
    }
    
    var jsonString: String? {
        guard let data = self.jsonData else { return nil }
        return String(data: data, encoding: .utf8)
    }
}

// MARK: Codable extensions -

extension User {
    enum CodingKeys: String, CodingKey {
        case info = "info"
        case results = "results"
    }
}

extension UserResult {
    enum CodingKeys: String, CodingKey {
        case cell = "cell"
        case dob = "dob"
        case email = "email"
        case gender = "gender"
        case id = "id"
        case location = "location"
        case login = "login"
        case name = "name"
        case nat = "nat"
        case phone = "phone"
        case picture = "picture"
        case registered = "registered"
    }
}

extension UserPicture {
    enum CodingKeys: String, CodingKey {
        case large = "large"
        case medium = "medium"
        case thumbnail = "thumbnail"
    }
}

extension UserName {
    enum CodingKeys: String, CodingKey {
        case first = "first"
        case last = "last"
        case title = "title"
    }
}

extension UserLogin {
    enum CodingKeys: String, CodingKey {
        case md5 = "md5"
        case password = "password"
        case salt = "salt"
        case sha1 = "sha1"
        case sha256 = "sha256"
        case username = "username"
    }
}

extension UserLocation {
    enum CodingKeys: String, CodingKey {
        case city = "city"
        case postcode = "postcode"
        case state = "state"
        case street = "street"
    }
}

extension UserId {
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case value = "value"
    }
}

extension UserInfo {
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
        case seed = "seed"
        case version = "version"
    }
}

