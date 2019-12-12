package controllers

type ToolsController struct {
	BaseController
}

func (c *ToolsController) Prepare() {
	//先执行
	c.BaseController.Prepare()
	//如果一个Controller的多数Action都需要权限控制，则将验证放到Prepare
	c.checkAuthor("DataGrid")
	//如果一个Controller的所有Action都需要登录验证，则将验证放到Prepare
	//权限控制里会进行登录验证，因此这里不用再作登录验证
	//c.checkLogin()

}
func (c *ToolsController) Index() {
	//是否显示更多查询条件的按钮弃用，前端自动判断
	//c.Data["showMoreQuery"] = true
	//将页面左边菜单的某项激活
	c.Data["activeSidebarUrl"] = c.URLFor(c.controllerName + "." + c.actionName)
	//页面模板设置
	c.setTpl()
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["headcssjs"] = "backenduser/index_headcssjs.html"
	c.LayoutSections["footerjs"] = "backenduser/index_footerjs.html"
	//页面里按钮权限控制
	c.Data["canEdit"] = c.checkActionAuthor("BackendUserController", "Edit")
	c.Data["canDelete"] = c.checkActionAuthor("BackendUserController", "Delete")
	c.Data["tbf"] = "fuck me"
}
