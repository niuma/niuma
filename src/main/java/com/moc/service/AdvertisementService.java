package com.moc.service;

import com.moc.entity.Advertise;

import java.util.List;

/**
 * Created by WangSu on 5/14/2017.
 */
public interface AdvertisementService {
    public List<Advertise> getAdvertise(String block);
}
