package com.moc.service.impl;

import com.moc.dao.IssueMapper;
import com.moc.entity.Issue;
import com.moc.entity.IssueExample;
import com.moc.service.ChildBabyTaleTellingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by WangSu on 2017/4/19.
 */
@Service("ChildBabyTellingService")
public class ChildBabyTellingServiceImpl implements ChildBabyTaleTellingService{
    @Resource
    private IssueMapper issueMapper;
    IssueExample issueExample = new IssueExample();

    public Issue getGivenIssue(int id){
        Issue list= issueMapper.selectByPrimaryKey(id);
        return list;
    }

    public List<Issue> getIssue(){
        issueExample.setOrderByClause("issue_id");
        List<Issue> list = issueMapper.selectByExample(issueExample);
        return list;
    }
}
