<%-- 
    Document   : common-changeLog
    Created on : Jan 8, 2014, 10:48:24 AM
    Author     : Shen He
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="theme/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="scripts/jquery.min.js"></script>
        <script type="text/javascript" src="scripts/common.js"></script>
        <title>云集客信息管理系统</title>
    </head>
    <body>
        <div id="header">
            <div class="content">
                <div id="logo"></div>
            </div>
        </div>
        <div id="header_btm"></div>
        <div id="main">
            <div class="content">
                <div id="update">
                    <div class="title">系统更新日志<a id="changelog"></a></div>
                    <dl class="multi-list" id="changlog-list">
                        <div class="noClass">
                            <s:iterator value="changeLogs" var="log">
                                <div class="content_detail">
                                    <dt class="content_detail_title">${log.versionName} (${log.publishTime}) </dt>
                                    <dd class="content_detail_content">
                                        ${log.description}
                                    </dd>
                                </div>
                                <dt class="split-line"></dt>
                            </s:iterator>
                        </div>
                    </dl>
                </div>

                <div class="content">
                    <div id="copyright">
                        <hr>
                        <div class="text">
                            版权所有：云集客<br />
                            技术支持：北京英智兴达信息技术有限公司
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </body>
</html>
