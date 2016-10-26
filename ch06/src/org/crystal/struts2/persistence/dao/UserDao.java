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
            String sql = "select * from reg_user";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResultSet(rs);
            closePrepareStatement(pstmt);
            closeConnection(conn);
        }

        return null;
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
