@Entry
@Component
struct Index {
  // 倒计时
  @State currentNumber: number = 3; // 初始化为3秒
  timer: number | null = null; // 定时器引用

  aboutToAppear(): void {
    // 在页面加载时启动定时器
    this.currentNumber = 3; // 重置倒计时
    this.timer = setInterval(() => {
      this.currentNumber--; // 每秒减少
      if (this.currentNumber <= 0) {
        clearInterval(this.timer); // 清除定时器

      }
    }, 1000);
  }

  navigateToHome(): void {
    // 跳转到首页，替换为你的路由逻辑
    // 比如使用 router.push('/home');
    console.log('跳转到首页'); // 测试用
  }

  build() {
    Stack() {
      Column() {
        Image($r('app.media.pic'))
          .width("80%")
          .margin({ top: '35%' });

        Image($r('app.media.title'))
          .width("30%")
          .margin({ bottom: '10%' });
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.SpaceBetween);

      Text('跳过  ' + this.currentNumber)
        .width(100)
        .padding({ top: 8, bottom: 8 })
        .backgroundColor('#666')
        .borderRadius(5)
        .textAlign(TextAlign.Center)
        .fontColor('#fff')
        .position({ x: '60%' });
    }
  }
}
