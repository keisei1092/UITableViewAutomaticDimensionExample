//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by keisei_1092 on 2017/1/30.
//  Copyright © 2017年 keisei_1092. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		tableView.estimatedRowHeight = 44.0
		tableView.rowHeight = UITableViewAutomaticDimension

		tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

extension ViewController: UITableViewDelegate {

}

extension ViewController: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 100
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell

		var str = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
		let index = str.index(str.startIndex, offsetBy: indexPath.row)
		str = str.substring(to: index)

		cell.label.text = str
		
		return cell
	}

}

