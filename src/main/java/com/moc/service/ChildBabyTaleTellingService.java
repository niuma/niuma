package com.moc.service;

import com.moc.entity.Issue;

import java.util.List;

/**
 * Created by WangSu on 2017/4/19.
 */
public interface ChildBabyTaleTellingService{
        public Issue getGivenIssue(int id);
        public List<Issue> getIssue();
}
