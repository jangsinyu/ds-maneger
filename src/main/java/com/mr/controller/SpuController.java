package com.mr.controller;

import com.mr.model.TMallProduct;
import com.mr.service.SpuService;
import com.mr.util.MyFileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by JangSinyu on 2018/10/29.
 */
@Controller
public class SpuController {
    @Autowired
    private SpuService spuService;

    /**
     *          跳转至spu新增页面
     * @param tMallProduct 接收 spuPage.jsp 传递的 分类编号1，分类编号2和品牌id
     * @param map 将接收的  分类编号1，分类编号2和品牌id  传递到 saveSpuPage.jsp  页面
     * @return
     */
    @RequestMapping("toAddSpuPage")
    public String toAddSpuPage(TMallProduct tMallProduct, ModelMap map){
        map.put("tMallProduct",tMallProduct);
        return "saveSpuPage";
    }

    /**
     * 新增 spu 方法 和 新增图片方法
     * @param tMallProduct
     * @param imgs
     * @return
     */
    @RequestMapping("saveTMallProduct")
    public ModelAndView saveTMallProduct(TMallProduct tMallProduct,@RequestParam MultipartFile[] imgs){
        //新增spu  上传spu图片
        List<String> urlList = MyFileUploadUtil.upload_image(imgs);
        tMallProduct.setShpTp(urlList.get(0));
        spuService.saveTMallProduct(tMallProduct,urlList);

        //重定向返回
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("flbh1",tMallProduct.getFlbh1());
        modelAndView.addObject("flbh2",tMallProduct.getFlbh2());
        modelAndView.addObject("ppId",tMallProduct.getPpId());
        modelAndView.setViewName("redirect:toAddSpuPage.do");
        return modelAndView;
    }

}
