package com.lindong.controller;


import com.lindong.domain.Integral;
import com.lindong.domain.UserSign;
import com.lindong.service.IUserSignService;
import com.lindong.utils.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("bbs/sign")
public class UserSignController {

    @Resource
    private IUserSignService userSignService;

    @RequestMapping(value = "/userSign")
    @ResponseBody
    public UserSign userSign(Integer uid,Integer isExecuteSign){
        UserSign userSign = (UserSign) userSignService.getObjectById(uid);
        Date last_sign_time = userSign.getLast_sign_time();
        int i = DateUtil.isContinuous(last_sign_time);
        //System.out.println("==========" + i);
        if (i != 0){     //未签到
            if (isExecuteSign == 1){    //此次请求是否执行签到功能
                int continuous_days = Integer.parseInt(userSign.getContinuous_days());  //连续签到天数
                Integer month_days = userSign.getMonth_days();          //月签到天数
                Integer total_days = userSign.getTotal_days();        //签到总天数
                Date date = new Date();
                if (i == 1){     //签到连续
                    continuous_days ++;
                }else{
                    continuous_days = 1;
                }
                if (!DateUtil.isFirstDayOfMonth(date)){  //是否是本月1号
                    month_days ++;
                }else{
                    month_days = 1;
                }
                userSign.setContinuous_days("" + continuous_days);
                userSign.setMonth_days(month_days);
                userSign.setTotal_days(++total_days);
                userSign.setLast_sign_time(date);
                Integer award = 2 * continuous_days; //签到积分奖励 = 签到天数 * 2
                userSign.setLast_award("" + award);
                userSign.setSign_status("1");
                //用户签到
                userSignService.updateUserSign(userSign);
                //更新积分
                Integral integral = userSignService.selectIntegral(uid);
                Integer total_integral = integral.getTotal_integral() + award;
                integral.setTotal_integral(total_integral);
                integral.setUser_integral(award);
                integral.setLast_time(DateUtil.dateToStr(date));
                userSignService.updateUserIntegral(integral);
            }else {
                userSign.setSign_status("0");
            }
        }
        return userSign;
    }

    @RequestMapping("/signPaging")
    @ResponseBody
    public Map signPaging(@RequestBody(required = true) Map map){
        int totalPage = userSignService.getCount(map);
        List<UserSign> userSigns = userSignService.paging(map);
        Map resultMap = new HashMap();
        resultMap.put("code",0);
        resultMap.put("msg","");
        resultMap.put("data",userSigns);
        resultMap.put("count",totalPage);
        return resultMap;
    }

    @RequestMapping("/getCountMapData")
    @ResponseBody
    public Map<String, Object> getCountMapData() {
        Map<String, Object> map = new HashMap<>();

        // 初始化
        int todayPostCount = 0;
        int yesterdayPostCount = 0;

        List<Map> list = userSignService.selectPostCountByDate();

        if (list.size() == 1) {
            // 只有一条数据，需要判断是今天还是昨天
            Object count = list.get(0).get("post_count");
            // 这里需要修改SQL返回日期才能准确判断
            // 暂时假设为今天（统计最近一天的帖子）
            todayPostCount = ((Number) count).intValue();
        } else if (list.size() == 2) {
            // 有两条数据，需要确保顺序
            // 修改SQL，添加ORDER BY确保昨天在前今天在后
            yesterdayPostCount = ((Number) list.get(0).get("post_count")).intValue();
            todayPostCount = ((Number) list.get(1).get("post_count")).intValue();
        }

        map.put("todayPostCount", todayPostCount);
        map.put("yesterdayPostCount", yesterdayPostCount);

        // 其他统计数据
        int postCount = userSignService.selectPostCount();
        int userCount = userSignService.selectUserCount();
        int todaySignCount = userSignService.selectTodaySignCount();

        map.put("postCount", postCount);
        map.put("userCount", userCount);
        map.put("todaySignCount", todaySignCount);

        return map;
    }

    @RequestMapping("/findByUserSign")
    @ResponseBody
    public UserSign findByUserSign(Integer uid){
        UserSign signByName = (UserSign) userSignService.getObjectById(uid);
        return signByName;
    }

}
