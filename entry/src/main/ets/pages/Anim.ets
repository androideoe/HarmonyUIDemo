@Entry
@Component
struct Anim {
  @State scaleValue: number = 1

  build() {
    Column() {
      Image($r('app.media.heart'))
        .scale({
          x: this.scaleValue,
          y: this.scaleValue
        })
        .width(100)
        .height(100)
        .margin({ top: 100 })
        .animation({
          duration: 1000,
          iterations: -1, // 无限次
          curve: Curve.Ease,// 曲线
          playMode:PlayMode.Alternate // 交替播放
        })

      Button('click').onClick(() => {
        this.scaleValue = 1.5
      }).margin(20)
    }.width('100%')

  }
}