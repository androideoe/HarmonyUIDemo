export class GoodSItem {
  goodsImg: Resource;
  goodsName: string;
  title: string;
  desc: string;
  price: string

  constructor(goodsImg: Resource, goodsName:string, price:string) {
    this.goodsImg = goodsImg
    this.goodsName = goodsName
    this.title = '重磅推荐，MD新品试用中'
    this.desc = '6666人评价 95好评'
    this.price = price
  }
}

export const goodsList: GoodSItem[] = [
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品','¥99'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品11','¥199'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品22','¥299'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品33','¥399'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品44','¥499'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品','¥599'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品','¥699'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品','¥799'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品','¥899'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品','¥999'),
  new GoodSItem($r('app.media.android_fly'),'【新品上市】畅乐冰晶绿低脂新品','¥1099'),
]