package com.mr.mapper;

import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;

import java.util.List;
import java.util.Map;

/**
 * Created by JangSinyu on 2018/10/31.
 */
public interface SkuMapper {

    List<TMallProduct> loadSpuByTmId(TMallProduct attr);

    void saveSku(TMallSkuVO tMallSkuVO);

    void saveSkuValue(Map<String, Object> map);
}
