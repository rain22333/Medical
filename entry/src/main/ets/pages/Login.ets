@Entry
@Component
struct Login {

  @State flag:boolean = false

  build() {
    Column(){

      Stack(){
        Image($r("app.media.bg")).width("100%")
        Row(){
          Column({space:5}){
            Text("登录")
              .fontSize(26)
            Text("欢迎使用家医生医生端")
              .fontColor($r('app.color.fontColor999'))
          }.alignItems(HorizontalAlign.Start)

          Image($r('app.media.03'))
            .width(120)
        }.width("100%")
        .justifyContent(FlexAlign.SpaceAround)
      }

      Column({space:15}){

        Text("账号")
          .fontSize(18)

        TextInput({placeholder:"01023254821"})
          .padding(15)
          .backgroundColor(Color.White)
          .border({
            width:1.5,
            color:$r('app.color.borderGreen')
          })
          .borderRadius(15)

        Text("密码")
          .fontSize(18)
          .margin({
            top:15
          })
        TextInput({placeholder:"请输入密码"})
          .padding(15)
          .backgroundColor(Color.White)
          .border({
            width:1.5,
            color:$r('app.color.borderGreen')
          })
          .borderRadius(15)

        Row(){
          Radio({ value: 'Radio1', group: 'radio' })
            .radioStyle({
              checkedBackgroundColor:$r('app.color.bg_green_primary'),
              uncheckedBorderColor: Color.White,
            })
            .checked(this.flag)
            .height(20)
            .width(20)
            .borderRadius(5)
            .backgroundColor(this.flag ? $r('app.color.bg_green_primary') : Color.White)
            .border({
              width:1,
              color:$r('app.color.bg_green_primary')
            })
            .onClick(()=>{
              this.flag = !this.flag
            })

          Text("我已阅读并同意")
            .fontSize(16)
            .fontColor($r('app.color.fontColor999'))
          Text("《用户隐私政策》")
            .fontSize(16)
            .fontColor($r('app.color.font_colo_green'))
        }

        Button("登录")
          .width("100%")
          .height(50)
          .backgroundColor($r('app.color.bg_green_primary'))
          .borderRadius(15)
          .padding(5)
          .type(ButtonType.Normal)

      }.width("100%")
      .height("100%")
      .borderRadius({
        topLeft:30,
        topRight:30
      }).margin({
        top:-30
      })
      .padding({
        left:15,
        right:15,
        top:50
      })
      .alignItems(HorizontalAlign.Start)
      .backgroundColor(Color.White)

    }.width("100%")
    .height("100%")
  }
}