package cn.entity;

public class ResourceEntity {
	private String clazz;
	private String name;
	public String getClazz() {
		return clazz;
	}
	public void setClazz(String clazz) {
		this.clazz = clazz;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ResourceEntity(String clazz,String name){
		this.clazz = clazz;
		this.name = name;
	}
}
