import { peopleInfo } from '../../common/Info'
import { router } from '@kit.ArkUI'

/**
 * Index-服务管理-驳回
 */
@Entry
@Component
struct Rejected {

    build() {
      Scroll(){
        Column(){

          this.renderHeader()

          // 预约服务已被驳回
          Row({ space: 15 }) {
            Image($r('app.media.icon_40px_overrule'))
              .width(25)
            Text("预约服务已被驳回")
              .fontColor($r('app.color.font_color_red'))
              .fontWeight(FontWeight.Lighter)
          }.width("100%")
          .padding(15)
          .backgroundColor($r('app.color.bg_pink'))


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
            this.renderInfoRow("驳回原因", "本周临时工作变动不能上门服务")
            this.renderInfoRow("提交时间", "2022/05/26 10:20:30")
            this.renderInfoRow("审核时间", "2022/05/26 10:20:30")

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

    @Builder
    renderHeader() {
      Row() {
        Image($r('app.media.icon_40px_left_arrow'))
          .width(25)
          .onClick(() => router.back())
        Text("服务详情")
          .fontSize(18)
        Text("查看档案")
          .fontSize(14)
          .fontColor($r('app.color.font_green'))
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
      .padding(15)
      .backgroundColor(Color.White)
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

}