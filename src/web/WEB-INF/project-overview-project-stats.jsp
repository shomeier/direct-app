<%@ include file="/WEB-INF/includes/taglibs.jsp" %>
<s:push value="viewData.projectStats">
    <tr>
        <td class="statusName"># of Drafts</td>
        <td><s:property value="draftContestsNumber"/></td>
    </tr>
    <tr>
        <td class="statusName"># Scheduled</td>
        <td><s:property value="pipelineContestsNumber"/></td>
    </tr>
    <tr>
        <td class="statusName"># Active</td>
        <td><s:property value="runningContestsNumber"/></td>
    </tr>
    <tr>
        <td class="statusName">Finished(Completed/Failed/Cancelled)</td>
        <td>${viewData.projectStats.finishedContestsNumber + viewData.dashboardProjectStat.cancelledNumber}(${viewData.dashboardProjectStat.completedNumber}/
                ${viewData.projectStats.finishedContestsNumber-viewData.dashboardProjectStat.completedNumber}/
                ${viewData.dashboardProjectStat.cancelledNumber})
        </td>
    </tr>
    <tr>
        <td class="statusName">Total Member Cost</td>
        <td>
            <fmt:formatNumber value="${viewData.dashboardProjectStat.totalMemberCost}" pattern="$#,##0.00"/>
        </td>
    </tr>
    <tr>
        <td class="statusName">Average Member Cost</td>
        <td>
            <fmt:formatNumber value="${viewData.dashboardProjectStat.averageMemberCostPerContest}" pattern="$#,##0.00"/>
        </td>
    </tr>
    <tr>
        <td class="statusName">Total Contest Fee</td>
        <td>
            <fmt:formatNumber value="${viewData.dashboardProjectStat.totalContestFee}" pattern="$#,##0.00"/>
        </td>
    </tr>
    <tr>
        <td class="statusName">Average Contest Fee</td>
        <td>
            <fmt:formatNumber value="${viewData.dashboardProjectStat.averageContestFeePerContest}" pattern="$#,##0.00"/>
        </td>
    </tr>
    <tr>
        <td class="statusName">Total Project Cost</td>
        <td id="totalProjectCostValue">
            <fmt:formatNumber value="${viewData.dashboardProjectStat.totalProjectCost}" pattern="$#,##0"/>
        </td>
    </tr>
    <tr>
        <td class="statusName">Average Contest Duration</td>
        <td>
            <c:out value="${tcdirect:getDurationTextInDays(viewData.dashboardProjectStat.averageContestDuration)}"/>
        </td>
    </tr>
    <tr>
        <td class="statusName">Average Fulfillment</td>
        <td>
            <fmt:formatNumber value="${viewData.dashboardProjectStat.averageFulfillment}" pattern="##0.##"/>%
        </td>
    </tr>
    <tr>
        <td class="statusName">Unresolved Issues</td>
        <td>
            <a href="<s:url action='projectIssueTracking' namespace='/'>
                                                    <s:param name='formData.projectId' value='formData.projectId'/>
                                                     <s:param name='subTab'>issues</s:param></s:url>">

                    ${viewData.dashboardProjectStat.unresolvedIssuesNumber}</a>
        </td>
    </tr>
    <tr>
        <td class="statusName">Ongoing Bug Races</td>
        <td>
            <a href="<s:url action='projectIssueTracking' namespace='/'>
                                                    <s:param name='formData.projectId' value='formData.projectId'/>
                                                     <s:param name='subTab'>bugRaces</s:param></s:url>">${viewData.dashboardProjectStat.ongoingBugRacesNumber}</a>
        </td>
    </tr>
</s:push>