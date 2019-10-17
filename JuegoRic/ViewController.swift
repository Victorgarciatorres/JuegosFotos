
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
    var imagenShowed = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

   
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBAction func buttonStart(_ sender: Any) {
        var i = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:{timer in
        if i < 5{
            self.ImageChange()
            self.imagenShowed.append(self.mainImage.image!)
        }
            i+=1
        })
    }
    
    func ImageChange() {
        
        let random = arc4random_uniform(UInt32(images.count))
        
        switch random {
        case 0:
            mainImage.image = UIImage(named: "rodman.jpg")
        case 1:
            mainImage.image = UIImage(named: "MagicJohnson.jpg")
        case 2:
            mainImage.image = UIImage(named: "jabbar.jpg")
        case 3:
            mainImage.image = UIImage(named: "Olajuwon.jpg")
        case 4:
            mainImage.image = UIImage(named: "shaq.jpg")
        case 5:
            mainImage.image = UIImage(named: "isiahT.jpg")
        case 6:
            mainImage.image = UIImage(named: "stockton.jpg")
        case 7:
            mainImage.image = UIImage(named: "nowitzki.jpg")
        default:
            mainImage.image = UIImage(named: "rodman.jpg")
        }
    }
        
}
    


