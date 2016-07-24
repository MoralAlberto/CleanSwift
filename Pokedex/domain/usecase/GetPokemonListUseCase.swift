import Foundation

//  The use case is the protocol to be implemented in the interactor
//  Upper layer main thread, but here we use background threads
protocol GetPokemonListUseCase {
    var repository: PokemonRepository { get }
    
    init(repository: PokemonRepository)
    func execute() -> [Pokemon]
}
