package models

import (
	"github.com/astaxie/beego/orm"
	"time"
)

// TableName 设置BackendUser表名
func (a *ExNews) TableName() string {
	return ExNewsTBName()
}

// BackendUserQueryParam 用于查询的类
type ExNewsQueryParam struct {
	BaseQueryParam
	UserNameLike string //模糊查询
	RealNameLike string //模糊查询
	Mobile       string //精确查询
	SearchStatus string //为空不查询，有值精确查询
}

// BackendUser 实体类
type ExNews struct {
	Id               int
	Title            string
	PromulgationDate time.Time
	CheckDate        time.Time
	IsEnglish        int
	IsDisplay        int
	Operator         string
	UpdateTime       time.Time
	FetchTime        time.Time
	CreateTime       time.Time
	OriginId         string
	SubType          int
	Type             int
	Alltype          string
	Csummary         string
	IpnewsCategory   int
	Author           string
	FirmId           int
	Isenglish        string
	ProviderId       int
	ChEngCounterId   string
	Orderby          string
	TaxonomyIdList   string
	IndustryIdList   string
	tags             string
	IsExclusive      int
	SectionNameId    int
}

// ExNewsPageList 获取分页数据
func ExNewsPageList(params *ExNewsQueryParam) ([]*ExNews, int64) {
	query := orm.NewOrm().QueryTable(ExNewsTBName())
	data := make([]*ExNews, 0)
	//默认排序
	sortorder := "Id"
	switch params.Sort {
	case "Id":
		sortorder = "Id"
	}
	if params.Order == "desc" {
		sortorder = "-" + sortorder
	}
	//query = query.Filter("username__istartswith", params.UserNameLike)
	//query = query.Filter("realname__istartswith", params.RealNameLike)
	//if len(params.Mobile) > 0 {
	//	query = query.Filter("mobile", params.Mobile)
	//}
	//if len(params.SearchStatus) > 0 {
	//	query = query.Filter("status", params.SearchStatus)
	//}
	total, _ := query.Count()
	query.OrderBy(sortorder).Limit(params.Limit, params.Offset).All(&data)
	return data, total
}

// ExNewsOne 根据id获取单条
func ExNewsOne(id int) (*ExNews, error) {
	o := orm.NewOrm()
	m := ExNews{Id: id}
	err := o.Read(&m)
	if err != nil {
		return nil, err
	}
	return &m, nil
}
