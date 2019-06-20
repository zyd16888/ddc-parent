<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <script type="text/javascript" src="/lib/DD_belatedPNG_0.0.8a-min.js"></script>-->
<!--    <script>DD_belatedPNG.fix('*');</script>-->
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
		<select name="" class="select">
			<option value="0">全部分类</option>
			<option value="1">分类一</option>
			<option value="2">分类二</option>
		</select>
		</span> 日期范围：
        <input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin"
               class="input-text Wdate" style="width:120px;" name="start"/>
        -
        <input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax"
               class="input-text Wdate" style="width:120px;" name="end"/>
        <input type="text" name="titleName" id="titleName" placeholder=" 资讯名称" style="width:250px" class="input-text">
        <button name="search" id="search" class="btn btn-success radius" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜资讯</button>
    </div>


    <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l"><a href="javascript:;" onclick="datadel()"
                                                               class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a
            class="btn btn-primary radius" data-title="添加资讯" data-href="/page/article-add" onclick="Hui_admin_tab(this)"
            href="/page/article-add"><i class="Hui-iconfont">&#xe600;</i> 添加资讯</a></span> <span
            class="r">共有数据：<strong>2</strong> 条</span></div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
            <thead>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="" value=""></th>
                <th width="80">ID</th>
                <th>标题</th>
                <th width="80">分类</th>
                <th width="80">来源</th>
                <th width="120">更新时间</th>
                <th width="75">浏览次数</th>
                <th width="60">发布状态</th>
                <th width="120">操作</th>
            </tr>
            </thead>
            <tbody>
            <tr class="text-c">
                <td><input type="checkbox" value="" name=""></td>
                <td>10001</td>
                <td class="text-l"><u style="cursor:pointer" class="text-primary"
                                      onClick="article_edit('查看','article-zhang.html','10001')" title="查看">资讯标题</u></td>
                <td>行业动态</td>
                <td>H-ui</td>
                <td>2014-6-11 11:11:42</td>
                <td>21212</td>
                <td class="td-status"><span class="label label-success radius">已发布</span></td>
                <td class="f-14 td-manage"><a style="text-decoration:none" onClick="article_stop(this,'10001')"
                                              href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> <a
                        style="text-decoration:none" class="ml-5"
                        onClick="article_edit('资讯编辑','article-add.html','10001')" href="javascript:;" title="编辑"><i
                        class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5"
                                                                 onClick="article_del(this,'10001')" href="javascript:;"
                                                                 title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
                </td>
            </tr>
            <tr class="text-c">
                <td><input type="checkbox" value="" name=""></td>
                <td>10002</td>
                <td class="text-l"><u style="cursor:pointer" class="text-primary"
                                      onClick="article_edit('查看','article-zhang.html','10002')" title="查看">资讯标题</u></td>
                <td>行业动态</td>
                <td>H-ui</td>
                <td>2014-6-11 11:11:42</td>
                <td>21212</td>
                <td class="td-status"><span class="label label-success radius">草稿</span></td>
                <td class="f-14 td-manage"><a style="text-decoration:none"
                                              class="ml-5"
                                              onClick="article_edit('资讯编辑','article-add.html','10001')"
                                              href="javascript:;" title="编辑"><i
                        class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5"
                                                                 onClick="article_del(this,'10001')" href="javascript:;"
                                                                 title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <table class="table table-border table-bordered table-hover table-bg table-sort" lay-filter="test"
           style="margin-top: 10px;">

    </table>
</div>



