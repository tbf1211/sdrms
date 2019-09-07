package main

import (
	_ "github.com/tbf1211/sdrms/routers"
	_ "github.com/tbf1211/sdrms/sysinit"

	"github.com/astaxie/beego"
)

func main() {
	beego.Run()
}
