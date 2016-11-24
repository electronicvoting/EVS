package com.hm;

import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate; 
import org.springframework.jdbc.core.RowMapper;  
//import com.hm.beans.Vote;  
  
public class VoteDao {  
JdbcTemplate template;  
  
public void settemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int save(Vote p){  
    String sql="insert into Vote99(firstname,lastname,gender,age,address,username,password)values('"+p.getFname()+"','"+p.getLname()+"','"+p.getGender()+"','"+p.getAge()+"','"+p.getAddress()+"','"+p.getUsername()+"','"+p.getPassword()+"')";  
    return template.update(sql);  
}  
public int update(Vote p){  
    String sql="update Vote99 set firstname='"+p.getFname()+"',lastname='"+p.getLname()+"',gender='"+p.getGender()+"',age='"+p.getAge()+"',address='"+p.getAddress()+"' where id="+p.getId()+"";  
    return template.update(sql);  
}  
public int delete(int id){  
    String sql="delete from Vote99 where id="+id+"";  
    return template.update(sql);  
}  
public List<Vote> getVoteById(int id){  
    String sql="select * from Vote99 where id=" + id;  
    //return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Vote>(Vote.class));
    return template.query(sql,new RowMapper<Vote>(){  
        public Vote mapRow(ResultSet rs, int row) throws SQLException {  
            Vote e=new Vote(); 
            e.setId(rs.getInt(1));  
            e.setFname(rs.getString(2));  
            e.setLname(rs.getString(3));  
            e.setGender(rs.getString(4));  
            e.setAge(rs.getInt(5));  
            e.setAddress(rs.getString(6));  
            e.setUsername(rs.getString(7));  
            e.setPassword(rs.getString(8));  
            return e;  
        }  
    });  
}  

public List<Vote> getVoteloyees(){  
    return template.query("select * from Vote99",new RowMapper<Vote>(){  
        public Vote mapRow(ResultSet rs, int row) throws SQLException {  
            Vote e=new Vote(); 
            e.setId(rs.getInt(1));  
            e.setFname(rs.getString(2));  
            e.setLname(rs.getString(3));  
            e.setGender(rs.getString(4));  
            e.setAge(rs.getInt(5));  
            e.setAddress(rs.getString(6)); 
            e.setUsername(rs.getString(7));  
            e.setPassword(rs.getString(8)); 
            return e;  
        }  
    });  
}  
}  
