package com.moc.service.impl;

import com.moc.dao.AdvertiseMapper;
import com.moc.entity.Advertise;
import com.moc.entity.AdvertiseExample;
import com.moc.service.AdvertisementService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by WangSu on 5/14/2017.
 */
@Service("AdvertisementService")
public class AdvertisementServiceImpl implements AdvertisementService {
    @Resource
    private AdvertiseMapper advertiseMapper;

    public List<Advertise> getAdvertise(String area){
        String test =area;
        AdvertiseExample advertiseExample = new AdvertiseExample();
        AdvertiseExample.Criteria criteria = advertiseExample.createCriteria();
        criteria.andAdAreaEqualTo(area);
//        criteria.andAdAreaEqualTo(area);
        List<Advertise> advertiseList = advertiseMapper.selectByExample(advertiseExample);
        return advertiseList;
    }
}
