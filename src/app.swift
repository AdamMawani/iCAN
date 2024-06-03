import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        // Setup UI for home screen
    }

    @IBAction func garbageButtonTapped(_ sender: UIButton) {
        navigateToViewController(ofType: GarbageViewController.self)
    }

    @IBAction func recyclingButtonTapped(_ sender: UIButton) {
        navigateToViewController(ofType: RecyclingViewController.self)
    }

    @IBAction func integrationsButtonTapped(_ sender: UIButton) {
        navigateToViewController(ofType: IntegrationsViewController.self)
    }

    private func navigateToViewController<T: UIViewController>(ofType type: T.Type) {
        let viewController = T()
        navigationController?.pushViewController(viewController, animated: true)
    }
}

class GarbageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        // Setup UI for garbage screen
    }

    @IBAction func sendGarbageButtonTapped(_ sender: UIButton) {
        handleSendGarbage()
    }

    @IBAction func retrieveGarbageButtonTapped(_ sender: UIButton) {
        handleRetrieveGarbage()
    }

    private func handleSendGarbage() {
        // Handle sending garbage
    }

    private func handleRetrieveGarbage() {
        // Handle retrieving garbage
    }
}

class RecyclingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        // Setup UI for recycling screen
    }

    @IBAction func sendRecyclingButtonTapped(_ sender: UIButton) {
        handleSendRecycling()
    }

    @IBAction func retrieveRecyclingButtonTapped(_ sender: UIButton) {
        handleRetrieveRecycling()
    }

    private func handleSendRecycling() {
        // Handle sending recycling
    }

    private func handleRetrieveRecycling() {
        // Handle retrieving recycling
    }
}

class IntegrationsViewController: UIViewController {

    @IBOutlet weak var cityDropdown: UIPickerView!
    
    let cities = [
        "Toronto", "Montreal", "Vancouver", "Calgary", "Edmonton",
        "Ottawa", "Winnipeg", "Quebec City", "Hamilton", "London",
        "Victoria", "Halifax", "St. John's", "Kitchener", "Mississauga",
        "Saskatoon", "Regina", "Kelowna", "Moncton", "Fredericton"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
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