import Foundation

final class LocalDataSource {
    
    private var cache = [PokemonData]()
    
    init() {
        let range = 1...100
        for count in range {
            buildFakePokemon(count,
                             imageUrl: "",
                             name: "\(count)",
                             description: "Description \(count)")
        }
    }
    
    private func buildFakePokemon(id: Int, imageUrl: String, name: String, description: String)  {
        let pokemon = PokemonData(id: id, imageUrl: imageUrl, name: name, description: description)
        cache.append(pokemon)
    }
    
    func getPokemonList() -> [PokemonData] {
        return cache
    }
}