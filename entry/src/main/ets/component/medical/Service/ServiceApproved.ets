import { router } from '@kit.ArkUI'
import { peopleInfo,renderHeader } from '../../common/Info'

@Entry
@Component
struct ServiceApproved {



  build() {
    Scroll(){
      Column(){

        renderHeader("服务详情","查看档案")

        // 等待医生审核
        Row({ space: 15 }) {
          Image($r('app.media.icon_40px_remind'))
            .width(25)
          Text("预约服务已申请通过,请按时提供服务")
            .fontColor($r('app.color.font_color_green'))
            .fontWeight(FontWeight.Lighter)
        }.width("100%")
        .padding(15)
        .backgroundColor($r('app.color.bg_green_second'))


        // 居民信息
        peopleInfo()

        // 服务信息
        Column() {
          Text("服务信息")
            .fontSize(18)
            .width("100%")
            .padding({ left: 15 })
            .margin({
              bottom: 15
            })
          this.renderInfoRow("服务单号", "202205200003")
          this.renderInfoRow("服务来源", "居民申请")
          this.renderInfoRow("预约医生", "阳兰广")
          this.renderInfoRow("服务包", "健康体验包")
          this.renderInfoRow("服务项目", "健康年包(剩余2次)")
          this.renderInfoRow("服务地点", "机构门诊")
          this.renderInfoRow("服务时间", "2022/05/23 10:30")
          this.renderInfoRow("备注", "最近脖子疼")
          this.renderInfoRow("提交时间", "2022/05/26 10:20:30")
          this.renderInfoRow("申请时间", "2022/05/26 10:20:30")

        }.width("100%")
        .padding({
          top: 15,
          left: 15,
          right: 15
        })
        .backgroundColor(Color.White)
        .margin({
          top: 15,
          bottom:15
        })

        // 按钮
        this.renderButton()


      }
      .width("100%")
      .backgroundColor($r('app.color.border_gray_f5f7fb'))
    }
    .edgeEffect(EdgeEffect.Spring)
    .friction(0.6)
    .scrollBar(BarState.Off)
    .width('100%')
    .height('100%')

  }


  // 渲染信息行
  @Builder
  renderInfoRow(label: string, value: string) {
    Row() {
      Text(label)
        .width("35%")
      Text(value)
        .fontSize(14)
        .fontColor($r('app.color.font_color_999'))
    }
    .padding(15)
    .width("100%")

    Divider().width("95%")
  }

  @Builder
  renderButton(){
    Row(){
      Button("取消")
        .backgroundColor(Color.White)
        .border({
          width:0.5,
          color:$r('app.color.border_orange')
        })
        .fontColor($r('app.color.font_color_orange'))
        .buttonStyle(ButtonStyleMode.NORMAL)
        .onClick(()=>{
          // 点击之后跳转到取消成功页面
          router.pushUrl({
            url:"component/response/CancelService"
          })
        })

      Button("服务")
        .backgroundColor($r('app.color.bg_green_primary'))
        .fontColor(Color.White)
        .onClick(()=>{
          // 点击服务跳转到健康随访页面
          router.pushUrl({
            url:"component/medical/Service/Healthy"
          })
        })
        .buttonStyle(ButtonStyleMode.NORMAL)
    }.width("100%")
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
    .padding({
      left:15,
      right:15,
      top:5,
      bottom:25
    })
  }
}

@Extend(Button) function buttonStyle(){
  .fontWeight(FontWeight.Lighter)
  .borderRadius(12)
  .width("48%")
  .type(ButtonType.Normal)
  .padding({
    left:25,
    right:25,
    top:10,
    bottom:10
  })
}