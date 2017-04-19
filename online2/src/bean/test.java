package bean;

import static org.junit.Assert.*;

import org.junit.Test;

public class test {

	
	
	@Test
	public void test_examdetail()
	{
		ExamDetail d = new ExamDetail();
		d.setid(1);
		d.setName("akash");
		assertEquals("akash",d.getName());
		
		d.setDept("cse");
		assertEquals("cse",d.getDept());
		
	}

	@Test
	public void test_examdeta()
	{
		ExamDetail d = new ExamDetail();
		
		
		d.setDept("cse");
		assertEquals("cse",d.getDept());
		
	}

	@Test
	public void test_examdetai()
	{
		ExamDetail d = new ExamDetail();

		
		d.setSub1("math");
		assertEquals("math",d.getSub1());
		
	}
	@Test
	public void test_examdet()
	{
		ExamDetail d = new ExamDetail();

		
		d.setSub2("che");
		assertEquals("che",d.getSub2());
		
	}
	@Test
	public void test_examd()
	{
		ExamDetail d = new ExamDetail();

		
		d.setSub3("phy");
		assertEquals("phy",d.getSub3());
		
	}
	
	@Test
	public void test_data()
	{
		Data da = new Data();
		da.seti(1);
		
		
		assertEquals(Integer.valueOf(1),da.geti());

	}
	
}
