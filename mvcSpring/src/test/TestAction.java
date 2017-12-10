package test;

public class TestAction {
	private String sex;
	private TestBo testBo;
	
	public TestBo getTestBo() {
		return testBo;
	}

	public void setTestBo(TestBo testBo) {
		this.testBo = testBo;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void sayHello(){
		System.out.println("Hello!");
	}
}
