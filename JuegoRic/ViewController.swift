
import UIKit

class ViewController: UIViewController {
    
    let images = [
    UIImage(named: "DrJ.jpg"),
    UIImage(named: "MagicJohnson.jpg"),
    UIImage(named: "nowitzki.jpg"),
    UIImage(named: "jabbar.jpg"),
    UIImage(named: "shaq.jpg"),
    UIImage(named: "isiahT.jpg"),
    UIImage(named: "stockton.jpg"),
    UIImage(named: "rodman.jpg"),
    UIImage(named: "Olajuwon.jpg"),
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBAction func Button(_ sender: Any) {
        
    }
    
    
    func ImageChange(segundos: UInt32) {
        
        sleep(segundos)
        let random = arc4random_uniform(9)
        
        switch random {
        case 0:
            mainImage.image = UIImage(named: "rodman.jpg")
        case 1:
            mainImage.image = UIImage(named: "DrJ.jpg")
        case 2:
            mainImage.image = UIImage(named: "MagicJohnson.jpg")
        case 3:
            mainImage.image = UIImage(named: "jabbar.jpg")
        case 4:
            mainImage.image = UIImage(named: "Olajuwon.jpg")
        case 5:
            mainImage.image = UIImage(named: "shaq.jpg")
        case 6:
            mainImage.image = UIImage(named: "isiahT.jpg")
        case 7:
            mainImage.image = UIImage(named: "stockton.jpg")
        case 8:
            mainImage.image = UIImage(named: "nowitzki.jpg")
        default:
            mainImage.image = UIImage(named: "rodman.jpg")
            
        }
    }
        
}
    


