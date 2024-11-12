/**
 * Index-服务管理-取消成功
 */
import { router } from '@kit.ArkUI'

@Entry
@Component
struct CancelService {
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
            Text("取消成功")
              .fontSize(18)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
          }.width("100%")

          Image($r('app.media.new_people_pic'))
            .width(200)
            .margin({
              top:50
            })

          Text("预约服务取消成功")
            .width("100%")
            .fontSize(18)
            .textAlign(TextAlign.Center)

          Text("您已取消了该居民的服务预约")
            .fontSize(14)
            .fontColor($r('app.color.font_color_ccc'))

          Text("取消原因: 本周临时工作变动不能安排上门服务")
            .fontSize(14)
            .fontColor($r('app.color.font_color_ccc'))

          Button("查看预约详情")
            .type(ButtonType.Normal)
            .width("100%")
            .borderRadius(10)
            .backgroundColor($r('app.color.bg_green_primary'))
            .fontWeight(FontWeight.Lighter)
            .onClick(()=>{
              // 取消预约其实就是驳回了，所以跳转到驳回页面
              router.pushUrl({
                url:"component/medical/Service/RejectedService"
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