package com.mr.controller;

import com.mr.model.OBJECGTMallAttr;
import com.mr.model.TMallAttrVO;
import com.mr.service.AttrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by JangSinyu on 2018/10/30.
 */
@Controller
public class AttrController {
    @Autowired
    private AttrService attrService;

    /**
     *  跳转至属性新增页面，并传递类型2 id
     * @param flbh2 类型2 id
     * @param map
     * @return
     */
    @RequestMapping("toAddAttrPage")
    public String toAddAttrPage(Integer flbh2, ModelMap map){
        map.put("flbh2",flbh2);
        return "saveAttrPage";
    }

    /**
     *  新增属性和属性值
     * @param flbh2 类型2 id
     * @param attrVO 属性集合
     * @return 重定向到属性新增页面
     */
    @RequestMapping("saveAttr")
    public ModelAndView saveAttr(Integer flbh2, TMallAttrVO attrVO){
        //新增属性
        attrService.saveAttr(flbh2,attrVO);
        //重定向到新增页面
        ModelAndView md = new ModelAndView();
        md.addObject("flbh2",flbh2);
        md.setViewName("redirect:toAddAttrPage.do");
        return md;
    }


    @RequestMapping("getAttrListByClass2")
    public String getAttrListByClass2(Integer flbh2,ModelMap map){
        List<OBJECGTMallAttr> list = attrService.getAttrListByClass2(flbh2);
        map.put("list",list);
        return "innerAttrPage";
    }
}
