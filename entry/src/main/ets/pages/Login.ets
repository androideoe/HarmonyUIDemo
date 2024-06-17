import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct Login {
  @State userName: string = 'admin'
  @State password: string = '123456'

  build() {
    Column() {

      Image($r('app.media.android_fly'))
        .width(75)
        .height(75)
        .margin({ top: 90 })

      Text('登陆界面')
        .fontSize(20)
        .fontWeight(700)
        .margin({ top: 12 })

      Text('登陆账号以使用更多服务')
        .fontSize(14)
        .fontColor('#999')
        .margin({ top: 6 })

      TextInput(
        {
          placeholder: '请输入用户名'
        }
      ).margin({ top: 30 })
        .onChange((value) => {
          this.userName = value
        })

      TextInput(
        {
          placeholder: '请输入密码'
        }
      ).margin({ top: 30 })
        .type(InputType.Password)
        .onChange((value) => {
          this.password = value
        })

      Button('登陆')
        .width('80%')
        .margin({ top: 30 })
        .onClick(() => {
          if (this.userName == 'admin' && this.password == '123456') {
            router.push({
              url: 'pages/Index'
            })
          } else {
            promptAction.showToast({
              message:'请输入正确的用户名密码'
            })
          }
        })

      Text('注册账号')
        .fontColor('#0078fd')
        .margin({ top: 15 })


    }.width('100%')
    .height('100%')
    .padding(10)
  }
}