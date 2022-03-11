//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Tai Chin Huang on 2022/3/11.
//

import UIKit

private let reuseIdentifier = "Food"

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] = [
        Meal(name: "breakfast", food: [Food(name: "Ham and mushroom ravioli", description: "House-made ravioli filled with pine nuts, parmesan, ham, and mushrooms. Served over tomato sauce."),
                                       Food(name: "Chicken Noodle Soup", description: "Chicken simmered alongside yellow onions, carrots, celery, and bay leaves.")]),
        Meal(name: "lunch", food: [Food(name: "Italian Salad", description: "Garlic, red onions, tomatoes, mushrooms, and olives on top of romaine lettuce."),
                                   Food(name: "水餃", description: "好吃的水餃"),
                                   Food(name: "水餃", description: "好吃的水餃")]),
        Meal(name: "dinner", food: [Food(name: "Spaghetti and Meatballs", description: "Seasoned meatballs on top of freshly-made spaghetti. Served with a robust tomato sauce."),
                                    Food(name: "Margherita Pizza", description: "Tomato sauce, fresh mozzarella, basil and extra-virgin oil."),
                                    Food(name: "Grilled Steelhead Trout", description: "Pacific steelhead trout with lettuce, tomato, and red onion."),
                                    Food(name: "水餃", description: "好吃的水餃")]),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // not sure is the best solution, find food in meals
        let food = meals[section].food
        switch section {
        case 0:
            return food.count
        case 1:
            return food.count
        case 2:
            return food.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section].name
        return meal
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
