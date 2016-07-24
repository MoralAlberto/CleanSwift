import Foundation

final class GetPokemonListInteractor: GetPokemonListUseCase {
    
    var repository: PokemonRepository
    
    init(repository: PokemonRepository) {
        self.repository = repository
    }
    
    func execute() -> [Pokemon] {
        return repository.getPokemonList()
    }
}