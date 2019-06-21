<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/lib/html5shiv.js"></script>
    <script type="text/javascript" src="/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/style.css"/>
    <link rel="stylesheet" href="/lib/layui/css/layui.css" media="all">
    <!--[if IE 6]>
    <script type="text/javascript" src="/lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>资讯列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 资讯管理 <span
        class="c-gray en">&gt;</span> 资讯列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="text-c">
        <!--<button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button>-->
        <span class="select-box inline">
		<%--<select name="articlecolumn" class="select" id="articlecolumn">--%>
			<%--<option value="0">全部分类</option>--%>
			<%--<option value="1">新闻资讯</option>--%>
            <%--<option value="11">行业动态</option>--%>
            <%--<option value="12">行业资讯</option>--%>
            <%--<option value="13">行业新闻</option>--%>
		<%--</select>--%>
		</span> 日期范围：
        <input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin"
               class="input-text Wdate" style="width:120px;"/>
        -
        <input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax"
               class="input-text Wdate" style="width:120px;"/>
        <input type="text" name="zxname" id="zxname" placeholder=" 资讯标题" style="width:250px" class="input-text"/>
        <button name="search" id="search" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜资讯</button>
    </div>
    <%--<div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l">--%>
    <%--&lt;%&ndash;<a href="javascript:;" onclick="datadel()"&ndash;%&gt;--%>
    <%--&lt;%&ndash;class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> &ndash;%&gt;--%>
    <%--<a--%>
    <%--class="btn btn-primary radius" data-title="添加资讯" data-href="/page/article-add" onclick="Hui_admin_tab(this)"--%>
    <%--href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加资讯</a></span> <span--%>
    <%--class="r">共有数据：<strong>54</strong> 条</span></div>--%>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive" lay-filter="test" style="margin-top: 10px;">
        </table>
    </div>
