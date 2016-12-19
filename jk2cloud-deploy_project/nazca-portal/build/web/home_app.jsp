<%-- 
    Document   : index
    Created on : Jan 9, 2014, 11:35:02 AM
    Author     : Shen He
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="theme/style_1.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="scripts/jquery.min.js"></script>
        <script type="text/javascript" src="scripts/common.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                var array_div = $(".noClass");
                var array_title = $(".content_detail_title");
                var array_content = $(".content_detail_content ul");
                array_content.hide();
                array_content.first().show();

                array_title.hover(function() {
                    $(this).addClass("hover");
                }, function() {
                    $(this).removeClass("hover");
                });
                array_div.click(function() {
                    $(this).children("dd").children("ul").toggle();
                });
            });
            function checkJava() {
                var applet = document.getElementById('detect_java_applet');
                if (applet) {
                    try {
                        if (applet.isVersionSupported()) {
                            $('#loading').hide();
                            $('#checking_applet').show();
                            applet.width = 300;
                            applet.height = 130;
                        } else {
                            $('#checking').hide();
                            $('#failure').show();
                            $('#fail_text').html("系统中的Java软件需要升级<br/><a href=\"http://javadl.sun.com/webapps/download/AutoDL?BundleId=74781\">点击下载新版本Java软件</a>");
                            $('#failure_desc').html("检测完成，您的系统中Java版本是" + javaVersion);
                        }
                    } catch (e) {
                        $('#checking').hide();
                        $('#failure').show();
                        $('#fail_text').html("启动失败，请刷新并点击运行按钮");
                    }
                } else {
                    $('#checking').hide();
                    $('#failure').show();
                }
            }
            setTimeout(checkJava, 3000);
        </script>
        <title>云集客信息管理系统</title>
    </head>
    <body>
        <div id="header">
            <div class="content">
                <div id="logo">
                    <a href="home.jsp" style="font-family:'黑体';
                       color:#3C4B56;
                       text-decoration: none;
                       font-size:17px;
                       float: right;
                       display: inline-block;
                       height: 32px;
                       width: 100px;
                       text-align: center;letter-spacing: 1px;
                       line-height: 32px;
                       /*background:  url('theme/images/button_bg.png') no-repeat;*/
                       margin-top:17px;" 
                       >系统管理</a>
                    <a 
                        href="#"
                        style="font-family:'黑体';
                        color:#FFFFFF;
                        font-size:17px;
                        text-decoration: none;
                        float: right;
                        height: 32px;
                        width: 100px;
                        text-align: center;text-shadow: 1px 1px 1px #4E758F;letter-spacing: 1px;
                        line-height: 32px;
                        display: inline-block;
                        background:  url('theme/images/button_bg.png') no-repeat;
                        margin-top:17px;"
                        >手机APP</a>
                    <div style="clear: both;"></div>
                </div>
            </div>
        </div>
        <div id="header_btm"></div>
        <div id="main">
            <div class="content">
                <div id="left">
                    <div id="system">
                        <div class="title">系统安装</div>
                        <div class="desc">
                            欢迎使用云集客信息管理系统APP。<br />
                            请确保您的手机操作系统是安卓4.0以上版本，点击下面的按钮即可开始下载安装。
                        </div>
                        <a href="/gmnt-app.apk" style="
                           width: 306px;
                           height: 44px;
                           margin:35px 0 5px 125px;
                           display: block;
                           background: url('theme/images/button_app.png') no-repeat;
                           " ></a>
                    </div>
                    <div id="help">
                        <div class="title">获取帮助</div>
                        <div class="desc"> 您可以点击下面的链接下载用户手册： </div>
                        <div class="title">下载用户手册</div>
                        <div class="link">
                            <a href="download/operating_manual_app.pdf" download="手机APP用户手册.pdf">手机APP用户手册</a>
                        </div>
                    </div>
                    <div id="faq">
                        <div class="title">常见问题<a id="faq"></a></div>
                        <dl>
                            <dt>1、本程序支持哪些手机系统？</dt>
                            <dd>
                                <ul>
                                    <li>“云集客信息管理系统”目前官方支持的手机系统为安卓4.0及以上版本。</li>
                                </ul>
                            </dd>
                            <dt>2、安装时总是提示“解析包时出现问题”，如何解决？</dt>
                            <dd>
                                <ul>
                                    <li>请确认您的安装包是从官网或合作网站下载的。</li> 
                                    <li>请确认您的安卓系统版本是否为4.0以上版本。</li> 
                                </ul>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div id="right">
                </div>
                <div class="clear"/>
                <div id="update">
                    <div class="title">系统更新日志<a id="changelog"></a></div>
                    <dl class="multi-list" id="changlog-list">
                        <s:action name="change-log-app" executeResult="true" />
                    </dl>
                </div>
            </div>
            <div class="content">
                <div id="copyright">
                    <hr>
                    <div class="text">
                        <br />
                        版权所有：云集客  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        技术支持：北京英智兴达信息技术有限公司
                        <br />
                    </div>
                </div>  
            </div>
        </div>
    </div>
</body>
</html>

