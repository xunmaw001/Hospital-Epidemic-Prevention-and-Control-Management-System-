
var projectName = '医院疫情防控管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '疫情公告',
	url: './pages/yiqinggonggao/list.html'
}, 
{
	name: '预约管理',
	url: './pages/yuyueguanli/list.html'
}, 

]

var adminurl =  "http://localhost:8080/ssm3935y/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医生","menuJump":"列表","tableName":"yisheng"}],"menu":"医生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"疫情公告","menuJump":"列表","tableName":"yiqinggonggao"}],"menu":"疫情公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"预约管理","menuJump":"列表","tableName":"yuyueguanli"}],"menu":"预约管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"预约订单","menuJump":"列表","tableName":"yuyuedingdan"}],"menu":"预约订单管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"防疫报备","menuJump":"列表","tableName":"fangyibaobei"}],"menu":"防疫报备管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"异样报告","menuJump":"列表","tableName":"yiyangbaogao"}],"menu":"异样报告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"疫情公告列表","menuJump":"列表","tableName":"yiqinggonggao"}],"menu":"疫情公告模块"},{"child":[{"buttons":["查看","预约"],"menu":"预约管理列表","menuJump":"列表","tableName":"yuyueguanli"}],"menu":"预约管理模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"疫情公告","menuJump":"列表","tableName":"yiqinggonggao"}],"menu":"疫情公告管理"},{"child":[{"buttons":["查看","支付","预约"],"menu":"预约管理","menuJump":"列表","tableName":"yuyueguanli"}],"menu":"预约管理"},{"child":[{"buttons":["查看"],"menu":"预约订单","menuJump":"列表","tableName":"yuyuedingdan"}],"menu":"预约订单管理"},{"child":[{"buttons":["查看"],"menu":"医生回复","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"疫情公告列表","menuJump":"列表","tableName":"yiqinggonggao"}],"menu":"疫情公告模块"},{"child":[{"buttons":["查看","预约"],"menu":"预约管理列表","menuJump":"列表","tableName":"yuyueguanli"}],"menu":"预约管理模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["查看"],"menu":"疫情公告","menuJump":"列表","tableName":"yiqinggonggao"}],"menu":"疫情公告管理"},{"child":[{"buttons":["查看"],"menu":"预约管理","menuJump":"列表","tableName":"yuyueguanli"}],"menu":"预约管理"},{"child":[{"buttons":["查看"],"menu":"预约订单","menuJump":"列表","tableName":"yuyuedingdan"}],"menu":"预约订单管理"},{"child":[{"buttons":["查看","修改"],"menu":"医生回复","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"疫情公告列表","menuJump":"列表","tableName":"yiqinggonggao"}],"menu":"疫情公告模块"},{"child":[{"buttons":["查看","预约"],"menu":"预约管理列表","menuJump":"列表","tableName":"yuyueguanli"}],"menu":"预约管理模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"医生","tableName":"yisheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
