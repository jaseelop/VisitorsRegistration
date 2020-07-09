

import UIKit


class AdditionalCell: UITableViewCell {
    
    var index = Int()
    
    @IBOutlet weak var txtVisitorName: UITextField!
    @IBOutlet weak var txtVisitorAge: UITextField!
    
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var btnFemale: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    
    

    
    @IBAction func didRemoveButtonPressed(_ sender: Any) {
        
       
        
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
