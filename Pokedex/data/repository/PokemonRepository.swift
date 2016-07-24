import Foundation

final class PokemonRepository {
    private var localDataSource: LocalDataSource
    
    init(localDataSource: LocalDataSource) {
        self.localDataSource = localDataSource
    }
    
    func getPokemonList() -> [Pokemon] {
        let pokemons = self.localDataSource.getPokemonList()
        let result = PokemonDataMapper.mapping(pokemons)
        return result
    }
}