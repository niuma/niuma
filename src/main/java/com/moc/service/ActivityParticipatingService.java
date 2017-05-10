package com.moc.service;

import com.moc.entity.ActivityPartKey;
/**
 * Created by WangSu on 2017/4/14.
 */
public interface ActivityParticipatingService {
    public void insert(int uid,int aid);
    public void cancel(int uid,int aid);
    public boolean selectByUidAndAid(int uid, int aid);
}
