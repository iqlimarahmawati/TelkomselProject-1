//
//  ViewController.swift
//  lati
//
//  Created by Phincon on 16/02/23.
//

import UIKit

protocol VcProtocol {
    
    func appendPaketData()
    
}

final class viewController: UIViewController {
    
    
}


//enum Section: Int {
//    case first: 0
//
//}

class ViewController: UIViewController {

    var namaPaket: [NamaPaketModel] = []
    private var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        
        view.addSubview(tableView)
        
        appendPaketData()
        
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namaPaket.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        //
        let parsePaket = namaPaket[indexPath.row]
        cell.setDurasiLabel(text: parsePaket.durasi)
        cell.sethargaAsliLabel(text: parsePaket.hargaAsli)
        cell.sethargaDiskonLabel(text: parsePaket.hargaDiskon)
        cell.setJenisPaketLabel(text: parsePaket.jenisPaket)
        cell.setPaketLabel(text: parsePaket.paket)
        
        cell.setupTableViewCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 116
    }
    
}

extension ViewController: VcProtocol {
    func appendPaketData() {
       let namaPaket1 = NamaPaketModel(paket: "14 GB", durasi: "30 Hari", hargaAsli: "Rp99.000", hargaDiskon: "Rp96.000", jenisPaket: "internet OMG")
       let namaPaket2 = NamaPaketModel(paket: "27 GB", durasi: "30 Hari", hargaAsli: "Rp154.000", hargaDiskon: "Rp141.000", jenisPaket: "Combo OMG")
       let namaPaket3 = NamaPaketModel(paket: "6.5 GB", durasi: "30 Hari", hargaAsli: "Rp63.000", hargaDiskon: "Rp61.000",jenisPaket: "internet Paket")
       let namaPaket4 = NamaPaketModel(paket: "4 GB", durasi: "30 Hari", hargaAsli: "Rp38.000", hargaDiskon: "Rp37.000",jenisPaket: "internet Paket")
       let namaPaket5 = NamaPaketModel(paket: "7 GB", durasi: "30 Hari", hargaAsli: "Rp63.000", hargaDiskon: "Rp61.000", jenisPaket: "internet Paket")
       let namaPaket6 = NamaPaketModel(paket: "52 GB", durasi: "30 Hari", hargaAsli: "Rp101.000", hargaDiskon: "Rp172.000", jenisPaket: "internet Paket")
       let namaPaket7 = NamaPaketModel(paket: "19 GB", durasi: "30 Hari", hargaAsli: "Rp119.000", hargaDiskon: "Rp110.000",jenisPaket: "internet Paket")
       
       
       namaPaket.append(namaPaket1)
       namaPaket.append(namaPaket2)
       namaPaket.append(namaPaket3)
       namaPaket.append(namaPaket4)
       namaPaket.append(namaPaket5)
       namaPaket.append(namaPaket6)
       namaPaket.append(namaPaket7)
   }

    
    
}
