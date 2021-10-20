
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    var state: Int = 0
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //redLight.layer.cornerRadius = redLight.frame.width / 2
        //yellowLight.layer.cornerRadius = redLight.frame.width / 2
        //greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    override func viewDidAppear( _ animated: Bool) {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            redLight.layer.cornerRadius = redLight.frame.width / 2
            yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
            greenLight.layer.cornerRadius = greenLight.frame.width / 2
        }
   
    @IBAction func pressStartButton() {
        state += 1
        startButton.setTitle("NEXT", for: .normal)
        
        switch state {
        case 1: do {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }
        case 2: do {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        }
        case 3: do {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            state = 0
        }
        default:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }
    }
    //
        
       
    

}
