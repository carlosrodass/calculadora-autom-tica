
import UIKit

class PrimerControlador: UIViewController {
    
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var sumText: UIButton!
    @IBOutlet weak var restText: UIButton!
    @IBOutlet weak var divText: UIButton!
    @IBOutlet weak var multiText: UIButton!
    var presionado = ""
    
    @IBAction func plus(_ sender: Any) {
        presionado = "+"
        getNum(presionado)
        
    }
    @IBAction func rest(_ sender: Any) {
        presionado = "-"
        getNum(presionado)
       
        
        
    }
    
    @IBAction func div(_ sender: Any) {
        
        presionado = "/"
        getNum(presionado)
        
        
    }
    
    @IBAction func multi(_ sender: Any) {
        
        presionado = "*"
        getNum(presionado)
        
        
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numero = "0"
        total.text = numero
        sumText.setTitle(numero, for: .normal)
        restText.setTitle(numero, for: .normal)
        divText.setTitle("1", for: .normal)
        multiText.setTitle(numero, for: .normal)
        
    }
    

    
    func getNum(_: String) {

        switch presionado {
        case "+":
         
               //Cogiendo numero que haya en "total" y en el boton de sumar
               let getTotalStr = total.text
               let getTotalInt = Int(getTotalStr!)
               
               let totalCartasum = sumText.title(for: .normal)
               let totalCartasumInt = Int(totalCartasum!)
               
               //operando
               let newTotalInt = getTotalInt! + totalCartasumInt!
               let newTotalStr = String(newTotalInt)
               
               //Mostrando total
               total.text = newTotalStr
               
               //generando numero random
                let randomInt = Int.random(in: 0..<6)
               
               //Mostrando boton
               let randomStr = String(randomInt)
               let texto = randomStr
               sumText.setTitle(texto, for: .normal)
            
            
        case "-":
            
                   //Cogiendo numero que haya en el total
                   let getTotalStr = total.text
                   let getTotalInt = Int(getTotalStr!)
                   
                   let totalCartaRest = restText.title(for: .normal)
                   let totalCartaRestInt = Int(totalCartaRest!)
                   
                   //operando
                    let newTotalInt =   getTotalInt! - totalCartaRestInt!
                    let newTotalStr = String(newTotalInt)
                   
                   //Mostrando total
                   total.text = newTotalStr
                   
                   //generando numero random
                   let randomInt = Int.random(in: 0..<6)
                   
                   //Mostrando boton
                   let randomStr = String(randomInt)
                   let texto = randomStr
                   restText.setTitle(texto, for: .normal)
                   
                  
        case "/":
            //Cogiendo numero que haya en el total
            let getTotalStr = total.text
            let getTotalInt = Int(getTotalStr!)
            
            let totalCartaDiv = divText.title(for: .normal)
            let totalCartaDivInt = Int(totalCartaDiv!)
            
            //operando
            let newTotalInt = getTotalInt! / totalCartaDivInt!
            let newTotalStr = String(newTotalInt)
            
            //Mostrando total
            total.text = newTotalStr
            
            //generando numero random
            let randomInt = Int.random(in: 1..<6)
            
            //Mostrando boton
            let randomStr = String(randomInt)
            let texto =  randomStr
            divText.setTitle(texto, for: .normal)
            
           
        case "*":
            //Cogiendo numero que haya en el total
            let getTotalStr = total.text
            let getTotalInt = Int(getTotalStr!)
            
            let totalCartaMulti = multiText.title(for: .normal)
            let totalCartaMultiInt = Int(totalCartaMulti!)
            
            //operando
            let newTotalInt = getTotalInt! * totalCartaMultiInt!
            let newTotalStr = String(newTotalInt)
            
            //Mostrando total
            total.text = newTotalStr
            
            //generando numero random
            let randomInt = Int.random(in: 0..<6)
            
    
            //Mostrando boton
            let randomStr = String(randomInt)
            let texto = randomStr
            multiText.setTitle(texto, for: .normal)
            
            
        default:
            print("hola ")
        }
       }
      

}