<div class="layui-form" id="demo" style="padding: 20px 0 0 0;display: none" type="text/html">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <input type="hidden" name="id" value="{{ d.id || '' }}"   autocomplete="off" class="layui-input">


        <div class="layui-input-inline">

            <input type="text" name="username" value="{{ d.username || '' }}" lay-verify="required"
                   placeholder="请输入用户名" autocomplete="off" class="layui-input"/>

        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机号码</label>
        <div class="layui-input-inline">

            <input type="text" name="mobile" value="{{ d.mobile || '' }}" lay-verify="phone" placeholder="请输入号码"
                   autocomplete="off" class="layui-input"/>

        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">邮箱</label>
        <div class="layui-input-inline">

            <input type="text" name="email" value="{{ d.email || '' }}" lay-verify="email" placeholder="请输入邮箱"
                   autocomplete="off" class="layui-input"/>

        </div>
    </div>

    <div class="layui-form-item" lay-filter="sex">
        <label class="layui-form-label">选择性别</label>
        <div class="layui-input-block">

            <input type="radio" name="sex" value="0" title="男" {{ d.sex === 0 ? 'checked' : '' }}>
            <input type="radio" name="sex" value="1" title="女" {{ d.sex === 1 ? 'checked' : '' }}>
            <input type="radio" name="sex"  value="2" title="保密" {{ d.sex === 2 ? 'checked' : '' }}>

        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label"></label>
        <div class="layui-input-inline">
            <input type="button" lay-submit lay-filter="LAY-user-front-submit" value="确认" class="layui-btn">
        </div>
    </div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/lib/layui/layui.all.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">批量删除</button>

    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/javascript">
    $(function () {
        layui.use(['table', 'laytpl', 'element'], function () {
            var table = layui.table;
            var laytpl = layui.laytpl;
            var element = layui.element;
            $("#search").click(function () {
                reload();
            });

            function reload() {
                table.reload('table', {
                    where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）
                        start: $("#start").val(),
                        end: $("#end").val(),
                        keywords: $("#titleName").val()
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
                    {field: 'username', title: '用户名', width: '10%'}
                    , {field: 'mobile', title: '手机号', width: '10%'}
                    , {field: 'email', title: '邮箱', width: '10%'}
                    , {
                        field: 'sex', title: '性别', width: '10%'
                        , templet: function (d) {
                            switch (d.sex) {
                                case 0:
                                    return '男';
                                case 1:
                                    return '女';
                                case 2:
                                    return '保密';
                            }
                        }
                    }
                    , {field: 'remark', title: '留言内容', width: '30%'}
                    , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: '10%'}


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
                                    "url": "/suggestings/delete",
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

            //监听行工具事件
            table.on('tool(test)', function (obj) {
                var data = obj.data;

                console.log(data);
                if (obj.event === 'del') {
                    layer.confirm('真的删除行么', function (index) {
                        $.ajax({
                            "url": "/suggestings/delete",
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
                    var getTpl = $("#demo")[0].innerHTML;
                    laytpl(getTpl).render(data, function (html) {
                        var index = layer.open({
                            type: 1,
                            content: html,
                            area: ['500px', '600px']
                        });
                        element.render();
                    });
                }
            });
        });

    });
    $('.table-sort').dataTable({
        "aaSorting": [[1, "desc"]],//默认第几个排序
        "bStateSave": true,//状态保存
        "pading": false,
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable": false, "aTargets": [0, 8]}// 不参与排序的列
        ]
    });

    /*资讯-添加*/
    function article_add(title, url, w, h) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*资讯-编辑*/
    function article_edit(title, url, id, w, h) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*资讯-删除*/
    function article_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '',
                dataType: 'json',
                success: function (data) {
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!', {icon: 1, time: 1000});
                },
                error: function (data) {
                    console.log(data.msg);
                },
            });
        });
    }

    /*资讯-审核*/
    function article_shenhe(obj, id) {
        layer.confirm('审核文章？', {
                btn: ['通过', '不通过', '取消'],
                shade: false,
                closeBtn: 0
            },
            function () {
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
                $(obj).remove();
                layer.msg('已发布', {icon: 6, time: 1000});
            },
            function () {
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
                $(obj).remove();
                layer.msg('未通过', {icon: 5, time: 1000});
            });
    }

    /*资讯-下架*/
    function article_stop(obj, id) {
        layer.confirm('确认要下架吗？', function (index) {
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
            $(obj).remove();
            layer.msg('已下架!', {icon: 5, time: 1000});
        });
    }

    /*资讯-发布*/
    function article_start(obj, id) {
        layer.confirm('确认要发布吗？', function (index) {
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
            $(obj).remove();
            layer.msg('已发布!', {icon: 6, time: 1000});
        });
    }

    /*资讯-申请上线*/
    function article_shenqing(obj, id) {
        $(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
        $(obj).parents("tr").find(".td-manage").html("");
        layer.msg('已提交申请，耐心等待审核!', {icon: 1, time: 2000});
    }

</script>
</body>
</html>