import { router } from '@kit.ArkUI'
import { renderInfoRow, peopleInfo, renderHeader } from '../../common/Info'

@Entry
@Component
struct ServiceDetail {
  build() {

    Scroll(){
      Column() {
        renderHeader("服务详情", "查看档案")

        // 服务完成
        Row({ space: 15 }) {
          Image($r('app.media.icon_40px_remind'))
            .width(25)
          Text("服务完成")
            .fontColor($r('app.color.font_color_green'))
            .fontWeight(FontWeight.Lighter)
        }.width("100%")
        .padding(15)
        .backgroundColor($r('app.color.bg_green_second'))

        peopleInfo()

        this.bookingInfo()

        this.serviceInfo()
      }
      .width("100%")
      .backgroundColor($r('app.color.border_gray_f5f7fb'))
    }.edgeEffect(EdgeEffect.Spring)
    .friction(0.6)
    .scrollBar(BarState.Off)
    .width('100%')
    .height('100%')

  }

  @Builder
  bookingInfo() {
    Column() {
      Text("预约信息")
        .textAlign(TextAlign.Start)
        .width("100%")
        .padding({
          left: 15
        })
        .fontSize(18)
        .margin({
          bottom: 10
        })
      renderInfoRow("服务单号", "202205200003")
      renderInfoRow("服务来源", "居民申请")
      renderInfoRow("预约医生", "阳兰广")
      renderInfoRow("服务包", "健康体验包")
      renderInfoRow("服务项目", "健康年包(剩余2次)")
      renderInfoRow("服务地点", "机构门诊")
      renderInfoRow("服务时间", "2022/05/23 10:30")
      renderInfoRow("备注", "最近脖子疼")
      renderInfoRow("提交时间", "2022/05/26 10:20:30")
      renderInfoRow("审核时间", "2022/05/26 19:20:30")
      renderInfoRow("完成时间", "2022/05/27 19:20:30")
    }.width("100%")
    .padding({
      left: 10,
      right: 10,
      top: 15
    })
    .margin({
      top: 15
    })
    .backgroundColor(Color.White)
  }

  @Builder
  serviceInfo() {
    Column() {
      Text("服务详情")
        .textAlign(TextAlign.Start)
        .width("100%")
        .padding({
          left: 15
        })
        .fontSize(18)
        .margin({
          bottom: 10
        })

      renderInfoRow("血压", "120/80 mmHg")
      renderInfoRow("空腹血糖", "90 mmol/L")
      renderInfoRow("心率", "80bmp")
      renderInfoRow("症状", "头晕头疼: 恶心干呕")
      renderInfoRow("健康指导", "饮食尽量清淡,适度运动")


    }.width("100%")
    .padding({
      left: 10,
      right: 10,
      top: 15
    })
    .margin({
      top: 15
    })
    .backgroundColor(Color.White)
  }
}