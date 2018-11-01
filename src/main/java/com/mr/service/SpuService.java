package com.mr.service;

import com.mr.model.TMallProduct;

import java.util.List;


/**
 * Created by JangSinyu on 2018/10/29.
 */
public interface  SpuService {

    void saveTMallProduct(TMallProduct tMallProduct, List<String> urlList);
}
