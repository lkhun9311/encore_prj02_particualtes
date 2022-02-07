package Prj02;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PrjDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private final String NAMEANDISSUE_LIST = "select * from districtNameandissueGbn order by issueGbnNumber desc";
	
	public List<PrjVO> getNameandissueList(PrjVO vo){
		List<PrjVO> NameandissueList = new ArrayList<PrjVO>();
		try {
			conn = PrjDBconn.getConnection();
			pstmt = conn.prepareStatement(NAMEANDISSUE_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PrjVO prj = new PrjVO();
				prj.setDistrictName(rs.getString("DISTRICTNAME"));
				prj.setIssueGbnNumber(rs.getInt("ISSUEGBNNUMBER"));
				NameandissueList.add(prj);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			PrjDBconn.close(rs, pstmt ,conn);
		}
	    return NameandissueList;
	}
}
