import UIKit

class DrawingView: UIView {
    private var strokes: [PenStroke] = []
    private var currentStroke: PenStroke?

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let point = touch.location(in: self)
        currentStroke = PenStroke(points: [point], color: .black, width: 5.0)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first, let currentStroke = currentStroke else { return }
        let point = touch.location(in: self)
        self.currentStroke?.points.append(point)
        setNeedsDisplay()
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let currentStroke = currentStroke else { return }
        strokes.append(currentStroke)
        self.currentStroke = nil
        setNeedsDisplay()
        // 这里可以添加代码将笔迹信息传递到另一个终端
    }

    override func draw(_ rect: CGRect) {
        for stroke in strokes {
            let path = UIBezierPath()
            guard let firstPoint = stroke.points.first else { continue }
            path.move(to: firstPoint)
            for point in stroke.points.dropFirst() {
                path.addLine(to: point)
            }
            path.lineWidth = stroke.width
            stroke.color.setStroke()
            path.stroke()
        }

        if let currentStroke = currentStroke {
            let path = UIBezierPath()
            guard let firstPoint = currentStroke.points.first else { return }
            path.move(to: firstPoint)
            for point in currentStroke.points.dropFirst() {
                path.addLine(to: point)
            }
            path.lineWidth = currentStroke.width
            currentStroke.color.setStroke()
            path.stroke()
        }
    }
}