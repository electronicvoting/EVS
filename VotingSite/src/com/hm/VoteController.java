package com.hm;

import java.util.List;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.servlet.ModelAndView;  
//import com.hm.beans.Vote;  
import com.hm.VoteDao;  
@Controller  
public class VoteController {  
    @Autowired  
    VoteDao dao;//will inject dao from xml file  
      
    /*It displays a form to input data, here "command" is a reserved request attribute 
     *which is used to display object data into form 
     */  
    @RequestMapping("/voterform")  
    public ModelAndView showform(){  
        return new ModelAndView("voterform","command",new Vote());  
    }  
    /*It saves object into database. The @ModelAttribute puts request data 
     *  into model object. You need to mention RequestMethod.POST method  
     *  because default request is GET*/  
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("vote") Vote vote){  
        dao.save(vote);  
        return new ModelAndView("redirect:/viewvote");//will redirect to viewvote request mapping  
    }  
    /* It provides list of Voteloyees in model object */  
    @RequestMapping("/viewvote")  
    public ModelAndView viewvote(){  
        List<Vote> list=dao.getVoteloyees();  
        return new ModelAndView("viewvote","list",list);  
    }  
    /* It displays object data into form for the given id.  
     * The @PathVariable puts URL data into variable.*/  
    @RequestMapping(value="/editVote/{id}")  
    public ModelAndView edit(@PathVariable int id){  
        Vote vote=dao.getVoteById(id).get(0);  
        return new ModelAndView("voteeditform","command",vote);  
    }  
    /* It updates model object. */  
    @RequestMapping(value="/editsave",method = RequestMethod.POST)  
    public ModelAndView editsave(@ModelAttribute("vote") Vote vote){  
        dao.update(vote);  
        return new ModelAndView("redirect:/viewvote");  
    }  
    /* It deletes record for the given id in URL and redirects to /viewvote */  
    @RequestMapping(value="/deleteVote/{id}",method = RequestMethod.GET)  
    public ModelAndView delete(@PathVariable int id){  
        dao.delete(id);  
        return new ModelAndView("redirect:/viewvote");  
    }  
  
}  
