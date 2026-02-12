//
//  DetailViewController.swift
//  WritingResource
//
//  Created by Laura Burroughs on 2/12/26.
//

import UIKit

class DetailViewController: UIViewController {

    var resource: WritingResource?  // this holds the data

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var audienceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = resource?.name
        descriptionLabel.text = resource?.description
        audienceLabel.text = resource?.audience
    }
}
