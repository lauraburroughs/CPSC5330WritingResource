//
//  ViewController.swift
//  WritingResource
//
//  Created by Laura Burroughs on 2/12/26.
//

import UIKit



let writingResources = [
    WritingResource(name: "Purdue OWL", description: "Comprehensive online writing lab covering grammar, citation styles, and research tips", audience: "Students"),
    WritingResource(name: "Hemingway Editor", description: "Tool to simplify writing, highlight complex sentences, and improve readability", audience: "Students"),
    WritingResource(name: "Grammarly", description: "AI-powered writing assistant checking grammar, spelling, and style", audience: "Professionals"),
    WritingResource(name: "Chicago Manual of Style", description: "Definitive guide to Chicago style citations, punctuation, and formatting", audience: "Faculty"),
    WritingResource(name: "MLA Handbook", description: "Official guide for MLA citation style and writing conventions", audience: "Students"),
    WritingResource(name: "APA Style Blog", description: "Official blog offering examples and clarifications for APA style rules", audience: "Faculty"),
    WritingResource(name: "Thesaurus.com", description: "Quick reference for synonyms and antonyms to improve vocabulary.", audience: "Students"),
    WritingResource(name: "JSTOR", description: "Digital library of academic journals, books, and primary sources", audience: "Faculty"),
    WritingResource(name: "Google Scholar", description: "Search engine for scholarly literature across disciplines", audience: "Students"),
    WritingResource(name: "Zotero", description: "Reference manager to collect, organize, cite, and share research sources", audience: "Professionals")
]



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    // How many rows in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return writingResources.count
    }

    // How each cell should look
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Reuse a cell with identifier "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Get the WritingResource for this row
        let resource = writingResources[indexPath.row]
        
        // Show the resource name in the cell
        cell.textLabel?.text = resource.name
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedResource = writingResources[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: selectedResource)
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            detailVC.resource = writingResources[indexPath.row]
        }
    }

    
}

