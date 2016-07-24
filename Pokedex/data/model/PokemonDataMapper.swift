import Foundation

final class PokemonDataMapper {
    static func mapping(list: [PokemonData]) -> [Pokemon] {
        //  Remove 'toPokemon' init method
        return list.map(Pokemon.init)
    }
}


private extension Pokemon {
    init(pokemonData: PokemonData) {
        self = Pokemon(id: pokemonData.id, imageUrl: pokemonData.imageUrl, name: pokemonData.name, description: pokemonData.description)
    }
}
