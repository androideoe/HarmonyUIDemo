import { GoodsList } from '../components/GoodsList'

@Component
export struct TabBars {
  @State tabsIndex: number = 0
  @State initBarData: string[] = [
    '精选', '手机', '服饰', '穿搭', '家居'
  ]

  @Builder
  tabBarBuilder(content: string, index: number) {
    Column() {
      Text(content)
        .fontSize(this.tabsIndex == index ? 20 : 16)
        .fontColor(this.tabsIndex == index ? '#000' : '#666')
    }
  }

  build() {
    Tabs() {
      ForEach(this.initBarData, (item: string, index: number) => {
        TabContent() {
          Column() {
            if(index == 0) {
              GoodsList()
            } else {
              Text(item).fontSize(80)
            }
          }.justifyContent(FlexAlign.Center)
          .width('100%')
          .height('100%')
        }
        .tabBar(this.tabBarBuilder(item, index !== undefined ? index : 0)) // 标题
      })

    }.onChange((index: number) => {
      this.tabsIndex = index
    })
  }
}