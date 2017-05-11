package com.moc.service;

import java.util.Date;

/**
 * Created by WangSu on 5/11/2017.
 */
public interface EditorService {
    public void insert(int uid,String title,String text,Date date,String media,int block);
}
