import Foundation

//  Input
protocol PokemonPresenterView {
    func renderPokemons(renderPokemons: [Pokemon])
}

//  Output
protocol PokemonPresenter {
    func requestPokemonList()
}