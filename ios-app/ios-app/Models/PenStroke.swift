class PenStroke {
    var points: [CGPoint]
    var color: UIColor
    var width: CGFloat

    init(points: [CGPoint], color: UIColor, width: CGFloat) {
        self.points = points
        self.color = color
        self.width = width
    }
}