const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm3935y/",
            name: "ssm3935y",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm3935y/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "医院疫情防控管理系统"
        } 
    }
}
export default base
