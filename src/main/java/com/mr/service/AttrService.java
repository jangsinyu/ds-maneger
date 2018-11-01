package com.mr.service;

import com.mr.model.OBJECGTMallAttr;
import com.mr.model.TMallAttrVO;

import java.util.List;

/**
 * Created by JangSinyu on 2018/10/30.
 */
public interface AttrService {

    void saveAttr(Integer flbh2, TMallAttrVO attrVO);

    List<OBJECGTMallAttr> getAttrListByClass2(Integer flbh2);
}
