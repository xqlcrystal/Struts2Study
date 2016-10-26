package org.crystal.struts2.persistence.dao;


import org.crystal.struts2.persistence.entity.User;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by xieql2 on 2016/10/26.
 */
public class UserDao {

    public DataSource getDatasource() {
        return datasource;
    }

    private DataSource datasource;

    public UserDao(DataSource datasource) {
        this.datasource = datasource;
    }

    public UserDao() {
        Context ctx;

        try {
            ctx = new InitialContext();
            datasource = (DataSource) ctx.lookup("java:comp/env/jdbc/test");
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

    public User register(User user) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = getDatasource().getConnection();
            String sql = "insert into reg_user(username,password,sex,email,pwd_question,pwd_answer,reg_date) values(?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            int index=0;
            pstmt.setString(++index,user.getUsername());
            pstmt.setString(++index,user.getPassword());
            pstmt.setBoolean(++index,user.getSex());
            pstmt.setString(++index,user.getEmail());
            pstmt.setString(++index,user.getPwdQuestion());
            pstmt.setString(++index,user.getPwdAnswer());
            pstmt.setTimestamp(++index,new java.sql.Timestamp(user.getRegDate().getTime()));
           pstmt.execute();
            rs =pstmt.executeQuery("select last_insert_id()");
            if(rs.next()){
                user.setId(rs.getInt(1));
            }else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResultSet(rs);
            closePrepareStatement(pstmt);
            closeConnection(conn);
        }

        return user;
    }

    private void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            conn = null;
        }
    }

    private void closePrepareStatement(PreparedStatement pstmt) {
        if (pstmt!=null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            pstmt = null;
        }
    }

    private void closeResultSet(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            rs = null;
        }
    }
}
