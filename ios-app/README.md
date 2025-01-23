# iOS Touch Stroke Sharing App

## 项目概述
该项目是一个 iOS 应用程序，旨在实现两个终端之间的触屏笔迹信息传递。用户可以在一个设备上绘制笔迹，并将其实时传输到另一个设备上进行显示。

## 文件结构
```
ios-app
├── ios-app
│   ├── AppDelegate.swift          # 应用程序的入口点，负责生命周期管理
│   ├── SceneDelegate.swift        # 管理应用的场景生命周期
│   ├── ViewController.swift       # 主视图控制器，加载和显示用户界面
│   ├── Models
│   │   └── PenStroke.swift        # 定义笔迹模型类
│   ├── Views
│   │   └── DrawingView.swift      # 自定义视图，处理触摸事件并绘制笔迹
│   ├── Controllers
│   │   └── DrawingViewController.swift # 管理 DrawingView 的行为
│   └── Resources
│       └── Assets.xcassets       # 应用程序资源
├── ios-app.xcodeproj              # Xcode 项目的配置文件
├── Podfile                        # CocoaPods 依赖管理文件
└── README.md                      # 项目的文档和说明
```

## 功能特性
- 实时绘制笔迹并在多个设备间同步。
- 支持多种笔迹颜色和宽度设置。
- 友好的用户界面，易于使用。

## 安装与运行
1. 克隆项目到本地。
2. 使用 CocoaPods 安装依赖：
   ```
   pod install
   ```
3. 打开 `ios-app.xcodeproj` 文件。
4. 选择目标设备并运行应用程序。

## 贡献
欢迎任何形式的贡献！请提交问题或拉取请求。

## 许可证
本项目遵循 MIT 许可证。