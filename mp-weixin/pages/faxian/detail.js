(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/faxian/detail"],{"3ef6":function(t,e,n){"use strict";n.r(e);var i=n("c435"),a=n.n(i);for(var r in i)"default"!==r&&function(t){n.d(e,t,(function(){return i[t]}))}(r);e["default"]=a.a},8270:function(t,e,n){},c435:function(t,e,n){"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=a(n("a34a"));function a(t){return t&&t.__esModule?t:{default:t}}function r(t,e,n,i,a,r,s){try{var u=t[r](s),c=u.value}catch(o){return void n(o)}u.done?e(c):Promise.resolve(c).then(i,a)}function s(t){return function(){var e=this,n=arguments;return new Promise((function(i,a){var s=t.apply(e,n);function u(t){r(s,i,a,u,c,"next",t)}function c(t){r(s,i,a,u,c,"throw",t)}u(void 0)}))}}var u={data:function(){return{btnColor:["#409eff","#67c23a","#909399","#e6a23c","#f56c6c","#356c6c","#351c6c","#f093a9","#a7c23a","#104eff","#10441f","#a21233","#503319"],id:"",userid:"",detail:{},swiperList:[],commentList:[],mescroll:null,downOption:{auto:!1},upOption:{noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0,user:{},storeupFlag:0,thumbsupFlag:0,crazilyFlag:0,count:0,timer:null}},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:this.id=e.id,e.userid&&(this.userid=e.userid),this.init();case 3:case"end":return t.stop()}}),t,this)})));function e(e){return t.apply(this,arguments)}return e}(),onUnload:function(){this.timer&&clearInterval(this.timer)},onShow:function(){var e=s(i.default.mark((function e(n){var a,r,s;return i.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return a=t.getStorageSync("nowTable"),e.next=3,this.$api.session(a);case 3:r=e.sent,this.user=r.data,this.btnColor=this.btnColor.sort((function(){return.5-Math.random()})),this.getStoreup(),this.getThumbsup(),s=t.getStorageSync("discussfaxianCleanType"),s&&(t.removeStorageSync("discussfaxianCleanType"),this.mescroll.num=1,this.upCallback(this.mescroll));case 10:case"end":return e.stop()}}),e,this)})));function n(t){return e.apply(this,arguments)}return n}(),destroyed:function(){},methods:{onPayTap:function(){t.setStorageSync("paytable","faxian"),t.setStorageSync("payObject",this.detail),this.$utils.jump("../pay-confirm/pay-confirm?type=1")},onDetailTap:function(e){t.setStorageSync("useridTag",this.userid),this.$utils.jump("./detail?id=".concat(e.id,"&userid=")+this.userid)},getStoreup:function(){var t=s(i.default.mark((function t(){var e,n;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e={page:1,limit:1,refid:this.id,tablename:"faxian",userid:this.user.id,type:1},t.next=3,this.$api.list("storeup",e);case 3:n=t.sent,this.storeupFlag=n.data.list.length;case 5:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}(),shoucang:function(){var e=s(i.default.mark((function e(){var n,a,r,u;return i.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=this,a={page:1,limit:1,refid:n.detail.id,tablename:"faxian",userid:n.user.id,type:1},e.next=4,n.$api.list("storeup",a);case 4:if(r=e.sent,1!=r.data.list.length){e.next=9;break}return u=r.data.list[0].id,t.showModal({title:"提示",content:"是否取消",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=5;break}return t.next=3,n.$api.del("storeup",JSON.stringify([u]));case 3:n.$utils.msg("取消成功"),n.getStoreup();case 5:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()}),e.abrupt("return");case 9:t.showModal({title:"提示",content:"是否收藏",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=5;break}return t.next=3,n.$api.add("storeup",{userid:n.user.id,name:n.detail.wenzhangbiaoti,inteltype:n.detail.wenzhangfenlei,picture:n.swiperList[0],refid:n.detail.id,tablename:"faxian",type:1});case 3:n.$utils.msg("收藏成功"),n.getStoreup();case 5:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()});case 10:case"end":return e.stop()}}),e,this)})));function n(){return e.apply(this,arguments)}return n}(),onAcrossTap:function(e,n,i,a,r){if(t.setStorageSync("crossTable","faxian"),t.setStorageSync("crossObj",this.detail),t.setStorageSync("statusColumnName",i),t.setStorageSync("statusColumnValue",r),t.setStorageSync("tips",a),""!=i&&!i.startsWith("[")){var s=t.getStorageSync("crossObj");for(var u in s)if(u==i&&s[u]==r)return void this.$utils.msg(a)}this.$utils.jump("../".concat(e,"/add-or-update?cross=true"))},init:function(){var t=s(i.default.mark((function t(){var e;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return this.timer&&clearInterval(this.timer),t.next=3,this.$api.info("faxian",this.id);case 3:e=t.sent,this.detail=e.data,this.swiperList=this.detail.tupian?this.detail.tupian.split(","):[],this.detail.neirong=this.detail.neirong.replace(/img src/gi,'img style="width:100%;" src');case 7:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}(),mescrollInit:function(t){this.mescroll=t},downCallback:function(t){this.hasNext=!0,t.resetUpScroll()},upCallback:function(){var t=s(i.default.mark((function t(e){var n;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,this.$api.list("discussfaxian",{page:e.num,limit:10,refid:this.id});case 2:n=t.sent,1==e.num&&(this.commentList=[]),this.commentList=this.commentList.concat(n.data.list),0==n.data.list.length&&(this.hasNext=!1),e.endSuccess(e.size,this.hasNext);case 7:case"end":return t.stop()}}),t,this)})));function e(e){return t.apply(this,arguments)}return e}(),onChatTap:function(){this.$utils.jump("../chat/chat")},download:function(e){var n=this;e=n.$base.url+e,t.downloadFile({url:e,success:function(t){200===t.statusCode&&(n.$utils.msg("下载成功"),window.open(e))}})},onCartTabTap:function(){this.$utils.tab("../shop-cart/shop-cart")},onCommentTap:function(){var t=s(i.default.mark((function t(){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:this.$utils.jump("../discussfaxian/add-or-update?refid=".concat(this.id));case 1:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}(),getThumbsup:function(){var t=s(i.default.mark((function t(){var e,n;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e={page:1,limit:1,refid:this.id,tablename:"faxian",userid:this.user.id,type:"%2%"},t.next=3,this.$api.list("storeup",e);case 3:n=t.sent,n.data.list.length>0&&("21"==n.data.list[0].type?this.thumbsupFlag=1:this.crazilyFlag=1);case 5:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}(),zan:function(){var e=s(i.default.mark((function e(){var n,a,r,u;return i.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=this,a={page:1,limit:1,refid:n.detail.id,tablename:"faxian",userid:n.user.id,type:"%2%"},e.next=4,n.$api.list("storeup",a);case 4:if(r=e.sent,!(r.data.list.length>0)){e.next=9;break}return u=r.data.list[0].id,t.showModal({title:"提示",content:"是否取消点赞",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=8;break}return t.next=3,n.$api.del("storeup",JSON.stringify([u]));case 3:return n.detail.thumbsupnum=parseInt(n.detail.thumbsupnum)-1,t.next=6,n.$api.update("faxian",n.detail);case 6:n.$utils.msg("取消成功"),n.thumbsupFlag=0;case 8:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()}),e.abrupt("return");case 9:t.showModal({title:"提示",content:"是否点赞",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=8;break}return t.next=3,n.$api.add("storeup",{userid:n.user.id,name:n.detail.wenzhangbiaoti,picture:n.swiperList[0],refid:n.detail.id,tablename:"faxian",type:"21"});case 3:return n.detail.thumbsupnum=parseInt(n.detail.thumbsupnum)+1,t.next=6,n.$api.update("faxian",n.detail);case 6:n.$utils.msg("点赞成功"),n.thumbsupFlag=1;case 8:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()});case 10:case"end":return e.stop()}}),e,this)})));function n(){return e.apply(this,arguments)}return n}(),cai:function(){var e=s(i.default.mark((function e(){var n,a,r,u;return i.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=this,a={page:1,limit:1,refid:n.detail.id,tablename:"faxian",userid:n.user.id,type:"%2%"},e.next=4,n.$api.list("storeup",a);case 4:if(r=e.sent,!(r.data.list.length>0)){e.next=9;break}return u=r.data.list[0].id,t.showModal({title:"提示",content:"是否取消点踩",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=8;break}return t.next=3,n.$api.del("storeup",JSON.stringify([u]));case 3:return n.detail.crazilynum=parseInt(n.detail.crazilynum)-1,t.next=6,n.$api.update("faxian",n.detail);case 6:n.$utils.msg("取消成功"),n.crazilyFlag=0;case 8:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()}),e.abrupt("return");case 9:t.showModal({title:"提示",content:"是否点踩",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=8;break}return t.next=3,n.$api.add("storeup",{userid:n.user.id,name:n.detail.wenzhangbiaoti,picture:n.swiperList[0],refid:n.detail.id,tablename:"faxian",type:"22"});case 3:return n.detail.crazilynum=parseInt(n.detail.crazilynum)+1,t.next=6,n.$api.update("faxian",n.detail);case 6:n.$utils.msg("点踩成功"),n.crazilyFlag=1;case 8:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()});case 10:case"end":return e.stop()}}),e,this)})));function n(){return e.apply(this,arguments)}return n}(),onSHTap:function(){this.$refs.popup.open()}}};e.default=u}).call(this,n("543d")["default"])},cbac:function(t,e,n){"use strict";var i={"mescroll-uni":()=>Promise.all([n.e("common/vendor"),n.e("components/mescroll-uni/mescroll-uni")]).then(n.bind(null,"f05e"))},a=function(){var t=this,e=t.$createElement,n=(t._self._c,t.__map(t.swiperList,(function(e,n){var i=e.substring(0,4);return{$orig:t.__get_orig(e),g0:i}})));t.$mp.data=Object.assign({},{$root:{l0:n}})},r=[];n.d(e,"b",(function(){return a})),n.d(e,"c",(function(){return r})),n.d(e,"a",(function(){return i}))},cde4:function(t,e,n){"use strict";(function(t){n("6cdc"),n("921b");i(n("66fd"));var e=i(n("ffd6"));function i(t){return t&&t.__esModule?t:{default:t}}t(e.default)}).call(this,n("543d")["createPage"])},f043:function(t,e,n){"use strict";var i=n("8270"),a=n.n(i);a.a},ffd6:function(t,e,n){"use strict";n.r(e);var i=n("cbac"),a=n("3ef6");for(var r in a)"default"!==r&&function(t){n.d(e,t,(function(){return a[t]}))}(r);n("f043");var s,u=n("f0c5"),c=Object(u["a"])(a["default"],i["b"],i["c"],!1,null,"00f50ac2",null,!1,i["a"],s);e["default"]=c.exports}},[["cde4","common/runtime","common/vendor"]]]);