<%-- 
    Document   : common-changeLog
    Created on : Jan 8, 2014, 10:48:24 AM
    Author     : Shen He
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="noClass">
    <div id="update">
        <dl class="multi-list" id="changlog-list">
            <s:iterator value="changeLogs" var="log">
                <div class="noClass">
                    <dt class="content_detail_title">${log.versionName} (${log.publishTime}) </dt>
                    <dd class="content_detail_content">
                        ${log.description}
                    </dd>
                    <dt class="split-line"></dt>
                </div>
            </s:iterator>
        </dl>
    </div>
</div>
