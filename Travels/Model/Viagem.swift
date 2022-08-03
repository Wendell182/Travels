//
//  Viagem.swift
//  Travels
//
//  Created by user on 02/08/22.
//

import Foundation

struct Viagem: Codable {
    var id: Int
    var titulo: String
    var asset: String
    var subtitulo: String
    var diaria: Int
    var hospedes: Int
    var precoSemDesconto: Double
    var preco: Double
    var cancelamento: String
    
    static func jsonToData(_ json:[String: Any]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }

    static func decodeJson(_ jsonData: Data) -> Viagem? {
        do {
            return try JSONDecoder().decode(Viagem.self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
