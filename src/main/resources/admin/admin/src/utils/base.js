const base = {
    get() {
        return {
            url : "http://localhost:8080/yuangongguanli/",
            name: "yuangongguanli",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/yuangongguanli/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "员工管理系统"
        } 
    }
}
export default base
