import { TabBars } from '../components/TabBars'


@Entry
@Component
struct MyList {
  build() {
    Row() {
      Navigation() {
        Column() {
          TabBars()
        }
      }
      .size({ width: '100%', height: '100%' })
      .title('华为商城')
      .titleMode(NavigationTitleMode.Mini)
    }
    .height('100%')
    .backgroundColor('#f1f3f5')
  }
}