</div>
<script id="demo" type="text/html">
    <form class="layui-form" action="">
        <input type="hidden" name="id" value="{{ d.id || '' }}" autocomplete="off">

        <div class="layui-form-item">
            <label class="layui-form-label">title</label>


            <div class="layui-input-inline">
                <input type="text" name="title" value="{{ d.title || '' }}" lay-verify="required"
                       placeholder="请输入文章名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">keyword</label>
            <div class="layui-input-inline">
                <input type="text" name="keyword" value="{{ d.keyword || '' }}" lay-verify="keyword" placeholder="请输入关键字"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">author</label>
            <div class="layui-input-inline">
                <input type="text" name="author" value="{{ d.author || '' }}" lay-verify="author" placeholder="请输入作者"
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">选择状态</label>
            <div class="layui-input-block">
                <input type="radio" name="poStatus" value="0" title="下架"
                       {{# if(d.poStatus===0){ }}
                       checked
                       {{# } }}
                />

                <input type="radio" name="poStatus" value="1" title="上架"
                       {{# if(d.poStatus===1){ }}
                       checked
                       {{# } }}
                />
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">details</label>
            <div class="layui-input-inline">
                <textarea type="text" name="details"
                          class="layui-input">{{ d.details || '' }}</textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit lay-filter="update_form_submit">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>

            </div>
        </div>
    </form>

</script>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/lib/layui/layui.all.js"></script>
<script type="text/javascript" src="/lib/laypage/1.2/laypage.js"></script>
<script type="text/html" id="toolbarDemo">
    <a class="btn btn-primary radius" data-title="添加资讯" data-href="/page/article-add" onclick="Hui_admin_tab(this)"
       href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加资讯</a>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">批量删除</button>

    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/javascript">
    $(function () {
        layui.use(['table', 'laytpl', 'element', 'form'], function () {
            var table = layui.table;
            var laytpl = layui.laytpl;
            var element = layui.element;
            var form = layui.form;
            $("#search").click(function () {
                reload();
            })

            function reload() {
                table.reload('table', {
                    where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                        // articlecolumn: $("#articlecolumn").val(),
                        logmin: $("#logmin").val(),
                        logmax: $("#logmax").val(),
                        zxname: $("#zxname").val()
                    }
                });
            }


            //第一个实例
            table.render({
                id: 'table',
                elem: '.table-sort'
                , toolbar: '#toolbarDemo'
                , height: 'full-220'
                , url: '/consulting/list' //数据接口
                , page: true //开启分页
                , cols: [[ //表头
                    {type: 'checkbox', fixed: 'left'}
                    , {
                        field: 'id', title: 'ID', width: '15%', sort: true, fixed: 'left', templet: function (d) {
                            return d.id;//long 转Stirng
                        }
                    }
                    ,
                    {field: 'title', title: '标题', width: '10%'}
                    , {
                        field: 'type', title: '分类', width: '10%'
                        , templet: function (d) {
                            switch (d.type) {
                                case 0:
                                    return '全部栏目';
                                case 1:
                                    return '新闻资讯';
                                case 11:
                                    return '行业动态';
                                case 12:
                                    return '行业资讯';
                                case 13:
                                    return '行业新闻';
                            }
                        }
                    }
                    , {field: 'src', title: '来源', width: '10%'}
                    , {field: 'updateTime', title: '更新时间', width: '20%'}
                    , {
                        field: 'poStatus', title: '发布状态', width: '20%'
                        , templet: function (d) {
                            switch (d.poStatus) {
                                case 0:
                                    return '草稿';
                                case 1:
                                    return '已上架';
                                case 2:
                                    return '以下架';
                            }
                        }
                    }
                    , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: '15%'}


                ]]

            });
            //头工具栏事件
            table.on('toolbar(test)', function (obj) {
                var checkStatus = table.checkStatus(obj.config.id);
                switch (obj.event) {
                    case 'getCheckData':
                        var data = checkStatus.data;
                        if (data == null || data.length === 0) {
                            layer.msg("请先选择需要删除的数据");
                        } else {
                            var arr = [];
                            for (var i = 0; i < data.length; i++) {
                                arr.push(data[i].id);
                            }
                            layer.alert(arr.join(','));
                            layer.confirm('真的删除这些数据么', function (index) {
                                $.ajax({
                                    "url": "/consulting/delete",
                                    "data": {
                                        ids: arr.join(',')
                                    },
                                    type: "get",
                                    dataType: "json",
                                    success: function (data) {
                                        if (data.code === 200) {
                                            layer.msg("删除成功");
                                            reload();

                                            layer.close(index);
                                        } else {
                                            layer.msg(data.msg);
                                        }
                                    }
                                })

                            });
                        }

                        break;

                }
                ;
            });
            function addOrUpdate(data) {
                var getTpl = document.getElementById("demo").innerHTML;
                laytpl(getTpl).render(data, function (html) {
                    var index = layer.open({
                        type: 1,
                        content: html,
                        area: ['500px', '600px']
                    });
                    form.render();
                    form.on('submit(update_form_submit)', function (data) {
                        layer.msg(JSON.stringify(data.field));
                        $.ajax({
                            "url": "/consulting/updateOrAdd",
                            "data": JSON.stringify(data.field),
                            type: "post",
                            contentType: 'application/json',
                            dataType: "json",
                            success: function (res) {
                                if (res.code === 200) {
                                    layer.msg("操作成功");
                                    reload();
                                    layer.close(index);
                                } else {
                                    layer.msg(res.msg);
                                }
                            }
                        })
                        return false;
                    });
                });
            }
            //监听行工具事件
            table.on('tool(test)', function (obj) {
                var data = obj.data;

                console.log(data);
                if (obj.event === 'del') {
                    layer.confirm('真的删除行么', function (index) {
                        $.ajax({
                            "url": "/consulting/delete",
                            "data": {
                                ids: data.id
                            },
                            type: "get",
                            dataType: "json",
                            success: function (res) {
                                if (res.code === 200) {
                                    layer.msg("删除成功");
                                    obj.del();
                                    layer.close(index);
                                } else {
                                    layer.msg(res.msg);
                                }
                            }
                        })
                    });
                } else if (obj.event === 'edit') {
                    addOrUpdate(data);
                }
            });
        });
    });

</script>
</body>
</html>