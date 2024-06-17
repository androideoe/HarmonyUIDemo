// 导入页面路由模块
import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column( {space:0}) {
        Text(this.message)
          .width(200)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)

        Text(this.message)
          .width(200)
          .fontSize(20)

        Button() {
          Text('Next')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .margin({top:10})
        .type(ButtonType.Capsule)
        .backgroundColor('#0D9FFB')
        .width('50%')
        .height('5%')
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Next' button.`)
          // 跳转到第二页
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })

        Button() {
          Text('login')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .margin(10)
        .type(ButtonType.Capsule)
        .backgroundColor('#0D9FFB')
        .width('50%')
        .height('5%')
        .onClick(() => {
          router.pushUrl({ url: 'pages/Login' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })

        Button() {
          Text('MyList')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .margin(10)
        .type(ButtonType.Capsule)
        .backgroundColor('#0D9FFB')
        .width('50%')
        .height('5%')
        .onClick(() => {
          router.pushUrl({ url: 'pages/MyList' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })

      }
      .width('100%')
    }
    .height('100%')
  }
}