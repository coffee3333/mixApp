//
//  ItemDetailViewController.swift
//  mixApp
//
//  Created by Atay on 10/23/20.
//


import UIKit


protocol ItemDetailViewControllerDelegate: class {
    func itemDetailViewControllerDidCancel(_ controller: ItemDetailViewController)
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishAdding item: ChecklistItem)
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishEditing item: ChecklistItem)
}

class ItemDetailViewController: UITableViewController {
    
    weak var delegate: ItemDetailViewControllerDelegate?
    weak var todoList: TodoList?
    weak var itemToEdit: ChecklistItem?
    
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    @IBOutlet weak var addBarButton: UIBarButtonItem!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
 
    @IBOutlet weak var titlefield: UITextField!
    @IBOutlet weak var descfield: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        delegate?.itemDetailViewControllerDidCancel(self)
    }
  
    @IBAction func done(_ sender: Any) {
        if let item = itemToEdit, let text = titlefield.text, let descFieldText = descfield.text{
            item.text = text
            item.desc = descFieldText
            delegate?.itemDetailViewController(self, didFinishEditing: item)
        } else {
            if let item = todoList?.newTodo() {
                if let textFieldText = titlefield.text, let descFieldText = descfield.text {
                    item.text = textFieldText
                    item.desc = descFieldText
                }
                item.checked = false
                delegate?.itemDetailViewController(self, didFinishAdding: item)
                todoList?.updateData()
            }
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        if let item = itemToEdit {
            title = "Edit Item"
            titlefield.text = item.text
            descfield.text = item.desc
        }
        titlefield.delegate = self
        descfield.delegate = self
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titlefield.becomeFirstResponder()
    }
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}


extension ItemDetailViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        titlefield.becomeFirstResponder()
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        doneButton.isEnabled = textField.text?.isEmpty ?? true ? false : true
        return true
    }
}
