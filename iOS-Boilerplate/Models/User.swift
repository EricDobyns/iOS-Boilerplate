//// To parse the JSON, add this file to your project and do:
////
////   let user = User.from(json: jsonString)!
//
//import Foundation
//
//public struct User: Codable {
//    let info: Info
//    let results: [Result]
//}
//
//struct Result: Codable {
//    let cell: String
//    let dob: String
//    let email: String
//    let gender: String
//    let id: Id
//    let location: Location
//    let login: Login
//    let name: Name
//    let nat: String
//    let phone: String
//    let picture: Picture
//    let registered: String
//}
//
//struct Picture: Codable {
//    let large: String
//    let medium: String
//    let thumbnail: String
//}
//
//struct Name: Codable {
//    let first: String
//    let last: String
//    let title: String
//}
//
//struct Login: Codable {
//    let md5: String
//    let password: String
//    let salt: String
//    let sha1: String
//    let sha256: String
//    let username: String
//}
//
//struct Location: Codable {
//    let city: String
//    let postcode: JSONNull
//    let state: String
//    let street: String
//}
//
//struct Id: Codable {
//    let name: String
//    let value: String
//}
//
//struct Info: Codable {
//    let page: Int
//    let results: Int
//    let seed: String
//    let version: String
//}
//
//// MARK: Top-level extensions -
//
//extension User {
//    static func from(json: String, using encoding: String.Encoding = .utf8) -> User? {
//        guard let data = json.data(using: encoding) else { return nil }
//        return from(data: data)
//    }
//
//    static func from(data: Data) -> User? {
//        let decoder = JSONDecoder()
//        return try? decoder.decode(User.self, from: data)
//    }
//
//    static func from(url urlString: String) -> User? {
//        guard let url = URL(string: urlString) else { return nil }
//        guard let data = try? Data(contentsOf: url) else { return nil }
//        return from(data: data)
//    }
//
//    var jsonData: Data? {
//        let encoder = JSONEncoder()
//        return try? encoder.encode(self)
//    }
//
//    var jsonString: String? {
//        guard let data = self.jsonData else { return nil }
//        return String(data: data, encoding: .utf8)
//    }
//}
//
//// MARK: Codable extensions -
//
//extension User {
//    enum CodingKeys: String, CodingKey {
//        case info = "info"
//        case results = "results"
//    }
//}
//
//extension Result {
//    enum CodingKeys: String, CodingKey {
//        case cell = "cell"
//        case dob = "dob"
//        case email = "email"
//        case gender = "gender"
//        case id = "id"
//        case location = "location"
//        case login = "login"
//        case name = "name"
//        case nat = "nat"
//        case phone = "phone"
//        case picture = "picture"
//        case registered = "registered"
//    }
//}
//
//extension Picture {
//    enum CodingKeys: String, CodingKey {
//        case large = "large"
//        case medium = "medium"
//        case thumbnail = "thumbnail"
//    }
//}
//
//extension Name {
//    enum CodingKeys: String, CodingKey {
//        case first = "first"
//        case last = "last"
//        case title = "title"
//    }
//}
//
//extension Login {
//    enum CodingKeys: String, CodingKey {
//        case md5 = "md5"
//        case password = "password"
//        case salt = "salt"
//        case sha1 = "sha1"
//        case sha256 = "sha256"
//        case username = "username"
//    }
//}
//
//extension Location {
//    enum CodingKeys: String, CodingKey {
//        case city = "city"
//        case postcode = "postcode"
//        case state = "state"
//        case street = "street"
//    }
//}
//
//extension Id {
//    enum CodingKeys: String, CodingKey {
//        case name = "name"
//        case value = "value"
//    }
//}
//
//extension Info {
//    enum CodingKeys: String, CodingKey {
//        case page = "page"
//        case results = "results"
//        case seed = "seed"
//        case version = "version"
//    }
//}
//
//
