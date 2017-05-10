package com.moc.service.impl;

import com.moc.dao.ActivityPartMapper;
import com.moc.entity.ActivityPartExample;
import com.moc.entity.ActivityPartKey;
import com.moc.service.ActivityParticipatingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by WangSu on 2017/4/14.
 */
@Service("ActivityParticipatingService")
public class ActivityParticipatingServiceImpl implements ActivityParticipatingService {
    @Resource
    private ActivityPartMapper activityPartMapper;

    public void insert(int uid,int aid){
        ActivityPartKey activityPartKey = new ActivityPartKey();
        activityPartKey.setActivityId(aid);
        activityPartKey.setUserid(uid);
        activityPartMapper.insert(activityPartKey);
    }

    public void cancel(int uid,int aid){
        ActivityPartExample activityPartExample = new ActivityPartExample();
        ActivityPartExample.Criteria criteria =activityPartExample.createCriteria();
        criteria.andActivityIdEqualTo(aid);
        criteria.andUseridEqualTo(uid);
        activityPartMapper.deleteByExample(activityPartExample);
    }

    public boolean selectByUidAndAid(int uid, int aid){
        ActivityPartExample example = new ActivityPartExample();
        ActivityPartExample.Criteria criteria = example.createCriteria();
        criteria.andUseridEqualTo(uid);
        criteria.andActivityIdEqualTo(aid);
        List<ActivityPartKey> list = activityPartMapper.selectByExample(example);

        if (list.isEmpty())
            return false;
        else
            return true;
    }
}
