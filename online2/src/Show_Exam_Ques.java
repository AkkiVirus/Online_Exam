import bean.ExamDetail;
import bean.QuesList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


// This Class is mainly to show all questions from DB , dont go on name
public class Show_Exam_Ques extends HttpServlet {

    Connection conn;
    DatabaseConnection dbconn;
    String query;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("())text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        ExamDetail exd ;

        exd = (ExamDetail)req.getSession().getAttribute("ExamDetails");

        query = "select * from questions where subject in (\""+exd.getSub1() + "\",\"" + exd.getSub2() + "\",\"" + exd.getSub3() + "\")";
        dbconn = new DatabaseConnection();
        conn = dbconn.setConnection();
        ResultSet res;
        res = dbconn.getResult(query,conn);
        try {
            req.getSession().setAttribute("questions", getResult(res));
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        RequestDispatcher rd = req.getRequestDispatcher("ViewExamQn.jsp");/*SEE*/
        rd.forward(req,resp);
    }

    private ArrayList<QuesList> getResult(ResultSet rs) throws SQLException {
        ArrayList<QuesList> result = new ArrayList<QuesList>();
        while (rs.next()) {
            QuesList ql = new QuesList();
            ql.setQuestion(rs.getString("question"));
            ql.setOp1(rs.getString("option1"));
            ql.setOp2(rs.getString("option2"));
            ql.setOp3(rs.getString("option3"));
            ql.setOp4(rs.getString("option4"));
            ql.setFac_name(rs.getString("quesBy"));
            ql.setSubject(rs.getString("subject"));
            ql.setMarks(rs.getInt("marks"));
            ql.setquesid(rs.getInt("ques_id"));
            ql.setRight_op(rs.getInt("right_op"));
            ql.setDifficulty(rs.getInt("difficulty"));
            ql.setAnswered("answered");

            //int temp = rs.getInt("quantity");
            // ed.setId(temp);
            /*if(temp!=0)
            {
                ed.setQuantity("Available");
            }
            else{
                ed.setQuantity("Not Available");
            }*/
            result.add(ql);
        }

        return result;
    }
}
