<template>
  <div>
    <Header />
    <div class="pay-content">
      <div class="title">预约成功</div>
      <div class="text time-margin">
        <span>场馆{{ title }}已预约成功，感谢使用 </span>
      </div>

      <div class="pay-choose-view" style="">
        <button class="pay-btn pay-btn-active" @click="handleLook()">查看预约</button>
      </div>
    </div>
  </div>
</template>

<script setup>
  import Header from '/@/views/index/components/header.vue';
  import { useRoute, useRouter } from 'vue-router/dist/vue-router';
  const router = useRouter();
  const route = useRoute();

  let ddlTime = ref();
  let title = ref();
  let amount = ref();

  onMounted(() => {
    amount.value = route.query.amount;
    title.value = route.query.title;
  });

  const handleLook = () => {
    router.push({ name: 'orderView', replace: true});
  };
</script>

<style scoped lang="less">
  .flex-view {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }

  .pay-content {
    position: relative;
    margin: 200px auto 0;
    background: #fff;
    overflow: hidden;

    .title {
      color: #152844;
      font-weight: 500;
      font-size: 24px;
      line-height: 22px;
      height: 22px;
      text-align: center;
      margin-bottom: 11px;
    }

    .time-margin {
      margin: 11px 0 24px;
    }

    .text {
      height: 22px;
      line-height: 22px;
      margin-top: 16px;
      font-size: 14px;
      text-align: center;
      color: #152844;
    }

    .time {
      color: #f62a2a;
    }

    .text {
      height: 22px;
      line-height: 22px;
      font-size: 14px;
      text-align: center;
      color: #152844;
    }

    .price {
      color: #ff8a00;
      font-weight: 500;
      font-size: 16px;
      height: 36px;
      line-height: 36px;
      text-align: center;

      .num {
        font-size: 28px;
      }
    }

    .pay-choose-view {
      margin-top: 24px;

      .choose-box {
        width: 140px;
        height: 126px;
        border: 1px solid #cedce4;
        border-radius: 4px;
        text-align: center;
        cursor: pointer;
      }

      .pay-choose-box {
        -webkit-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
        max-width: 300px;
        margin: 0 auto;

        img {
          height: 40px;
          margin: 24px auto 16px;
          display: block;
        }
      }

      .tips {
        color: #6f6f6f;
        font-size: 14px;
        line-height: 22px;
        height: 22px;
        text-align: center;
        margin: 16px 0 24px;
      }

      .choose-box-active {
        border: 1px solid #4684e2;
      }

      .tips {
        color: #6f6f6f;
        font-size: 14px;
        line-height: 22px;
        height: 22px;
        text-align: center;
        margin: 16px 0 24px;
      }

      .pay-btn {
        cursor: pointer;
        background: #c3c9d5;
        border-radius: 32px;
        width: 104px;
        height: 32px;
        line-height: 32px;
        border: none;
        outline: none;
        font-size: 14px;
        color: #fff;
        text-align: center;
        display: block;
        margin: 0 auto;
      }

      .pay-btn-active {
        background: #4684e2;
      }
    }
  }
</style>
