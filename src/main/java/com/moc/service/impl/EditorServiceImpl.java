package com.moc.service.impl;

import com.moc.service.EditorService;
import org.springframework.stereotype.Service;
import com.moc.dao.IssueMapper;
import javax.annotation.Resource;
import java.util.Date;
import com.moc.entity.Issue;
/**
 * Created by WangSu on 5/11/2017.
 */
@Service("EditorService")
public class EditorServiceImpl implements EditorService{
    @Resource
    private IssueMapper issueMapper;

    public void insert(int uid, String title, String text, Date date,String media,int block) {
        Issue issue = new Issue();
        issue.setTime(date);
        issue.setTitle(title);
        issue.setText(text);
        issue.setBlock(block);
        issue.setMedia(media);
        issue.setUserid(uid);
        issueMapper.insert(issue);
    }
}
