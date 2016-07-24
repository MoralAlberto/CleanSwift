import UIKit

class PokedexTableViewCell: UITableViewCell {
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    
    static let CellHeight: CGFloat = 80.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(pokemon: Pokemon) {
        mainLabel.text = pokemon.name
        descriptionLabel.text = pokemon.description
//        imageView?.image = UIImage(named: "pokemon")
    }
}
