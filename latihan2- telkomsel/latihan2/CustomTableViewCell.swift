//
//  CustomTableViewCell.swift
//  latihan2
//
//  Created by Phincon on 16/02/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "cellId"
    
    
    
    var paketLbl: UILabel = {
        
        let label = UILabel()
        label.text = "Test"
        label.font = UIFont.boldSystemFont (ofSize: 24)
        return label
    }()
    
    var durasiLbl: UILabel = {
    
        let durasi = UILabel()
        durasi.text = "Test"
        durasi.backgroundColor = .lightGray
        durasi.layer.masksToBounds = true
        durasi.layer.cornerRadius = 8
        durasi.font = UIFont.boldSystemFont (ofSize: 12)
        durasi.textAlignment = .center

        return durasi
    }()
    
    var hargaAsliLbl: UILabel = {
        
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Your Text")
        
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        
        let hargaAsli = UILabel()
        hargaAsli.text = "Test"
        hargaAsli.attributedText = attributeString
        hargaAsli.font = UIFont.boldSystemFont (ofSize: 12)
        hargaAsli.textColor = .lightGray

        return hargaAsli
    }()
    
    var hargaDiskonLbl: UILabel = {
        
        let hargaDiskon = UILabel()
        hargaDiskon.text = "Test"
        hargaDiskon.font = UIFont.boldSystemFont (ofSize: 18)
        hargaDiskon.textColor = .red
        return hargaDiskon
    }()
    
    var jenisPaketLbl: UILabel = {
        
        let jenisPaket = UILabel()
        jenisPaket.text = "Test"
        jenisPaket.font = UIFont.boldSystemFont (ofSize: 14)
        return jenisPaket
    }()
    
    var saveImg: UIImageView = {
        
        let img = UIImageView()
        img.image = UIImage(systemName: "bookmark.fill")
        img.tintColor = .lightGray
        return img
    }()
    
//    let cellView: UIView = {
//        let view = UIView()
//            view.layer.cornerRadius  = 4
//            view.backgroundColor     = UIColor.white
//            view.layer.shadowColor   = UIColor.black.cgColor
//            view.layer.shadowOpacity = 1
//            view.layer.shadowOffset  = CGSize.zero
//            view.layer.shadowRadius  = 3
//            return view
//        }()

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupTableViewCell()
    }

    func setupTableViewCell() {
        registerSubview()
        setupPaket()
        setupDurasi()
        setupHargaAsli()
        setupHargaDiskon()
        setupJenisPaket()
        setupSaveImage()
    }
    
    func registerSubview() {
        
        self.addSubview(paketLbl)
        self.addSubview(durasiLbl)
        self.addSubview(hargaAsliLbl)
        self.addSubview(hargaDiskonLbl)
        self.addSubview(jenisPaketLbl)
        self.addSubview(saveImg)
//        self.addSubview(cellView)
    }
    
    func setupPaket(){
        
        self.paketLbl.translatesAutoresizingMaskIntoConstraints = false
        self.paketLbl.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        self.paketLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        
    }
    
    func setupDurasi() {
        
        self.durasiLbl.translatesAutoresizingMaskIntoConstraints = false
        self.durasiLbl.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        self.durasiLbl.leadingAnchor.constraint(equalTo: paketLbl.trailingAnchor, constant: 10).isActive = true
        self.durasiLbl.heightAnchor.constraint(equalToConstant: 28).isActive = true
        self.durasiLbl.widthAnchor.constraint(equalToConstant: 83).isActive = true
    }
    
    func setupHargaAsli() {
        
        self.hargaAsliLbl.translatesAutoresizingMaskIntoConstraints = false
        self.hargaAsliLbl.topAnchor.constraint(equalTo: self.paketLbl.bottomAnchor, constant: 30).isActive = true
        self.hargaAsliLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true

        
    }
    
    func setupHargaDiskon() {
        
        self.hargaDiskonLbl.translatesAutoresizingMaskIntoConstraints = false
        self.hargaDiskonLbl.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        self.hargaDiskonLbl.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
    }
    
    func setupJenisPaket() {
        
        self.jenisPaketLbl.translatesAutoresizingMaskIntoConstraints = false
        self.jenisPaketLbl.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        self.jenisPaketLbl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true

    }
    
    func setupSaveImage() {
        
        self.saveImg.translatesAutoresizingMaskIntoConstraints = false
        self.saveImg.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        self.saveImg.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true

    }
    
    func setupCellView() {
        
    }
    
    
    func setPaketLabel(text: String) {
        self.paketLbl.text = text
    }
    
    func setDurasiLabel(text: String) {
        self.durasiLbl.text = text
    }
    
    func sethargaAsliLabel(text: String) {
        self.hargaAsliLbl.text = text
    }
    
    func sethargaDiskonLabel(text: String) {
        self.hargaDiskonLbl.text = text
    }
    
    func setJenisPaketLabel(text: String) {
        self.jenisPaketLbl.text = text
    }
}



