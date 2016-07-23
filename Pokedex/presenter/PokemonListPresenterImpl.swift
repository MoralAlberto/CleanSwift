//
//  PokemonListPresenterImpl.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation

class PokemonPresenterImpl: PokemonPresenter {
    private let view: PokemonPresenterView
    private let useCase: getPokemonListUseCase
    
    init(view: PokemonPresenterView, useCase: getPokemonListUseCase) {
        self.view = view
        self.useCase = useCase
    }
    
    //MARK: - PokemonPresenter
    
    func requestPokemonList() {
        view.renderPokemons(useCase.execute())
    }
}