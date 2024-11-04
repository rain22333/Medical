import { router } from '@kit.ArkUI'

@Entry
@Component
struct NewPeopleSuccess {

  build() {

    Column(){
      Stack(){
        Image($r('app.media.new_people_bg'))
        Column({space:15}){
          Row(){
            Image($r('app.media.icon_40px_left_arrow'))
              .width(25)
              .onClick(()=>{
                router.pushUrl({
                  url:'pages/Index'
                })
              })
            Text("提交成功")
              .fontSize(18)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
          }.width("100%")

          Image($r('app.media.new_people_pic'))
            .width(200)
            .margin({
              top:50
            })

          Text("提交成功，等待居民支付")
            .width("100%")
            .fontSize(18)
            .textAlign(TextAlign.Center)

          Text("签约信息已提交，居民支付后可完成签约")
            .fontSize(14)
            .fontColor($r('app.color.font_color_ccc'))

          Button("查看签约进度")
            .type(ButtonType.Normal)
            .width("100%")
            .borderRadius(10)
            .backgroundColor($r('app.color.bg_green_primary'))
            .fontWeight(FontWeight.Lighter)

          Button("返回首页")
            .width("100%")
            .borderRadius(10)
            .fontColor($r('app.color.font_color_green'))
            .type(ButtonType.Normal)
            .fontWeight(FontWeight.Lighter)
            .backgroundColor(Color.White)
            .border({
              width:1,
              color:$r('app.color.border_green_primary')
            })
            .borderRadius(10)
        }.padding({
          left:10,
          right:10
        })
        .position({
          x:0,
          y:20
        })
      }
    }.width("100%")
    .height("100%")
  }
}