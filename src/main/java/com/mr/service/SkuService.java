package com.mr.service;

import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;

import java.util.List;

/**
 * Created by JangSinyu on 2018/10/31.
 */
public interface SkuService {
    List<TMallProduct> loadSpuByTmId(TMallProduct attr);

    void saveSku(TMallSkuVO tMallSkuVO);
}
