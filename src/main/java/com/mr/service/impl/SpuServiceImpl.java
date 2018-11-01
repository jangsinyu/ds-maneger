package com.mr.service.impl;

import com.mr.mapper.SpuMapper;
import com.mr.model.TMallProduct;
import com.mr.service.SpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by JangSinyu on 2018/10/29.
 */
@Service
public class SpuServiceImpl implements SpuService {
    @Autowired
    private SpuMapper spuMapper;

    public void saveTMallProduct(TMallProduct tMallProduct, List<String> urlList) {

        spuMapper.saveTMallProduct(tMallProduct);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id", tMallProduct.getId());
        map.put("urlList", urlList);
        spuMapper.saveTMallProductImage(map);
    }

}
