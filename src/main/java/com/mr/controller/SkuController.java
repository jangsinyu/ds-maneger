package com.mr.controller;

import com.mr.model.OBJECGTMallAttr;
import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;
import com.mr.service.AttrService;
import com.mr.service.SkuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by JangSinyu on 2018/10/31.
 */
@Controller
public class SkuController {

    @Autowired
    private SkuService skuService;

    @Autowired
    private AttrService attrService;
    @RequestMapping("toAddSkuPage")
    public String toAddSkuPage(Integer flbh1, Integer flbh2, ModelMap map){

        //查询属性
        List<OBJECGTMallAttr> attrListByClass2 = attrService.getAttrListByClass2(flbh2);

        map.put("flbh1",flbh1);
        map.put("flbh2",flbh2);
        map.put("list",attrListByClass2);
        return "saveSkuPage";
    }

    @ResponseBody
    @RequestMapping("loadSpuByTmId")
    public List<TMallProduct> loadSpuByTmId(TMallProduct attr){
        List<TMallProduct> list = skuService.loadSpuByTmId(attr);
        return list;
    }

    @RequestMapping("saveSku")
    public ModelAndView saveSku(TMallSkuVO tMallSkuVO,Integer flbh1,Integer flbh2){

        skuService.saveSku(tMallSkuVO);

        //重定向
        ModelAndView mv = new ModelAndView();
        mv.addObject("flbh1",flbh1);
        mv.addObject("flbh2",flbh2);
        mv.setViewName("redirect:toAddSkuPage.do");
        return mv;
    }

}
