
import UIKit

class ViewController: UIViewController {
    
    let images = [
    UIImage(named: "MagicJohnson.jpg"),
    UIImage(named: "nowitzki.jpg"),
    UIImage(named: "jabbar.jpg"),
    UIImage(named: "shaq.jpg"),
    UIImage(named: "isiahT.jpg"),
    UIImage(named: "stockton.jpg"),
    UIImage(named: "rodman.jpg"),
    UIImage(named: "Olajuwon.jpg"),
    ]
    var randomImage: [Int] = []
    var imagenShowed = [UIImage]()
    
    
    
    @IBOutlet weak var mainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    
    @IBAction func buttonStart(_ sender: Any) {
        var i = 0
        imgRandom()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:{timer in
        if i < 7{
            self.mainImage.image = self.images[self.randomImage[i]]
            self.imagenShowed.append(self.mainImage.image!)
        }
            i+=1
        })
    }
    
    func imgRandom(){
        for i in 1...7{
            randomImage.append(i)
        }
            randomImage.shuffle()
    }
        
}
    


