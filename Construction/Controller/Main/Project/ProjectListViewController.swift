//
//  ProjectListViewController.swift
//  Construction
//
//  Created by Macmini on 11/19/17.
//  Copyright © 2017 LekshmySankar. All rights reserved.
//

import UIKit

class ProjectListViewController: BarHidableViewController {
    @IBOutlet weak var tblProjects: UITableView!
    var projects = [Project]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projects.append(Project(with: ["title": "Hello1"]))
        projects.append(Project(with: ["title": "Hello2"]))
        projects.append(Project(with: ["title": "Hello3"]))
        tblProjects.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ProjectListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PROJECT_CELL", for: indexPath) as! ProjectTableViewCell
        cell.reset(with: self.projects[indexPath.row])
        return cell
    }
}

extension ProjectListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UIManager.shared.showProject(project: self.projects[indexPath.row])
    }
}

