<template>
  <div>
    <Header />
    <section class="cart-page flex-view">
      <div class="left-flex">
        <div class="title flex-view">
          <h3>预约明细</h3>
        </div>
        <div class="cart-list-view">
          <div class="list-th flex-view">
            <span class="line-1">场馆名称</span>
            <span class="line-2">价格</span>
          </div>
          <div class="list">
            <div class="items flex-view">
              <div class="book flex-view">
                <img :src="pageData.cover" />
                <h2>{{ pageData.title }}</h2>
              </div>
              <div class="pay">¥{{ pageData.price }}</div>
            </div>
          </div>
        </div>

        <div class="title flex-view">
          <h3>预约场次</h3>
        </div>

        <a-select
          placeholder="请选择场次" allowClear v-model:value="pageData.receiverTime"
          style="margin-top:16px;width:50%;">
          <a-select-option :key="item" :value="item" v-for="item in changciData">{{ item }}</a-select-option>
        </a-select>
        <span style="font-size: 14px;color:#555;">
          （只提供未来两天的场次）
        </span>

        <div class="title flex-view">
          <h3>姓名</h3>
        </div>
        <input v-model="pageData.receiverName" placeholder="请输入姓名" class="name" />

        <div class="title flex-view">
          <h3>联系电话</h3>
        </div>
        <input v-model="pageData.receiverPhone" placeholder="请输入手机号" class="name" />

        <div class="title flex-view">
          <h3>备注</h3>
        </div>
        <input v-model="pageData.remark" placeholder="输入备注信息，100字以内" class="name" />
      </div>
      <div class="right-flex">
        <div class="title flex-view">
          <h3>费用</h3>
          <span class="click-txt">价格</span>
        </div>
        <div class="price-view">
          <div class="price-item flex-view">
            <div class="item-name">总价</div>
            <div class="price-txt">¥{{ pageData.amount }}</div>
          </div>
          <div class="price-item flex-view">
            <div class="item-name">优惠</div>
            <div class="price-txt">¥0</div>
          </div>
          <div class="price-item flex-view">
            <div class="item-name">折扣</div>
            <div class="price-txt">¥0</div>
          </div>
          <div class="total-price-view flex-view">
            <span>合计</span>
            <div class="price">
              <span class="font-big">¥{{ pageData.amount }}</span>
            </div>
          </div>
          <div class="btns-view">
            <button class="btn buy" @click="handleBack()">返回</button>
            <button class="btn pay jiesuan" @click="handleCommit()">提交</button>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import {message} from 'ant-design-vue';
import Header from '/@/views/index/components/header.vue';
import Footer from '/@/views/index/components/footer.vue';
import DeleteIcon from '/@/assets/images/delete-icon.svg';
import {createApi} from '/@/api/index/order';
import {useUserStore} from '/@/store';

const router = useRouter();
const route = useRoute();
const userStore = useUserStore();

const pageData = reactive({
  id: undefined,
  title: undefined,
  cover: undefined,
  price: undefined,
  remark: undefined,
  count: 1,
  amount: undefined,
  receiverName: undefined,
  receiverPhone: undefined,
  receiverTime: undefined,
});

let changciData = ref([]);

const myform = ref();

onMounted(() => {
  pageData.id = route.query.id;
  pageData.title = route.query.title;
  pageData.cover = route.query.cover;
  pageData.price = route.query.price;
  pageData.amount = pageData.price;

  initChangciData();
});

// 初始化场次数据
const initChangciData = () => {

  changciData.value = [];
  // 获取当前日期
  var currentDate = new Date();

  // 获取未来2天的日期
  var futureDates = [];
  for (var i = 1; i <= 2; i++) {
    var futureDate = new Date();
    futureDate.setDate(currentDate.getDate() + i);
    futureDates.push(futureDate);
  }

  // 输出未来2天的年月日信息
  for (var j = 0; j < futureDates.length; j++) {
    var year = futureDates[j].getFullYear();
    var month = futureDates[j].getMonth() + 1; // 月份从0开始，所以需要加1
    var day = futureDates[j].getDate();
    if(month < 10){
      month = '0'+month;
    }
    if(day < 10){
      day = '0' + day;
    }
    changciData.value.push(year + '-'+month+'-'+day + ' '+'10:00-12:00')
    changciData.value.push(year + '-'+month+'-'+day + ' '+'14:00-16:00')
    changciData.value.push(year + '-'+month+'-'+day + ' '+'16:00-18:00')
  }
};

// 恢复表单初始状态
const resetModal = () => {
  myform.value?.resetFields();
};

const onCountChange = (value) => {
  pageData.amount = pageData.price * value;
};

