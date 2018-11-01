package com.mr.mapper;

import com.mr.model.TMallProduct;

import java.util.Map;

/**
 * Created by JangSinyu on 2018/10/29.
 */
public interface SpuMapper {
    void saveTMallProduct(TMallProduct tMallProduct);

    void saveTMallProductImage(Map<String, Object> map);
}
