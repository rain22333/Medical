import { router } from '@kit.ArkUI'

@Entry
@Component
struct ServiceApprovedSuccess {
  build() {
    Column(){
      Stack(){
        Image($r('app.media.new_people_bg'))
        Column({space:15}){
          Row(){
            Image($r('app.media.icon_40px_left_arrow'))
              .width(25)
              .onClick(()=>{
                router.back()
              })
            Text("审核通过")
              .fontSize(18)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
          }.width("100%")

          Image($r('app.media.new_people_pic'))
            .width(200)
            .margin({
              top:50
            })

          Text("预约服务申请审核通过")
            .width("100%")
            .fontSize(18)
            .textAlign(TextAlign.Center)


          Button("查看预约详情")
            .type(ButtonType.Normal)
            .width("100%")
            .borderRadius(10)
            .backgroundColor($r('app.color.bg_green_primary'))
            .fontWeight(FontWeight.Lighter)
            .onClick(()=>{
              // 点击跳转到预约详情页面
              router.pushUrl({
                url: "component/medical/Service/ServiceApproved"
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