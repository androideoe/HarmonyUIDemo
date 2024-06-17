// 通用style
@Extend(Image) function imgStyle() {
  .width('100%')
  .height(200).borderRadius(10).objectFit(ImageFit.Cover)

}


@Entry
@Component
struct Banner {
  private control: SwiperController = new SwiperController()

  build() {
    Row() {
      Column() {
        Swiper(this.control) {
          Image($r('app.media.ic_my_respect')).imgStyle()
          Image($r('app.media.ic_my_examine_fail')).imgStyle()
          Image($r('app.media.ic_my_custom_service')).imgStyle()
          Image($r('app.media.ic_my_feedback')).imgStyle()
        }
        .padding(10)
        .loop(true)
        .autoPlay(true)
        .interval(2000)
        // .vertical(true) //纵向轮播

        Row() {
          Button('上一页')
            .onClick(() => {
              this.control.showPrevious()
            })

          Button('下一页').onClick(() => {
            this.control.showNext()
          }).margin({ left: 10 })
        }

      }

    }

  }
}
