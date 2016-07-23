//
//  PokemonPresenterFactory.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation

struct PokemonPresenterFactory {
    static func getPresenter(view: PokemonPresenterView) -> PokemonPresenter {
        let useCase = getPokemonUseCase()
        return PokemonPresenterImpl(view: view, useCase: useCase)
    }
    
    static func getPokemonUseCase() -> getPokemonListUseCase {
        let repository = getPokemonRepository()
        let useCase = getPokemonListUseCase(repository: repository)
        return useCase
    }
    
    static func getPokemonRepository() -> PokemonRepository {
        let dataSource = getPokemonLocalDataSource()
        let repository = PokemonRepository(localDataSource: dataSource)
        return repository
    }
    
    static func getPokemonLocalDataSource() -> LocalDataSource {
        return LocalDataSource()
    }
}

