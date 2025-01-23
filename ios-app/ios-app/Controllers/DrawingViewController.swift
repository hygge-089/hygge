import UIKit

class DrawingViewController: UIViewController {

    var drawingView: DrawingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDrawingView()
    }

    private func setupDrawingView() {
        drawingView = DrawingView(frame: view.bounds)
        drawingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(drawingView)
    }

    func startDrawing(at point: CGPoint) {
        drawingView.startDrawing(at: point)
        // 这里可以添加代码将笔迹信息传递到另一个终端
    }

    func continueDrawing(to point: CGPoint) {
        drawingView.continueDrawing(to: point)
        // 这里可以添加代码将笔迹信息传递到另一个终端
    }

    func endDrawing() {
        drawingView.endDrawing()
        // 这里可以添加代码将笔迹信息传递到另一个终端
    }
}