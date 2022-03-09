import UIKit

@IBDesignable
class SubviewHome: UIView {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var logoImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()

    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib(nibName: "SubviewHome") else {return}
        view.frame = self.bounds
        self.addSubview(view)
    }
     
    func setTextColor(_ color: UIColor) {
        titleLabel.textColor = color
        infoLabel.textColor = color
    }
}

