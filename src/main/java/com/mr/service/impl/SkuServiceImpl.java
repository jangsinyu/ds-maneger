package com.mr.service.impl;

import com.mr.mapper.SkuMapper;
import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;
import com.mr.service.SkuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by JangSinyu on 2018/10/31.
 */
@Service
public class SkuServiceImpl implements SkuService {

    @Autowired
    private SkuMapper skuMapper;

    public List<TMallProduct> loadSpuByTmId(TMallProduct attr) {
        return skuMapper.loadSpuByTmId(attr);
    }

    public void saveSku(TMallSkuVO tMallSkuVO) {
        skuMapper.saveSku(tMallSkuVO);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("attrValues",tMallSkuVO.getAttrValues());
        map.put("shpId",tMallSkuVO.getShpId());
        map.put("skuId",tMallSkuVO.getId());
        skuMapper.saveSkuValue(map);
    }
}
