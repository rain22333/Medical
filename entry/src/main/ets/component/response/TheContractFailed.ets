import { router } from '@kit.ArkUI'

@Entry
@Component
struct TheContractFailed {

  build() {
    Column(){
      Stack(){
        Image($r('app.media.contract_failed_bg'))
        Column({space:15}){
          Row(){
            Image($r('app.media.icon_40px_left_arrow'))
              .width(25)
              .onClick(()=>{
                router.back()
              })
            Text("签约失败")
              .fontSize(18)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
          }.width("100%")

          Image($r('app.media.contranct_pic'))
            .width(200)
            .margin({
              top:50
            })

          Text("签约失败")
            .width("100%")
            .fontSize(18)
            .textAlign(TextAlign.Center)

          Text("您已驳回了该居民的签约申请")
            .fontSize(14)
            .fontColor($r('app.color.font_color_ccc'))

          Text("原因: 服务包不适用您的当前年龄,请重新选择后提交")
            .fontSize(14)
            .fontColor($r('app.color.font_color_ccc'))
            .margin({
              bottom:30
            })

          Button("查看签约详情")
            .type(ButtonType.Normal)
            .width("100%")
            .borderRadius(10)
            .backgroundColor($r('app.color.bg_green_primary'))
            .fontWeight(FontWeight.Lighter)
            .onClick(()=>{
              // 点击跳转到驳回详情页面
              router.pushUrl({
                url:"component/medical/Agency/AgencyFail"
              })
            })

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
            .onClick(()=>{
              router.pushUrl({
                url:"pages/Index"
              })
            })
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