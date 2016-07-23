//
//  PokedexView.swift
//  Pokedex
//
//  Created by Alberto Moral on 23/7/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import UIKit

class PokedexViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var presenter: PokemonPresenter?
    private var pokemonList = Array<Pokemon>()
    
    
    init()   {
        super.init(nibName: String(PokedexViewController), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = PokemonPresenterFactory.getPresenter(self)
        configureTableView()
        presenter!.requestPokemonList()
    }
    
    func configureTableView() {
        let cellName = String(PokedexTableViewCell)
        let nib = UINib(nibName: cellName, bundle: nil)
       tableView.registerNib(nib, forCellReuseIdentifier: cellName)
    }

}

extension PokedexViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(PokedexTableViewCell), forIndexPath: indexPath) as! PokedexTableViewCell
        let pokemon = pokemonList[indexPath.row]
        cell.configureCell(pokemon)
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return PokedexTableViewCell.CellHeight
    }
}


extension PokedexViewController: PokemonPresenterView {
    func renderPokemons(renderPokemons: Array<Pokemon>) {
        self.pokemonList = renderPokemons
        self.tableView.reloadData()
    }
}
