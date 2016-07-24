import Foundation

class PokemonPresenterImpl {
    private let view: PokemonPresenterView
    private let useCase: GetPokemonListUseCase
    
    init(view: PokemonPresenterView, useCase: GetPokemonListUseCase) {
        self.view = view
        self.useCase = useCase
    }
}

extension PokemonPresenterImpl: PokemonPresenter {
    func requestPokemonList() {
        view.renderPokemons(useCase.execute())
    }
}