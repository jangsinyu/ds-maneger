package com.mr.mapper;

import com.mr.model.OBJECGTMallAttr;

import java.util.List;
import java.util.Map;

/**
 * Created by JangSinyu on 2018/10/30.
 */
public interface AttrMapper {

    void saveAttr(OBJECGTMallAttr attr);

    void saveAttrValue(Map<String, Object> map);

    List<OBJECGTMallAttr> getAttrListByClass2(Integer flbh2);
}
