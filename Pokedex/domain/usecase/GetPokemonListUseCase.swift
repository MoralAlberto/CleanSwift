//
//  GetPokemonListUseCase.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation

final class getPokemonListUseCase {
    private let repository: PokemonRepository
    
    
    init(repository: PokemonRepository) {
        self.repository = repository
    }
    
    func execute() -> Array<Pokemon> {
        return repository.getPokemonList()
    }
}

//  Protocol use case y el interactor es quien implementa la logica
//  Caso de uso es la barrera entre el main thread y colas en background