const handleBack = () => {
  router.back();
  console.log('back...');
};
const handleCommit = () => {
  const formData = new FormData();
  let userId = userStore.user_id;
  if (!userId) {
    message.warn('请先登录！');
    return;
  }
  if (!pageData.receiverTime) {
    message.warn('请选择场次！');
    return;
  }
  if (!pageData.receiverName) {
    message.warn('请输入姓名！');
    return;
  }
  formData.append('user', userId);
  formData.append('thing', pageData.id);
  formData.append('count', pageData.count);
  formData.append('remark', pageData.remark || '');
  formData.append('receiver_name', pageData.receiverName || '');
  formData.append('receiver_phone', pageData.receiverPhone || '');
  formData.append('receiver_time', pageData.receiverTime || '');
  console.log(formData);
  createApi(formData)
      .then((res) => {
        message.success('提交成功');
        router.push({name: 'success', query: {title: pageData.title, amount: pageData.amount}, replace: true});
      })
      .catch((err) => {
        message.error(err.msg || '操作失败');
      });
};
</script>

<style scoped lang="less">
.flex-view {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

.cart-page {
  width: 1024px;
  min-height: 50vh;
  margin: 100px auto;
}

.left-flex {
  -webkit-box-flex: 17;
  -ms-flex: 17;
  flex: 17;
  padding-right: 20px;
}

.title {
  margin-top: 20px;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;

  h3 {
    color: #152844;
    font-weight: 600;
    font-size: 16px;
    margin: 0;
  }
}

.cart-list-view {
  margin: 4px 0 40px;

  .list-th {
    height: 42px;
    line-height: 42px;
    border-bottom: 1px solid #cedce4;
    color: #152844;
    font-size: 14px;

    .line-1 {
      -webkit-box-flex: 1;
      -ms-flex: 1;
      flex: 1;
      margin-right: 20px;
    }

    .line-2,
    .pc-style .cart-list-view .list-th .line-3,
    .pc-style .cart-list-view .list-th .line-4 {
      width: 65px;
      margin-right: 30px;
    }

    .line-5 {
      width: 40px;
      margin-right: 40px;
    }

    .line-6 {
      width: 28px;
    }
  }
}

.items {
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  margin-top: 20px;

  .book {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-right: 20px;
    cursor: pointer;

    img {
      width: 48px;
      margin-right: 16px;
      border-radius: 4px;
    }

    h2 {
      -webkit-box-flex: 1;
      -ms-flex: 1;
      flex: 1;
      font-size: 14px;
      line-height: 22px;
      color: #152844;
    }
  }

  .type {
    width: 65px;
    margin-right: 20px;
    color: #152844;
    font-size: 14px;
  }

  .pay {
    color: #ff8a00;
    font-weight: 600;
    font-size: 16px;
    width: 65px;
    margin-right: 20px;
  }

  .num-box {
    width: 80px;
    margin-right: 43px;
    border-radius: 4px;
    border: 1px solid #cedce4;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 32px;
    padding: 0 4px;
  }

  .delete {
    margin-left: 36px;
    width: 24px;
    cursor: pointer;
  }
}

.mb-24 {
  margin-bottom: 24px;
}

.show-txt {
  color: #ff8a00;
  font-size: 14px;
}

.name {
  width: 100%;
  background: #f6f9fb;
  border: 0;
  border-radius: 4px;
  padding: 6px 12px;
  //color: #152844;
  margin-top: 16px;
  resize: none;
  height: 30px;
  line-height: 22px;
}

.remark {
  width: 100%;
  background: #f6f9fb;
  border: 0;
  border-radius: 4px;
  padding: 6px 12px;
  //color: #152844;
  margin-top: 16px;
  resize: none;
  height: 56px;
  line-height: 22px;
}

.right-flex {
  -webkit-box-flex: 8;
  -ms-flex: 8;
  flex: 8;
  padding-left: 24px;
  border-left: 1px solid #cedce4;
}

.click-txt {
  color: #4684e2;
  font-size: 14px;
  cursor: pointer;
}

.address-view {
  margin: 12px 0 24px;

  .info {
    color: #909090;
    font-size: 14px;

    .info-blue {
      cursor: pointer;
      color: #4684e2;
    }
  }

  .name {
    color: #152844;
    font-weight: 500;
  }

  .tel {
    color: #152844;
    float: right;
  }

  .address {
    color: #152844;
    margin-top: 4px;
  }
}

.price-view {
  overflow: hidden;
  margin-top: 16px;

  .price-item {
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-bottom: 8px;
    font-size: 14px;

    .item-name {
      color: #152844;
    }

    .price-txt {
      font-weight: 500;
      color: #ff8a00;
    }
  }

  .total-price-view {
    margin-top: 12px;
    border-top: 1px solid #cedce4;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: start;
    -ms-flex-align: start;
    align-items: flex-start;
    padding-top: 10px;
    color: #152844;
    font-weight: 500;

    .price {
      color: #ff8a00;
      font-size: 16px;
      height: 36px;
      line-height: 36px;
    }
  }

  .btns-view {
    margin-top: 24px;
    text-align: right;

    .buy {
      background: #fff;
      color: #4684e2;
    }

    .jiesuan {
      cursor: pointer;
      background: #4684e2;
      color: #fff;
    }

    .btn {
      cursor: pointer;
      width: 96px;
      height: 36px;
      line-height: 33px;
      margin-left: 16px;
      text-align: center;
      border-radius: 32px;
      border: 1px solid #4684e2;
      font-size: 16px;
      outline: none;
    }
  }
}
</style>
