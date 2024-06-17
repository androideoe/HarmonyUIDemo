type listItem = {
  title: string,
  img: Resource

}

@Entry
@Component
struct Login {
  @State list: listItem[] = [
    { title: '我的最爱', img: $r('app.media.ic_my_share') },
    { title: '历史记录', img: $r('app.media.ic_my_setting') },
    { title: '消息', img: $r('app.media.ic_my_scan_history') },
    { title: '购物车', img: $r('app.media.ic_my_respect') },
    { title: '我的目标', img: $r('app.media.ic_my_examine_fail') },
    { title: '圈子', img: $r('app.media.ic_my_custom_service') },
    { title: '收藏', img: $r('app.media.ic_my_examine') },
    { title: '回收站', img: $r('app.media.ic_my_feedback') }
  ];

  build() {
    // 换行控制
    Flex({wrap:FlexWrap.Wrap} ) {
      ForEach(this.list,(item:listItem) => {
        Column() {
          Image(item.img).width(24).height(24)
          Text(item.title).fontSize(12)
        }.width('25%')
        .margin({top:'8',bottom:'8'}) // 上下边距
      })
    }
    .padding(10)
    .margin(20)
    .borderRadius(10)
    .backgroundColor('#fff')

  }
}