<template>
  <div>
    <div class="container">
      <div class="login-form" style="backgroundColor:rgba(106, 0, 138, 0.47);borderRadius:10px">
        <h1 class="h1" style="color:rgba(251, 247, 247, 1);fontSize:28px;">医院疫情防控管理系统注册</h1>
		<el-form ref="rgsForm" class="rgs-form" :model="rgsForm" label-width="120px">
															<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">用户名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.yonghuming" class="input" type="text" placeholder="用户名">
			   </div>
			 </div> -->
			<el-form-item label="用户名" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.yonghuming" autocomplete="off" placeholder="用户名" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xingming" class="input" type="text" placeholder="姓名">
			   </div>
			 </div> -->
			<el-form-item label="姓名" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.xingming" autocomplete="off" placeholder="姓名" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">手机</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shouji" class="input" type="text" placeholder="手机">
			   </div>
			 </div> -->
			<el-form-item label="手机" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.shouji" autocomplete="off" placeholder="手机" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.youxiang" class="input" type="text" placeholder="邮箱">
			   </div>
			 </div> -->
			<el-form-item label="邮箱" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.youxiang" autocomplete="off" placeholder="邮箱" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">身份证</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shenfenzheng" class="input" type="text" placeholder="身份证">
			   </div>
			 </div> -->
			<el-form-item label="身份证" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.shenfenzheng" autocomplete="off" placeholder="身份证" type="text" />
			</el-form-item>
																																	<!-- <div v-if="tableName=='yisheng'" class="input-group">
			   <div class="label">工号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.gonghao" class="input" type="text" placeholder="工号">
			   </div>
			 </div> -->
			<el-form-item label="工号" class="input" v-if="tableName=='yisheng'">
			  <el-input v-model="ruleForm.gonghao" autocomplete="off" placeholder="工号" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yisheng'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='yisheng'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yisheng'" class="input-group">
			   <div class="label">医生名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.yishengming" class="input" type="text" placeholder="医生名">
			   </div>
			 </div> -->
			<el-form-item label="医生名" class="input" v-if="tableName=='yisheng'">
			  <el-input v-model="ruleForm.yishengming" autocomplete="off" placeholder="医生名" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='yisheng'" class="input-group">
			   <div class="label">手机</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shouji" class="input" type="text" placeholder="手机">
			   </div>
			 </div> -->
			<el-form-item label="手机" class="input" v-if="tableName=='yisheng'">
			  <el-input v-model="ruleForm.shouji" autocomplete="off" placeholder="手机" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yisheng'" class="input-group">
			   <div class="label">邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.youxiang" class="input" type="text" placeholder="邮箱">
			   </div>
			 </div> -->
			<el-form-item label="邮箱" class="input" v-if="tableName=='yisheng'">
			  <el-input v-model="ruleForm.youxiang" autocomplete="off" placeholder="邮箱" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yisheng'" class="input-group">
			   <div class="label">身份证</div>
			   <div class="input-container">
			     <input v-model="ruleForm.shenfenzheng" class="input" type="text" placeholder="身份证">
			   </div>
			 </div> -->
			<el-form-item label="身份证" class="input" v-if="tableName=='yisheng'">
			  <el-input v-model="ruleForm.shenfenzheng" autocomplete="off" placeholder="身份证" type="text" />
			</el-form-item>
																																																																																							<!-- <div v-if="tableName=='defaultuser'" class="input-group">
			   <div class="label">用户名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.username" class="input" type="text" placeholder="用户名">
			   </div>
			 </div> -->
			<el-form-item label="用户名" class="input" v-if="tableName=='defaultuser'">
			  <el-input v-model="ruleForm.username" autocomplete="off" placeholder="用户名" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='defaultuser'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='defaultuser'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='defaultuser'" class="input-group">
			   <div class="label">姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.name" class="input" type="text" placeholder="姓名">
			   </div>
			 </div> -->
			<el-form-item label="姓名" class="input" v-if="tableName=='defaultuser'">
			  <el-input v-model="ruleForm.name" autocomplete="off" placeholder="姓名" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='defaultuser'" class="input-group">
			   <div class="label">年龄</div>
			   <div class="input-container">
			     <input v-model="ruleForm.age" class="input" type="text" placeholder="年龄">
			   </div>
			 </div> -->
			<el-form-item label="年龄" class="input" v-if="tableName=='defaultuser'">
			  <el-input v-model="ruleForm.age" autocomplete="off" placeholder="年龄" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='defaultuser'" class="input-group">
			   <div class="label">电话</div>
			   <div class="input-container">
			     <input v-model="ruleForm.phone" class="input" type="text" placeholder="电话">
			   </div>
			 </div> -->
			<el-form-item label="电话" class="input" v-if="tableName=='defaultuser'">
			  <el-input v-model="ruleForm.phone" autocomplete="off" placeholder="电话" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='defaultuser'" class="input-group">
			   <div class="label">邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.email" class="input" type="text" placeholder="邮箱">
			   </div>
			 </div> -->
			<el-form-item label="邮箱" class="input" v-if="tableName=='defaultuser'">
			  <el-input v-model="ruleForm.email" autocomplete="off" placeholder="邮箱" type="text" />
			</el-form-item>
															<el-button class="btn" type="primary" @click="login()">注册</el-button>
		</el-form>
      </div>
      <!-- <div class="nk-navigation">
        <a href="#">
          <div @click="login()">注册</div>
        </a>
      </div> -->
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      ruleForm: {
              },
      tableName:"",
      rules: {}
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 注册
    login() {
                              if((!this.ruleForm.yonghuming) && `yonghu` == this.tableName){
        this.$message.error(`用户名不能为空`);
        return
      }
                                                                  if((!this.ruleForm.mima) && `yonghu` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                                                                                                if(`yonghu` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入手机格式`);
        return
      }
                                                                        if(`yonghu` == this.tableName && this.ruleForm.youxiang&&(!this.$validate.isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮件格式`);
        return
      }
                                                                        if(`yonghu` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
                                                                                                            if((!this.ruleForm.gonghao) && `yisheng` == this.tableName){
        this.$message.error(`工号不能为空`);
        return
      }
                                                                  if((!this.ruleForm.mima) && `yisheng` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                  if((!this.ruleForm.yishengming) && `yisheng` == this.tableName){
        this.$message.error(`医生名不能为空`);
        return
      }
                                                                                                                                                if(`yisheng` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入手机格式`);
        return
      }
                                                                        if(`yisheng` == this.tableName && this.ruleForm.youxiang&&(!this.$validate.isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮件格式`);
        return
      }
                                                                        if(`yisheng` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
                                                                                                                                                                                                                                                                                                if((!this.ruleForm.username) && `defaultuser` == this.tableName){
        this.$message.error(`用户名不能为空`);
        return
      }
                                                                  if((!this.ruleForm.mima) && `defaultuser` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                                                                                                                                    if(`defaultuser` == this.tableName && this.ruleForm.age&&(!this.$validate.isIntNumer(this.ruleForm.age))){
        this.$message.error(`年龄应输入整数`);
        return
      }
                                                                              if(`defaultuser` == this.tableName && this.ruleForm.phone&&(!this.$validate.isPhone(this.ruleForm.phone))){
        this.$message.error(`电话应输入电话格式`);
        return
      }
                                                                                                                                    if(`defaultuser` == this.tableName && this.ruleForm.email&&(!this.$validate.isEmail(this.ruleForm.email))){
        this.$message.error(`邮箱应输入邮件格式`);
        return
      }
                                          this.$http({
        url: `${this.tableName}/register`,
        method: "post",
        data:this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "注册成功",
            type: "success",
            duration: 1500,
            onClose: () => {
              this.$router.replace({ path: "/login" });
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.h1 {
		margin-top: 10px;
	}

	body {
		padding: 0;
		margin: 0;
	}

	// .container {
 //    min-height: 100vh;
 //    text-align: center;
 //    // background-color: #00c292;
 //    padding-top: 20vh;
 //    background-image: url(../assets/img/bg.jpg);
 //    background-size: 100% 100%;
 //    opacity: 0.9;
 //  }

	// .login-form:before {
	// 	vertical-align: middle;
	// 	display: inline-block;
	// }

	// .login-form {
	// 	max-width: 500px;
	// 	padding: 20px 0;
	// 	width: 80%;
	// 	position: relative;
	// 	margin: 0 auto;

	// 	.label {
	// 		min-width: 60px;
	// 	}

	// 	.input-group {
	// 		max-width: 500px;
	// 		padding: 20px 0;
	// 		width: 80%;
	// 		position: relative;
	// 		margin: 0 auto;
	// 		display: flex;
	// 		align-items: center;

	// 		.input-container {
	// 			display: inline-block;
	// 			width: 100%;
	// 			text-align: left;
	// 			margin-left: 10px;
	// 		}

	// 		.icon {
	// 			width: 30px;
	// 			height: 30px;
	// 		}

	// 		.input {
	// 			position: relative;
	// 			z-index: 2;
	// 			float: left;
	// 			width: 100%;
	// 			margin-bottom: 0;
	// 			box-shadow: none;
	// 			border-top: 0px solid #ccc;
	// 			border-left: 0px solid #ccc;
	// 			border-right: 0px solid #ccc;
	// 			border-bottom: 1px solid #ccc;
	// 			padding: 0px;
	// 			resize: none;
	// 			border-radius: 0px;
	// 			display: block;
	// 			width: 100%;
	// 			height: 34px;
	// 			padding: 6px 12px;
	// 			font-size: 14px;
	// 			line-height: 1.42857143;
	// 			color: #555;
	// 			background-color: #fff;
	// 		}

	// 	}
	// }

	.nk-navigation {
		margin-top: 15px;

		a {
			display: inline-block;
			color: #fff;
			background: rgba(255, 255, 255, .2);
			width: 100px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;
		}

		.icon {
			margin-left: 10px;
			width: 30px;
			height: 30px;
		}
	}

	.register-container {
		margin-top: 10px;

		a {
			display: inline-block;
			color: #fff;
			max-width: 500px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;

			div {
				margin-left: 10px;
			}
		}
	}
	
	.container {
		background-image: url("http://codegen.caihongy.cn/20201114/8ca3cf2430494a60b13d02f525b3557b.jpg");
		height: 100vh;
		background-position: center center;
		background-size: cover;
		background-repeat: no-repeat;
	
		.login-form {
			right: 50%;
			top: 50%;
			height: auto;
			transform: translate3d(50%, -50%, 0);
			border-radius: 10px;
			background-color: rgba(255,255,255,.5);
			width: 420px;
			padding: 30px 30px 40px 30px;
			font-size: 14px;
			font-weight: 500;
			
			.h1 {
				margin: 0;
				text-align: center;
				line-height: 54px;
			    font-size: 24px;
			    color: #000;
			}
				
			.rgs-form {
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				
				.input {
					width: 100%;
					
					& /deep/ .el-form-item__label {
						line-height: 30px;
						color: rgba(252, 250, 250, 1);
						font-size: #606266;
					}
					
					& /deep/ .el-input__inner {
						height: 30px;
						color: rgba(199, 21, 133, 1);
						font-size: 10px;
						border-width: 0px;
						border-style: solid;
						border-color: #606266;
						border-radius: 0px;
						background-color: rgba(249, 246, 246, 1);
					}
				}
				
				.btn {
					width: 88px;
					height: 44px;
					color: #fff;
					font-size: 14px;
					border-width: 0px;
					border-style: solid;
					border-color: rgba(106, 0, 138, 1);
					border-radius: 100px;
					background-color: rgba(199, 21, 133, 1);
				}
			}
		}
	}
</style>
