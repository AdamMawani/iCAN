import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup UI for home screen
    }
    
    @IBAction func garbageButtonTapped(_ sender: UIButton) {
        let garbageVC = GarbageViewController()
        navigationController?.pushViewController(garbageVC, animated: true)
    }
    
    @IBAction func recyclingButtonTapped(_ sender: UIButton) {
        let recyclingVC = RecyclingViewController()
        navigationController?.pushViewController(recyclingVC, animated: true)
    }
    
    @IBAction func integrationsButtonTapped(_ sender: UIButton) {
        let integrationsVC = IntegrationsViewController()
        navigationController?.pushViewController(integrationsVC, animated: true)
    }
}

class GarbageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup UI for garbage screen
    }
    
    @IBAction func sendGarbageButtonTapped(_ sender: UIButton) {
        // Handle sending garbage
    }
    
    @IBAction func retrieveGarbageButtonTapped(_ sender: UIButton) {
        // Handle retrieving garbage
    }
}

class RecyclingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup UI for recycling screen
    }
    
    @IBAction func sendRecyclingButtonTapped(_ sender: UIButton) {
        // Handle sending recycling
    }
    
    @IBAction func retrieveRecyclingButtonTapped(_ sender: UIButton) {
        // Handle retrieving recycling
    }
}

class IntegrationsViewController: UIViewController {
    
    @IBOutlet weak var cityDropdown: UIPickerView!
    
    let cities = ["Toronto", "Montreal", "Vancouver", "Calgary", "Edmonton", "Ottawa", "Winnipeg", "Quebec City", "Hamilton", "London", "Victoria", "Halifax", "St. John's", "Kitchener", "Mississauga", "Saskatoon", "Regina", "Kelowna", "Moncton", "Fredericton"]
    // Add more cities as needed

    override func viewDidLoad() {
        super.viewDidLoad()
        cityDropdown.delegate = self
        cityDropdown.dataSource = self
        // Setup UI for integrations screen
    }
}

extension IntegrationsViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
}