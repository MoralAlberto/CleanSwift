import Foundation

//  Create all the dependencies and injections
struct PokemonPresenterFactory {
    static func getPresenter(view: PokemonPresenterView) -> PokemonPresenter {
        let useCase = self.getPokemonUseCase()
        return PokemonPresenterImpl(view: view, useCase: useCase)
    }
    
    static func getPokemonUseCase() -> GetPokemonListUseCase {
        let repository = self.getPokemonRepository()
        let interactor = GetPokemonListInteractor(repository: repository)
        return interactor
    }
    
    static func getPokemonRepository() -> PokemonRepository {
        let dataSource = self.getPokemonLocalDataSource()
        let repository = PokemonRepository(localDataSource: dataSource)
        return repository
    }
    
    static func getPokemonLocalDataSource() -> LocalDataSource {
        return LocalDataSource()
    }
}
