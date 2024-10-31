import { TabBarClass } from '../models/Tab'
import Medical from './Medical'

@Entry
@Component
struct Index {


  @State
  currentIndex:number = 0


  @State
  tabList:TabBarClass[] = [
    {
      icon:$r("app.media.icon_40px_tab_icon01"),
      name:'Index',
      title:'首页'
    },
    {
      icon:$r("app.media.icon_40px_tab_icon02"),
      name:'People',
      title:'居民'
    },
    {
      icon:$r("app.media.icon_40px_tab_icon03"),
      name:'Message',
      title:'消息'
    },
    {
      icon:$r("app.media.icon_40px_tab_icon04"),
      name:'My',
      title:'我的'
    }
  ]


  @Builder
  CommonTabBar(item:TabBarClass){
    Column(){
      Image(item.icon)
        .width(20)
        .height(20)
      Text(item.title)
        .fontSize(12)
        .fontColor(item.name === this.tabList[this.currentIndex].name ? $r('app.color.font_color_green') : $r('app.color.font_black'))
        .margin({
          top:5
        })
    }
  }


   build() {
      Tabs({index: $$this.currentIndex}){
        ForEach(this.tabList,(item:TabBarClass)=>{
          TabContent(){
            if(item.name === 'Index'){
              Medical()
            }else if(item.name === 'People'){
              Text('居民')
            }else if(item.name === 'Message'){
              Text('消息')
            }else if(item.name === 'My'){
              Text('我的')
            }
          }.tabBar(this.CommonTabBar(item))
        },(item:TabBarClass)=> item.name.toString())
      }.barPosition(BarPosition.End)
     .animationDuration(200)
   }
}
