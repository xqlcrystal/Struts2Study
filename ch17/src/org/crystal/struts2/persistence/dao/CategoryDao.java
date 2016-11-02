package org.crystal.struts2.persistence.dao;

import com.opensymphony.xwork2.ActionSupport;
import org.crystal.struts2.persistence.entity.Category;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by xieql2 on 2016/11/1.
 */
public class CategoryDao implements ICategoryDao {

    @Override
    public DataSource getDataSource() {
        return dataSource;
    }

    private DataSource dataSource;

    public CategoryDao(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public CategoryDao() {
        Context ctx;

        try {
            ctx=new InitialContext();
            dataSource=(DataSource) ctx.lookup("java:comp/env/jdbc/test");
        }
        catch (NamingException e){
            e.printStackTrace();
        }

    }

    @Override
    public void makepersistent(Category cat){
        if(null!=cat.getId()){
            update(cat);
        }else {
            save(cat);
        }
    }

    @Override
    public Category findbyId(Integer id)
    {
        if(id==null){
            return  null;
        }
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;

        try {
            conn=getDataSource().getConnection();
            String sql="select * from category where id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,id);
            rs=pstmt.executeQuery();
            if(rs.next()){
               Category cat=new Category();
                cat.setId(rs.getInt("id"));
                cat.setName(rs.getString("name"));
                return cat;
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            closeResultSet(rs);
            closePrepareStatement(pstmt);
            closeConnection(conn);

        }
        return  null;

    }

    @Override
    public List<Category> findAll()
    {
       List<Category> categories=new ArrayList<Category>();
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;

        try {
            conn=getDataSource().getConnection();
            String sql="select * from category";
            pstmt=conn.prepareStatement(sql);
            rs=pstmt.executeQuery();
          while (rs.next()){
                Category cat=new Category();
                cat.setId(rs.getInt("id"));
                cat.setName(rs.getString("name"));
               categories.add(cat);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            closeResultSet(rs);
            closePrepareStatement(pstmt);
            closeConnection(conn);

        }
        return  categories;

    }

    @Override
    public void save(Category cat)
    {
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;

        try {
            conn=getDataSource().getConnection();
            String sql="insert into category(name) values(?)";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,cat.getName());
            pstmt.executeUpdate();
            rs=pstmt.executeQuery("select last_insert_id()");
            if(rs.next()){
                cat.setId(rs.getInt(1));
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
           closeResultSet(rs);
          closePrepareStatement(pstmt);
            closeConnection(conn);

        }


    }

    @Override
    public void update(Category cat)
    {
        Connection conn=null;
        PreparedStatement pstmt=null;

        try {
            conn=getDataSource().getConnection();
            String sql="update category set name=? where id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,cat.getName());
            pstmt.setInt(2,cat.getId());
            pstmt.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            closePrepareStatement(pstmt);
            closeConnection(conn);

        }

    }

    @Override
    public void delete(Integer id)
    {
        Connection conn=null;
        PreparedStatement pstmt=null;


        try {
            conn=getDataSource().getConnection();
            String sql="delete category  where id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,id);
            pstmt.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {

            closePrepareStatement(pstmt);
            closeConnection(conn);

        }


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
