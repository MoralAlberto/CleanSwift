//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation

final class PokemonRepository {
    private var localDataSource: LocalDataSource
    
    init(localDataSource: LocalDataSource) {
        self.localDataSource = localDataSource
    }
    
    func getPokemonList() -> Array<Pokemon> {
        let pokemons = self.localDataSource.getPokemonList()
        let result = PokemonDataMapper.map(pokemons)
        return result
//        return map(localDataSource.getPokemonList())
    }
}