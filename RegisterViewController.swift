

import UIKit

class RegisterViewController: UIViewController {
    
    

    @IBOutlet weak var mainTableView: UITableView!
    var phone = String()
    var name = String()
    var visitors = [Visitor]()
    
    struct Visitor {
        var name : String
        var age : String
        var gender : String
        
        init(name:String,age:String,gender : String) {
            self.name = name
            self.age = age
            self.gender = gender
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.mainTableView.delegate = self
        self.mainTableView.dataSource = self
        self.mainTableView.register(UINib(nibName: "TopCell", bundle: nil), forCellReuseIdentifier: "top")
        self.mainTableView.register(UINib(nibName: "AdditionalCell", bundle: nil), forCellReuseIdentifier: "additional")
        self.mainTableView.register(UINib(nibName: "AddButtonCell", bundle: nil), forCellReuseIdentifier: "add")
        self.mainTableView.reloadData()
        

}

}


extension RegisterViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if visitors.count <= 1 {
            return 2
        }
        else {
            return  visitors.count + 1
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let topCell = tableView.dequeueReusableCell(withIdentifier: "top", for: indexPath) as! TopCell
        let additionalCell = tableView.dequeueReusableCell(withIdentifier: "additional", for: indexPath) as! AdditionalCell
        let buttonCell = tableView.dequeueReusableCell(withIdentifier: "add", for: indexPath) as! AddButtonCell
        
        
        
        if visitors.count <= 1 {
            

            if indexPath.row == 0 {
                
                
                return topCell
            }
            else {
                return buttonCell
            }
            
            
        }
        else {
            
            if indexPath.row == 0 {
                
                return topCell
            }
            else if indexPath.row == visitors.count  {
                
                return buttonCell
            }
            else {
                additionalCell.index = indexPath.row
                
                additionalCell.txtVisitorName.text = self.visitors[indexPath.row].name
                additionalCell.txtVisitorAge.text  = self.visitors[indexPath.row].age
                return additionalCell
            }
            
        }
        
    }
    
}

