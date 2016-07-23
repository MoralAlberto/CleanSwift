//
//  LocalDataSource.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation

final class LocalDataSource {
    
    private var cache = Array<PokemonData>()
    
    init() {
        for count in 1...100 {
            buildFakePokemon(count, imageUrl: "", name: "\(count)", description: "Description \(count)")
        }
    }
    
    private func buildFakePokemon(id: Int, imageUrl: String, name: String, description: String)  {
        let pokemon = PokemonData(id: id, imageUrl: imageUrl, name: name, description: description)
        cache.append(pokemon)
    }
    
    func getPokemonList() -> Array<PokemonData> {
        return cache
    }
}