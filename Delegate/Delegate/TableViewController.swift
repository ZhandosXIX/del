// TableViewController.swift

import UIKit
// .swift

protocol TableViewControllerDelegate: AnyObject {
    func didSelectItem(_ item: String)
}

class TableViewController: UITableViewController {
    
    weak var delegate: TableViewControllerDelegate?
    let items = ["Элемент 1", "Элемент 2", "Элемент 3"] // Пример данных
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = items[indexPath.row]
        delegate?.didSelectItem(selectedItem)
        dismiss(animated: true, completion: nil)
    }
}
