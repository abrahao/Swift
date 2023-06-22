import UIKit

class TarefaTableViewCell: UITableViewCell {

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var concluidaSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
