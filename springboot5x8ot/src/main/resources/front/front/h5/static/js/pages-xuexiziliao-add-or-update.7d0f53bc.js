(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-xuexiziliao-add-or-update"],{"0289":function(i,e,t){var r=t("24fb");e=r(!1),e.push([i.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.content[data-v-2831da76]{min-height:calc(100vh - 44px);box-sizing:border-box}',""]),i.exports=e},"0866":function(i,e,t){var r=t("0289");"string"===typeof r&&(r=[[i.i,r,""]]),r.locals&&(i.exports=r.locals);var n=t("4f06").default;n("d5d2a6cc",r,!0,{sourceMap:!1,shadowMode:!1})},"0d67":function(i,e,t){"use strict";t.r(e);var r=t("70ec"),n=t("595b");for(var a in n)"default"!==a&&function(i){t.d(e,i,(function(){return n[i]}))}(a);t("8629");var o,s=t("f0c5"),u=Object(s["a"])(n["default"],r["b"],r["c"],!1,null,"2831da76",null,!1,r["a"],o);e["default"]=u.exports},"595b":function(i,e,t){"use strict";t.r(e);var r=t("e46b"),n=t.n(r);for(var a in r)"default"!==a&&function(i){t.d(e,i,(function(){return r[i]}))}(a);e["default"]=n.a},"70ec":function(i,e,t){"use strict";var r={"xia-editor":t("064f").default,"w-picker":t("e2b1").default},n=function(){var i=this,e=i.$createElement,t=i._self._c||e;return t("v-uni-view",{staticClass:"content"},[t("v-uni-view",{style:{minHeight:"100vh",width:"100%",padding:"0 0 132rpx",position:"relative",background:"url(http://codegen.caihongy.cn/20221112/286392d539b94f04bcf52c9a98e1d573.png) no-repeat right top,url(http://codegen.caihongy.cn/20221112/e866eac60553442587c2b20f0b4f151b.png) no-repeat right bottom,#fdfaf0",height:"auto"}},[t("v-uni-form",{staticClass:"app-update-pv",style:{width:"100%",padding:"100rpx 40rpx",background:"none",display:"block",height:"auto"}},[t("v-uni-view",{style:{padding:"12rpx 0",margin:"0 0 24rpx 0",borderColor:"#ccc",alignItems:"center",borderWidth:"0 0 2rpx 0",display:"flex",width:"100%",borderStyle:"dashed",height:"auto"}},[t("v-uni-view",{staticClass:"title",style:{width:"auto",padding:"0 32rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#333",textAlign:"right"}},[i._v("标题")]),t("v-uni-input",{style:{border:"0",padding:"0px 24rpx",margin:"0px",color:"rgb(0, 0, 0)",borderRadius:"8rpx",flex:"1",background:"rgba(255, 255, 255, 0)",fontSize:"28rpx",height:"80rpx"},attrs:{disabled:i.ro.biaoti,placeholder:"标题"},model:{value:i.ruleForm.biaoti,callback:function(e){i.$set(i.ruleForm,"biaoti",e)},expression:"ruleForm.biaoti"}})],1),t("v-uni-view",{staticClass:" select",style:{padding:"12rpx 0",margin:"0 0 24rpx 0",borderColor:"#ccc",alignItems:"center",borderWidth:"0 0 2rpx 0",display:"flex",width:"100%",borderStyle:"dashed",height:"auto"}},[t("v-uni-view",{staticClass:"title",style:{width:"auto",padding:"0 32rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#333",textAlign:"right"}},[i._v("资料类别")]),t("v-uni-picker",{style:{width:"100%",flex:"1",height:"auto"},attrs:{value:i.ziliaoleibieIndex,range:i.ziliaoleibieOptions},on:{change:function(e){arguments[0]=e=i.$handleEvent(e),i.ziliaoleibieChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{width:"100%",lineHeight:"80rpx",fontSize:"28rpx",color:"rgb(255, 170, 51)"}},[i._v(i._s(i.ruleForm.ziliaoleibie?i.ruleForm.ziliaoleibie:"请选择资料类别"))])],1)],1),t("v-uni-view",{style:{padding:"12rpx 0",margin:"0 0 24rpx 0",borderColor:"#ccc",alignItems:"center",borderWidth:"0 0 2rpx 0",display:"flex",width:"100%",borderStyle:"dashed",height:"auto"},on:{click:function(e){arguments[0]=e=i.$handleEvent(e),i.ziliaotupianTap.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"title",style:{width:"auto",padding:"0 32rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#333",textAlign:"right"}},[i._v("资料图片")]),i.ruleForm.ziliaotupian?t("v-uni-image",{staticClass:"avator",style:{width:"80rpx",borderRadius:"100%",objectFit:"cover",display:"block",height:"80rpx"},attrs:{src:i.baseUrl+i.ruleForm.ziliaotupian.split(",")[0],mode:"aspectFill"}}):t("v-uni-image",{staticClass:"avator",style:{width:"80rpx",borderRadius:"100%",objectFit:"cover",display:"block",height:"80rpx"},attrs:{src:"../../static/gen/upload.png",mode:"aspectFill"}})],1),t("v-uni-view",{style:{padding:"12rpx 0",margin:"0 0 24rpx 0",borderColor:"#ccc",alignItems:"center",borderWidth:"0 0 2rpx 0",display:"flex",width:"100%",borderStyle:"dashed",height:"auto"}},[t("v-uni-view",{staticClass:"title",style:{width:"auto",padding:"0 32rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#333",textAlign:"right"}},[i._v("用户账号")]),t("v-uni-input",{style:{border:"0",padding:"0px 24rpx",margin:"0px",color:"rgb(0, 0, 0)",borderRadius:"8rpx",flex:"1",background:"rgba(255, 255, 255, 0)",fontSize:"28rpx",height:"80rpx"},attrs:{disabled:i.ro.yonghuzhanghao,placeholder:"用户账号"},model:{value:i.ruleForm.yonghuzhanghao,callback:function(e){i.$set(i.ruleForm,"yonghuzhanghao",e)},expression:"ruleForm.yonghuzhanghao"}})],1),t("v-uni-view",{style:{padding:"12rpx 0",margin:"0 0 24rpx 0",borderColor:"#ccc",alignItems:"center",borderWidth:"0 0 2rpx 0",display:"flex",width:"100%",borderStyle:"dashed",height:"auto"}},[t("v-uni-view",{staticClass:"title",style:{width:"auto",padding:"0 32rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#333",textAlign:"right"}},[i._v("用户姓名")]),t("v-uni-input",{style:{border:"0",padding:"0px 24rpx",margin:"0px",color:"rgb(0, 0, 0)",borderRadius:"8rpx",flex:"1",background:"rgba(255, 255, 255, 0)",fontSize:"28rpx",height:"80rpx"},attrs:{disabled:i.ro.yonghuxingming,placeholder:"用户姓名"},model:{value:i.ruleForm.yonghuxingming,callback:function(e){i.$set(i.ruleForm,"yonghuxingming",e)},expression:"ruleForm.yonghuxingming"}})],1),t("v-uni-view",{style:{padding:"12rpx 0",margin:"0 0 24rpx 0",borderColor:"#ccc",alignItems:"center",borderWidth:"0 0 2rpx 0",display:"flex",width:"100%",borderStyle:"dashed",height:"auto"}},[t("v-uni-view",{staticClass:"title",style:{width:"auto",padding:"0 32rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#333",textAlign:"right"}},[i._v("发布时间")]),t("v-uni-input",{style:{border:"0",padding:"0px 24rpx",margin:"0px",color:"rgb(0, 0, 0)",borderRadius:"8rpx",flex:"1",background:"rgba(255, 255, 255, 0)",fontSize:"28rpx",height:"80rpx"},attrs:{placeholder:"发布时间"},on:{click:function(e){arguments[0]=e=i.$handleEvent(e),i.toggleTab("fabushijian")}},model:{value:i.ruleForm.fabushijian,callback:function(e){i.$set(i.ruleForm,"fabushijian",e)},expression:"ruleForm.fabushijian"}})],1),t("v-uni-view",{style:{padding:"12rpx 0",margin:"0 0 24rpx 0",borderColor:"#ccc",borderWidth:"0 0 0px 0",width:"100%",borderStyle:"solid",height:"auto"}},[t("v-uni-view",{staticClass:"title",style:{width:"100%",padding:"0 32rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#333",fontWeight:"500"}},[i._v("资料内容")]),t("xia-editor",{ref:"editor",style:{minHeight:"300rpx",border:"2rpx solid #f7de91",padding:"16rpx",boxShadow:"0 4rpx 8rpx rgba(182,158,18,.4),inset 0px 0px 64rpx 0px #fcf6d6",borderRadius:"8rpx",width:"100%",height:"auto"},attrs:{placeholder:"资料内容"},on:{editorChange:function(e){arguments[0]=e=i.$handleEvent(e),i.ziliaoneirongChange.apply(void 0,arguments)}},model:{value:i.ruleForm.ziliaoneirong,callback:function(e){i.$set(i.ruleForm,"ziliaoneirong",e)},expression:"ruleForm.ziliaoneirong"}})],1),t("v-uni-view",{staticClass:"btn",style:{width:"100%",margin:"40rpx 0 0 0",justifyContent:"space-between",display:"flex",height:"auto"}},[t("v-uni-button",{staticClass:"bg-red",style:{border:"0",padding:"0px",margin:"0",color:"rgb(255, 255, 255)",borderRadius:"8rpx",background:"rgb(255, 170, 51)",width:"48%",lineHeight:"80rpx",fontSize:"28rpx",height:"80rpx"},on:{click:function(e){arguments[0]=e=i.$handleEvent(e),i.onSubmitTap.apply(void 0,arguments)}}},[i._v("提交")])],1)],1),t("w-picker",{ref:"fabushijian",attrs:{mode:"dateTime",step:"1",current:!1,hasSecond:!1,themeColor:"#333333"},on:{confirm:function(e){arguments[0]=e=i.$handleEvent(e),i.fabushijianConfirm.apply(void 0,arguments)}}})],1)],1)},a=[];t.d(e,"b",(function(){return n})),t.d(e,"c",(function(){return a})),t.d(e,"a",(function(){return r}))},8629:function(i,e,t){"use strict";var r=t("0866"),n=t.n(r);n.a},e46b:function(i,e,t){"use strict";var r=t("4ea4");Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,t("a481"),t("c5f6"),t("f559"),t("ac6a"),t("28a5"),t("96cf");var n=r(t("3b8d")),a=r(t("e2b1")),o=r(t("064f")),s={data:function(){return{cross:"",ruleForm:{biaoti:"",ziliaoleibie:"",ziliaotupian:"",ziliaoneirong:"",yonghuzhanghao:"",yonghuxingming:"",fabushijian:""},ziliaoleibieOptions:[],ziliaoleibieIndex:0,user:{},ro:{biaoti:!1,ziliaoleibie:!1,ziliaotupian:!1,ziliaoneirong:!1,yonghuzhanghao:!1,yonghuxingming:!1,fabushijian:!1}}},components:{wPicker:a.default,xiaEditor:o.default},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var i=(0,n.default)(regeneratorRuntime.mark((function i(e){var t,r,n,a;return regeneratorRuntime.wrap((function(i){while(1)switch(i.prev=i.next){case 0:return this.ruleForm.fabushijian=this.$utils.getCurDateTime(),t=uni.getStorageSync("nowTable"),i.next=4,this.$api.session(t);case 4:return r=i.sent,this.user=r.data,this.ruleForm.yonghuzhanghao=this.user.yonghuzhanghao,this.ro.yonghuzhanghao=!0,this.ruleForm.yonghuxingming=this.user.yonghuxingming,this.ro.yonghuxingming=!0,i.next=12,this.$api.option("ziliaoleibie","ziliaoleibie",{});case 12:if(r=i.sent,this.ziliaoleibieOptions=r.data,this.ziliaoleibieOptions.unshift("请选择资料类别"),this.ruleForm.userid=uni.getStorageSync("userid"),e.refid&&(this.ruleForm.refid=e.refid,this.ruleForm.nickname=uni.getStorageSync("nickname")),!e.id){i.next=23;break}return this.ruleForm.id=e.id,i.next=21,this.$api.info("xuexiziliao",this.ruleForm.id);case 21:r=i.sent,this.ruleForm=r.data;case 23:if(this.cross=e.cross,!e.cross){i.next=59;break}n=uni.getStorageSync("crossObj"),i.t0=regeneratorRuntime.keys(n);case 27:if((i.t1=i.t0()).done){i.next=59;break}if(a=i.t1.value,"biaoti"!=a){i.next=33;break}return this.ruleForm.biaoti=n[a],this.ro.biaoti=!0,i.abrupt("continue",27);case 33:if("ziliaoleibie"!=a){i.next=37;break}return this.ruleForm.ziliaoleibie=n[a],this.ro.ziliaoleibie=!0,i.abrupt("continue",27);case 37:if("ziliaotupian"!=a){i.next=41;break}return this.ruleForm.ziliaotupian=n[a].split(",")[0],this.ro.ziliaotupian=!0,i.abrupt("continue",27);case 41:if("ziliaoneirong"!=a){i.next=45;break}return this.ruleForm.ziliaoneirong=n[a],this.ro.ziliaoneirong=!0,i.abrupt("continue",27);case 45:if("yonghuzhanghao"!=a){i.next=49;break}return this.ruleForm.yonghuzhanghao=n[a],this.ro.yonghuzhanghao=!0,i.abrupt("continue",27);case 49:if("yonghuxingming"!=a){i.next=53;break}return this.ruleForm.yonghuxingming=n[a],this.ro.yonghuxingming=!0,i.abrupt("continue",27);case 53:if("fabushijian"!=a){i.next=57;break}return this.ruleForm.fabushijian=n[a],this.ro.fabushijian=!0,i.abrupt("continue",27);case 57:i.next=27;break;case 59:this.styleChange();case 60:case"end":return i.stop()}}),i,this)})));function e(e){return i.apply(this,arguments)}return e}(),methods:{ziliaoneirongChange:function(i){this.ruleForm.ziliaoneirong=i},styleChange:function(){this.$nextTick((function(){}))},fabushijianConfirm:function(i){console.log(i),this.ruleForm.fabushijian=i.result,this.$forceUpdate()},ziliaoleibieChange:function(i){this.ziliaoleibieIndex=i.target.value,this.ruleForm.ziliaoleibie=this.ziliaoleibieOptions[this.ziliaoleibieIndex]},ziliaotupianTap:function(){var i=this;this.$api.upload((function(e){i.ruleForm.ziliaotupian="upload/"+e.file,i.$forceUpdate(),i.$nextTick((function(){i.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var i=(0,n.default)(regeneratorRuntime.mark((function i(){var e,t,r,n,a,o,s,u,l,c;return regeneratorRuntime.wrap((function(i){while(1)switch(i.prev=i.next){case 0:if(this.ruleForm.biaoti){i.next=3;break}return this.$utils.msg("标题不能为空"),i.abrupt("return");case 3:if(!this.cross){i.next=19;break}if(a=uni.getStorageSync("statusColumnName"),o=uni.getStorageSync("statusColumnValue"),""==a){i.next=19;break}if(e||(e=uni.getStorageSync("crossObj")),a.startsWith("[")){i.next=15;break}for(s in e)s==a&&(e[s]=o);return u=uni.getStorageSync("crossTable"),i.next=13,this.$api.update("".concat(u),e);case 13:i.next=19;break;case 15:t=Number(uni.getStorageSync("userid")),r=e["id"],n=uni.getStorageSync("statusColumnName"),n=n.replace(/\[/,"").replace(/\]/,"");case 19:if(!r||!t){i.next=41;break}return this.ruleForm.crossuserid=t,this.ruleForm.crossrefid=r,l={page:1,limit:10,crossuserid:t,crossrefid:r},i.next=25,this.$api.list("xuexiziliao",l);case 25:if(c=i.sent,!(c.data.total>=n)){i.next=31;break}return this.$utils.msg(uni.getStorageSync("tips")),i.abrupt("return",!1);case 31:if(!this.ruleForm.id){i.next=36;break}return i.next=34,this.$api.update("xuexiziliao",this.ruleForm);case 34:i.next=38;break;case 36:return i.next=38,this.$api.add("xuexiziliao",this.ruleForm);case 38:this.$utils.msgBack("提交成功");case 39:i.next=49;break;case 41:if(!this.ruleForm.id){i.next=46;break}return i.next=44,this.$api.update("xuexiziliao",this.ruleForm);case 44:i.next=48;break;case 46:return i.next=48,this.$api.add("xuexiziliao",this.ruleForm);case 48:this.$utils.msgBack("提交成功");case 49:case"end":return i.stop()}}),i,this)})));function e(){return i.apply(this,arguments)}return e}(),optionsChange:function(i){this.index=i.target.value},bindDateChange:function(i){this.date=i.target.value},getDate:function(i){var e=new Date,t=e.getFullYear(),r=e.getMonth()+1,n=e.getDate();return"start"===i?t-=60:"end"===i&&(t+=2),r=r>9?r:"0"+r,n=n>9?n:"0"+n,"".concat(t,"-").concat(r,"-").concat(n)},toggleTab:function(i){this.$refs[i].show()}}};e.default=s}}]);