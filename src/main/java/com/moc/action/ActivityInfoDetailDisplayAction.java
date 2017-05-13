package com.moc.action;

import com.moc.entity.ActivityInfo;
import com.moc.service.ActivityInfoService;
import com.moc.service.ActivityParticipatingService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by WangSu on 2017/4/12.
 */
@Controller
@RequestMapping("/activityInfoDetailDisplay")
public class ActivityInfoDetailDisplayAction {
    @Resource
    private ActivityInfoService activityInfoService;
    @Resource
    private ActivityParticipatingService activityParticipatingService;

    @RequestMapping("/display")
    public String display(@RequestParam("name") Integer activityId, Model model) {
        ActivityInfo activityInfoDetail = activityInfoService.getGivenActivityInfo(activityId);
        //to display particular activity
        List<ActivityInfo> activityInfo = activityInfoService.getActivityInfo();
        // to display all the activities
        model.addAttribute("activityInfoDetail", activityInfoDetail);
        model.addAttribute("activityInfo", activityInfo);


        boolean activityType = activityParticipatingService.selectByUidAndAid(1000, activityId);
        if (activityType)
            model.addAttribute("part", true);
        else
            model.addAttribute("part", false);
        return "Activity";
    }

    @RequestMapping("/baoming")
    public String baoming(@RequestParam("aid") int aid,HttpSession session) {
        int uid = Integer.valueOf(session.getAttribute("userid").toString());
        activityParticipatingService.insert(uid, aid);
        return "redirect:/activityInfoDetailDisplay/display.action?name=" + aid;
    }

    @RequestMapping("/quxiao")
    public String quxiao(@RequestParam("aid") int aid,HttpSession session) {
        int uid = Integer.valueOf(session.getAttribute("userid").toString());
        activityParticipatingService.cancel(uid, aid);
        return "redirect:/activityInfoDetailDisplay/display.action?name=" + aid;
    }

}

