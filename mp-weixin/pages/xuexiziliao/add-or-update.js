(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/xuexiziliao/add-or-update"],{"0d67":function(e,i,t){"use strict";t.r(i);var n=t("aaab"),a=t("595b");for(var r in a)"default"!==r&&function(e){t.d(i,e,(function(){return a[e]}))}(r);t("868e");var o,u=t("f0c5"),s=Object(u["a"])(a["default"],n["b"],n["c"],!1,null,"6e3da778",null,!1,n["a"],o);i["default"]=s.exports},"26da":function(e,i,t){"use strict";(function(e){Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0;var n=a(t("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function r(e,i,t,n,a,r,o){try{var u=e[r](o),s=u.value}catch(l){return void t(l)}u.done?i(s):Promise.resolve(s).then(n,a)}function o(e){return function(){var i=this,t=arguments;return new Promise((function(n,a){var o=e.apply(i,t);function u(e){r(o,n,a,u,s,"next",e)}function s(e){r(o,n,a,u,s,"throw",e)}u(void 0)}))}}var u=function(){return Promise.all([t.e("common/vendor"),t.e("components/w-picker/w-picker")]).then(t.bind(null,"e2b1"))},s=function(){return t.e("components/xia-editor/xia-editor").then(t.bind(null,"064f"))},l={data:function(){return{cross:"",ruleForm:{biaoti:"",ziliaoleibie:"",ziliaotupian:"",ziliaoneirong:"",yonghuzhanghao:"",yonghuxingming:"",fabushijian:""},ziliaoleibieOptions:[],ziliaoleibieIndex:0,user:{},ro:{biaoti:!1,ziliaoleibie:!1,ziliaotupian:!1,ziliaoneirong:!1,yonghuzhanghao:!1,yonghuxingming:!1,fabushijian:!1}}},components:{wPicker:u,xiaEditor:s},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var i=o(n.default.mark((function i(t){var a,r,o,u;return n.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:return this.ruleForm.fabushijian=this.$utils.getCurDateTime(),a=e.getStorageSync("nowTable"),i.next=4,this.$api.session(a);case 4:return r=i.sent,this.user=r.data,this.ruleForm.yonghuzhanghao=this.user.yonghuzhanghao,this.ro.yonghuzhanghao=!0,this.ruleForm.yonghuxingming=this.user.yonghuxingming,this.ro.yonghuxingming=!0,i.next=12,this.$api.option("ziliaoleibie","ziliaoleibie",{});case 12:if(r=i.sent,this.ziliaoleibieOptions=r.data,this.ziliaoleibieOptions.unshift("请选择资料类别"),this.ruleForm.userid=e.getStorageSync("userid"),t.refid&&(this.ruleForm.refid=t.refid,this.ruleForm.nickname=e.getStorageSync("nickname")),!t.id){i.next=23;break}return this.ruleForm.id=t.id,i.next=21,this.$api.info("xuexiziliao",this.ruleForm.id);case 21:r=i.sent,this.ruleForm=r.data;case 23:if(this.cross=t.cross,!t.cross){i.next=59;break}o=e.getStorageSync("crossObj"),i.t0=n.default.keys(o);case 27:if((i.t1=i.t0()).done){i.next=59;break}if(u=i.t1.value,"biaoti"!=u){i.next=33;break}return this.ruleForm.biaoti=o[u],this.ro.biaoti=!0,i.abrupt("continue",27);case 33:if("ziliaoleibie"!=u){i.next=37;break}return this.ruleForm.ziliaoleibie=o[u],this.ro.ziliaoleibie=!0,i.abrupt("continue",27);case 37:if("ziliaotupian"!=u){i.next=41;break}return this.ruleForm.ziliaotupian=o[u].split(",")[0],this.ro.ziliaotupian=!0,i.abrupt("continue",27);case 41:if("ziliaoneirong"!=u){i.next=45;break}return this.ruleForm.ziliaoneirong=o[u],this.ro.ziliaoneirong=!0,i.abrupt("continue",27);case 45:if("yonghuzhanghao"!=u){i.next=49;break}return this.ruleForm.yonghuzhanghao=o[u],this.ro.yonghuzhanghao=!0,i.abrupt("continue",27);case 49:if("yonghuxingming"!=u){i.next=53;break}return this.ruleForm.yonghuxingming=o[u],this.ro.yonghuxingming=!0,i.abrupt("continue",27);case 53:if("fabushijian"!=u){i.next=57;break}return this.ruleForm.fabushijian=o[u],this.ro.fabushijian=!0,i.abrupt("continue",27);case 57:i.next=27;break;case 59:this.styleChange();case 60:case"end":return i.stop()}}),i,this)})));function t(e){return i.apply(this,arguments)}return t}(),methods:{ziliaoneirongChange:function(e){this.ruleForm.ziliaoneirong=e},styleChange:function(){this.$nextTick((function(){}))},fabushijianConfirm:function(e){console.log(e),this.ruleForm.fabushijian=e.result,this.$forceUpdate()},ziliaoleibieChange:function(e){this.ziliaoleibieIndex=e.target.value,this.ruleForm.ziliaoleibie=this.ziliaoleibieOptions[this.ziliaoleibieIndex]},ziliaotupianTap:function(){var e=this;this.$api.upload((function(i){e.ruleForm.ziliaotupian="upload/"+i.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var i=o(n.default.mark((function i(){var t,a,r,o,u,s,l,c,h,f;return n.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:if(this.ruleForm.biaoti){i.next=3;break}return this.$utils.msg("标题不能为空"),i.abrupt("return");case 3:if(!this.cross){i.next=19;break}if(u=e.getStorageSync("statusColumnName"),s=e.getStorageSync("statusColumnValue"),""==u){i.next=19;break}if(t||(t=e.getStorageSync("crossObj")),u.startsWith("[")){i.next=15;break}for(l in t)l==u&&(t[l]=s);return c=e.getStorageSync("crossTable"),i.next=13,this.$api.update("".concat(c),t);case 13:i.next=19;break;case 15:a=Number(e.getStorageSync("userid")),r=t["id"],o=e.getStorageSync("statusColumnName"),o=o.replace(/\[/,"").replace(/\]/,"");case 19:if(!r||!a){i.next=41;break}return this.ruleForm.crossuserid=a,this.ruleForm.crossrefid=r,h={page:1,limit:10,crossuserid:a,crossrefid:r},i.next=25,this.$api.list("xuexiziliao",h);case 25:if(f=i.sent,!(f.data.total>=o)){i.next=31;break}return this.$utils.msg(e.getStorageSync("tips")),i.abrupt("return",!1);case 31:if(!this.ruleForm.id){i.next=36;break}return i.next=34,this.$api.update("xuexiziliao",this.ruleForm);case 34:i.next=38;break;case 36:return i.next=38,this.$api.add("xuexiziliao",this.ruleForm);case 38:this.$utils.msgBack("提交成功");case 39:i.next=49;break;case 41:if(!this.ruleForm.id){i.next=46;break}return i.next=44,this.$api.update("xuexiziliao",this.ruleForm);case 44:i.next=48;break;case 46:return i.next=48,this.$api.add("xuexiziliao",this.ruleForm);case 48:this.$utils.msgBack("提交成功");case 49:case"end":return i.stop()}}),i,this)})));function t(){return i.apply(this,arguments)}return t}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var i=new Date,t=i.getFullYear(),n=i.getMonth()+1,a=i.getDate();return"start"===e?t-=60:"end"===e&&(t+=2),n=n>9?n:"0"+n,a=a>9?a:"0"+a,"".concat(t,"-").concat(n,"-").concat(a)},toggleTab:function(e){this.$refs[e].show()}}};i.default=l}).call(this,t("543d")["default"])},"377b":function(e,i,t){"use strict";(function(e){t("6cdc"),t("921b");n(t("66fd"));var i=n(t("0d67"));function n(e){return e&&e.__esModule?e:{default:e}}e(i.default)}).call(this,t("543d")["createPage"])},"595b":function(e,i,t){"use strict";t.r(i);var n=t("26da"),a=t.n(n);for(var r in n)"default"!==r&&function(e){t.d(i,e,(function(){return n[e]}))}(r);i["default"]=a.a},"868e":function(e,i,t){"use strict";var n=t("a000"),a=t.n(n);a.a},a000:function(e,i,t){},aaab:function(e,i,t){"use strict";var n={"xia-editor":()=>t.e("components/xia-editor/xia-editor").then(t.bind(null,"064f")),"w-picker":()=>Promise.all([t.e("common/vendor"),t.e("components/w-picker/w-picker")]).then(t.bind(null,"e2b1"))},a=function(){var e=this,i=e.$createElement,t=(e._self._c,e.ruleForm.ziliaotupian.split(","));e.$mp.data=Object.assign({},{$root:{g0:t}})},r=[];t.d(i,"b",(function(){return a})),t.d(i,"c",(function(){return r})),t.d(i,"a",(function(){return n}))}},[["377b","common/runtime","common/vendor"]]]);