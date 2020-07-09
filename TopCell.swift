
import UIKit


class TopCell: UITableViewCell {

    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtVisitpr: UITextField!
    @IBOutlet weak var txtAge: UITextField!
   
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var btnFemale: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.didMaleButtonPressed(self)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didMaleButtonPressed(_ sender: Any) {
        
        btnMale.isSelected = true
        btnFemale.isSelected = false
        
        
    }
    
    @IBAction func didFemaleButtonPressed(_ sender: Any) {
        
        btnFemale.isSelected = true
        btnMale.isSelected = false
        
    }
}
