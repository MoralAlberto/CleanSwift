//
//  PokemonDataMapper.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation

final class PokemonDataMapper {
    static func map(list: Array<PokemonData>) -> Array<Pokemon> {
        var result = [Pokemon]()
        
//        for pokemonData in list {
//            result.append(map(pokemonData))
//        }
        list.forEach { (value) in
            let pokemon = map(value)
            result.append(pokemon)
        }
        return result
    }
    
    static func map(source: PokemonData) -> Pokemon {
//        return Pokemon(id: source.id, imageUrl: source.imageUrl, name: source.name, description: source.description)
        return source.toPokemon()
    }
    
    static func map(source source: Pokemon) -> PokemonData {
        return PokemonData(id: source.id, imageUrl: source.imageUrl, name: source.name, description: source.description)
    }
}


private extension PokemonData {
    func toPokemon() -> Pokemon {
        return Pokemon(pokemonData: self)
    }
}

private extension Pokemon {
    init(pokemonData: PokemonData) {
        self = Pokemon(id: pokemonData.id, imageUrl: pokemonData.imageUrl, name: pokemonData.name, description: pokemonData.description)
    }
}
