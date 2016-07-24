import Foundation

final class LocalDataSource {
    
    private var cache = [PokemonData]()
    
    init() {
        for count in 1...100 {
            buildFakePokemon(count, imageUrl: "", name: "\(count)", description: "Description \(count)")
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