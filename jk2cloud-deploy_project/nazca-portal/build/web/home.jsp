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
        <link href="theme/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="scripts/jquery.min.js"></script>
        <script type="text/javascript" src="scripts/common.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var array_div = $(".noClass");
                var array_title = $(".content_detail_title");
                var array_content = $(".content_detail_content ul");
                array_content.hide();
                array_content.first().show();

                array_title.hover(function () {
                    $(this).addClass("hover");
                }, function () {
                    $(this).removeClass("hover");
                });
                array_div.click(function () {
                    $(this).children("dd").children("ul").toggle();
                });
            });
            function checkJava() {
                var applet = document.getElementById('detect_java_applet');
                if (applet) {
                    try {
                        var supported = applet.isVersionSupported();
                        var javaVersion = "";
                        try {
                             javaVersion = applet.getJavaVersion();
                        } catch (e) {
                            alert(e);
                        }
                        if (supported == true) {
                            $('#loading').hide();
                            $('#checking_applet').show();
                            applet.width = 300;
                            applet.height = 130;
                        } else {
                            $('#checking').hide();
                            $('#failure').show();
                            $('#fail_text').html("<a href=\"http://javadl.sun.com/webapps/download/AutoDL?BundleId=98426\">点击下载新版本Java软件</a>");
                            $('#launch_direct').html("<a href=\"APPLICATION.JNLP\">跳过安装新版Java而直接启动客户端点击这里</a>");
                            $('#failure_desc').html("检测完成，您的系统中Java版本是" + javaVersion);
                            return;
                        }
                    } catch (e) {
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
                <div id="logo1">
                    <!--a href="#" style="font-family:'黑体';
                       color:#FFFFFF;
                       text-decoration: none;
                       font-size:17px;
                       float: right;
                       display: inline-block;
                       height: 32px;
                       width: 100px;
                       text-align: center;text-shadow: 1px 1px 1px #4E758F;letter-spacing: 1px;
                       line-height: 32px;
                       background:  url('theme/images/button_bg.png') no-repeat;
                       margin-top:17px;" 
                       >系统管理</a>
                    <a 
                        href="home_app.jsp"
                        style="font-family:'黑体';
                        color:#3C4B56;
                        font-size:17px;
                        text-decoration: none;
                        float: right;
                        height: 32px;
                        width: 100px;
                        text-align: center;letter-spacing: 1px;
                        line-height: 32px;
                        display: inline-block;
                        /*background:  url('theme/images/button_bg.png') no-repeat;*/
                        margin-top:17px;"
                        >手机APP</a-->
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
                        <div id="">
                            <div class="desc">
                                欢迎使用云集客信息管理系统。<br />
                                系统将自动检测您的计算机是否符合本系统的运行要求，检测会持续几分钟，请您耐心等待，检测完成后将引导您运行管理系统的桌面程序。
                                <font color="#900000">在检测时，系统将提示“是否要运行此应用程序”，请点击【运行】按钮。</font>
                            </div>
                            <div id="checking">
                                <div id="loading" class="loading">
                                    请稍候，正在检测您的计算机软件环境...
                                </div>
                                <div id="checking_applet">
                                    <applet id="detect_java_applet" title="Detecting Java" archive="app/oa-portal-authcheck.jar"
                                            code="com.nazca.installer.portal.AuthCheckerApplet.class"
                                            width="1" height="1">
                                        <param name="launchUrl" value="${pageContext.request.scheme}${'://'}${pageContext.request.serverName}${':'}${pageContext.request.serverPort}${pageContext.request.contextPath}/app/launch.jnlp" />
                                        <param name="btnImg" value="${pageContext.request.scheme}${'://'}${pageContext.request.serverName}${':'}${pageContext.request.serverPort}${pageContext.request.contextPath}/theme/images/launch.png"/>
                                        <param name="btnImgLighter" value="${pageContext.request.scheme}${'://'}${pageContext.request.serverName}${':'}${pageContext.request.serverPort}${pageContext.request.contextPath}/theme/images/launch_lighter.png"/>
                                        <param name="btnImgGray" value="${pageContext.request.scheme}${'://'}${pageContext.request.serverName}${':'}${pageContext.request.serverPort}${pageContext.request.contextPath}/theme/images/launch_gray.png"/> 
                                        <param name="backgroundColor" value="#ECECEC"/>
                                        <param name="minJavaVersion" value="1.8.0"/>
                                    </applet>
                                </div>
                            </div> 
                            <div id="failure" style="display:none;">
                                <div id="failure_desc" class="failure_desc">检测完成，您的计算机不满足运行要求！</div>
                                <div id="fail_text" class="failure_link_text">您的计算机不满足运行要求! <br/><a href="http://javadl.sun.com/webapps/download/AutoDL?BundleId=98426">请点击这里下载Java软件</a></div>
                                <div id="launch_direct" class="launch_direct"><a href="app/launch.jnlp">如果安装Java后无法启动请点这里</a></div>
                            </div>
                        </div>
                        <div>
                            <div id="javaId">
                                <div id="java"><a href="http://javadl.sun.com/webapps/download/AutoDL?BundleId=98426">下载Java软件</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="right">
                </div>
                <div class="clear"/>
            </div>
            <div id="help">
                <div class="title">获取帮助</div>
                <div class="desc"> 您可以点击下面的链接下载用户手册： </div>
                <div class="title">下载用户手册</div>
                <div class="link">
                    <a href="download/operating_manual_yoyo.pdf" download="系统管理用户手册.pdf">系统管理用户手册</a>
                </div>
            </div>
            <div class="content">
                <div id="faq">
                    <div class="title">常见问题<a id="faq"></a></div>
                    <dl>
                        <dt>1、本程序的运行环境要求是什么</dt>
                        <dd>
                            <ul>
                                本程序的运行环境要求如下：<br/>
                                <li>处理器：1GHz主频以上（建议：双核1GHz以上）</li>
                                <li>内存：512MB以上（建议：1GB以上）</li>
                                <li>分辨率：1024 x 768以上（<span class="failure_desc">建议：1280x800以上</span>）</li>
                                <li>显卡：DirectX 9以上兼容显卡</li>
                                <li>操作系统：Windows 7(32/64位)、Mac OS X 10.6以上、Linux 2.6.18以上、Solaris 10以上、Windows XP SP3、Windows Vista(32/64位)</li>
                                <li>Java环境：Java 7.0 </li>
                                <li>网络环境：1MB以上宽带网络（教育网或者互联网）</li>
                                <li>摄像设备：现阶段主流品牌USB网眼或USB采集盒
                            </ul>
                        </dd>
                        <!--                        <dt>2、Java软件始终无法下载成功</dt>
                                                <dd>
                                                    <ul>
                                                        如果您始终无法下载Java软件，请&nbsp;<a href="download/setup-java.exe">点击这里</a>
                                                    </ul>
                                                </dd>-->
                        <dt>2、客户端程序始终无法启动</dt>
                        <dd>
                            <ul>
                                请尝试：
                                <li>清除Java缓存并重新安装客户端程序，清除Java缓存操作办法请参见“常见问题3”</li>
                                <li>关闭杀毒软件、360或金山卫士等服务，然后重新启动客户端程序</li>
                            </ul>
                        </dd>
                        <dt>3、客户端程序安装后没有在开始菜单中形成快捷方式</dt>
                        <dd>
                            <ol>
                                需要清除Java缓存，请按照以下步骤执行：<br />
                                <li>打开WIndows控制面板，找到“Java”并执行，将弹出“Java控制面板”对话框。<a target="_blank" href="theme/images/faq3-1.png">查看截图</a></li>
                                <li>在弹出“Java控制面板”对话框中点击第一个选项卡“临时Internet文件”中的【设置】按钮，将弹出“临时文件设置”对话框。<a target="_blank" href="theme/images/faq3-2.png">查看截图</a></li>
                                <li>在弹出的“临时文件设置”对话框中选择【删除文件】按钮，将弹出“删除临时文件”对话框。<a target="_blank" href="theme/images/faq3-3.png">查看截图</a></li>
                                <li>在弹出的“删除临时文件”对话框中勾选“应用程序和applet”和“跟踪和日志文件”，点击【确定】。<a target="_blank" href="theme/images/faq3-4.png">查看截图</a></li>
                                <li>关闭所有对话框</li>
                                <li>关闭杀毒软件、360或金山卫士等服务</li>
                                <li>重新点击<a href="app/launch.jnlp">启动客户端安装程序链接</a></li>
                                <li>重新开启杀毒软件、360或金山卫士等服务</li>
                            </ol>
                        </dd>
                        <dt>4、我一直没有收到密码邮件</dt>
                        <dd>
                            <ul>
                                请确认：
                                <li>您向管理员提供的邮箱是否提供正确</li>
                                <li>密码邮件是否被邮件系统分类为“垃圾邮件”（一般位于“垃圾邮件箱”中）</li>
                            </ul>
                        </dd>
                        <dt>6、登录时提示“用户名或密码错误”</dt>
                        <dd>
                            <ul>
                                请确认：
                                <li>密码粘贴时是否多粘贴了一个空格</li>
                                <li>是否混淆了字母l和数字1，或混淆了字母o和数字0</li>
                            </ul>
                        </dd>
                        <dt>7、我使用的输入法无法在软件中输入汉字</dt>
                        <dd>
                            <ol>
                                由于某些输入法（如智能ABC）与Java运行环境冲突，建议使用以下输入法：
                                <li>QQ拼音/五笔输入法</li>
                                <li>搜狗拼音/五笔输入法</li>
                                <li>微软拼音输入法</li>
                            </ol>
                        </dd>
                    </dl>
                </div>
                <div id="update">
                    <div class="title">系统更新日志<a id="changelog"></a></div>
                    <dl class="multi-list" id="changlog-list">
                        <s:action name="change-log-mgmt" executeResult="true" />
                    </dl>
                </div>
            </div>
            <div class="content">
                <div id="copyright">
                    <hr>
                    <div class="text">
                        <br />
                        版权所有：云集客 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        技术支持：北京英智兴达信息技术有限公司
                        <br />
                    </div>
                </div>  
            </div>
        </div>
    </div>
</body>
</html>

