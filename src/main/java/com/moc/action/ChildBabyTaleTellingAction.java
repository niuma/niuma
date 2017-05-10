package com.moc.action;

import com.moc.entity.Issue;
import com.moc.service.ChildBabyTaleTellingService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by WangSu on 2017/4/19.
 */
@Controller
@RequestMapping("/ChildBabyTelling")
public class ChildBabyTaleTellingAction {
    @Resource
    private ChildBabyTaleTellingService childBabyTaleTellingService;

    @RequestMapping("/display")
    public String display(@RequestParam("name") Integer issueId, Model model) {
        Issue issueDetail = childBabyTaleTellingService.getGivenIssue(issueId);
        List<Issue> issue= childBabyTaleTellingService.getIssue();
        model.addAttribute("childBabyTaleTellingDetail", issueDetail);
        model.addAttribute("childBabyTaleTelling",issue);
        return "ChildBabyTaleTelling";
    }
}
