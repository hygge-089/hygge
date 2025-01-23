import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置视图的背景颜色
        view.backgroundColor = .white
        
        // 初始化并添加 DrawingView
        let drawingView = DrawingView(frame: view.bounds)
        drawingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(drawingView)
    }
}