//
//  PokemonPresenter.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation

protocol PokemonPresenterView {
    func renderPokemons(renderPokemons: Array<Pokemon>)
}

protocol PokemonPresenter {
    func requestPokemonList()
}