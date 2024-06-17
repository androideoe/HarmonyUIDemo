import { GoodSItem, goodsList } from '../viewmodel/initialData'

@Component
export struct GoodsList {
  @State list: GoodSItem[] = goodsList

  build() {
    Row() {
      List({ space: 16 }) {
        ForEach(this.list, (item: GoodSItem) => {
          ListItem() {
            Row() {
              Column() {
                Image(item?.goodsImg).width('100%').height('100%')
              }
              .width('40%').height('100%')

              Column() {
                Text(item.goodsName)
                  .fontSize(16).margin({ bottom: 20 })
                Text(item.title)
                  .fontColor('#666').fontSize(12)
                  .margin({ right: 12, bottom: 10 })
                Row() {
                  Text(item.desc).fontSize(12).fontColor('#666')
                  Text(item.price).fontSize(16).fontColor('e92f4f')
                }

              }.width('60%').padding(8).height('100%')

            }.justifyContent(FlexAlign.SpaceBetween)
            .width('100%')
            .height(120)
          }

        })
      }.width('94%')
    }.width('100%')

  }
}