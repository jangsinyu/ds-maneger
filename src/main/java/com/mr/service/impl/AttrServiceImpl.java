package com.mr.service.impl;

import com.mr.mapper.AttrMapper;
import com.mr.model.OBJECGTMallAttr;
import com.mr.model.TMallAttrVO;
import com.mr.service.AttrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by JangSinyu on 2018/10/30.
 */
@Service
public class AttrServiceImpl implements AttrService {

    @Autowired
    private AttrMapper attrMapper;

    public void saveAttr(Integer flbh2, TMallAttrVO attrVO) {
        List<OBJECGTMallAttr> attrList = attrVO.getAttrList();
        //  for循环 属性名集合
        for (int i = 0; i < attrList.size(); i++) {

            OBJECGTMallAttr attr = attrList.get(i);
            attr.setFlbh2(flbh2);
            //1.新增属性名称，并获取自增的id
            attrMapper.saveAttr(attr);

            //2.新增valueList 属性值和属性值单位
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("shxmId",attr.getId());
            map.put("valueList", attr.getValueList());
            attrMapper.saveAttrValue(map);

        }
    }

    public List<OBJECGTMallAttr> getAttrListByClass2(Integer flbh2) {
          return attrMapper.getAttrListByClass2(flbh2);
    }
}
