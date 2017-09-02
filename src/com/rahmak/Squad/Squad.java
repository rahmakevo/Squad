/**
 * 
 */
package com.rahmak.Squad;

/**
 * @author rahmak
 *
 */
public class Squad {
	private int id;
	private String name;
	private String password;
	private int age;
	private int weakness;
	private int strength;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}
	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}
	/**
	 * @return the weakness
	 */
	public int getWeakness() {
		return weakness;
	}
	/**
	 * @param weakness the weakness to set
	 */
	public void setWeakness(int weakness) {
		this.weakness = weakness;
	}
	/**
	 * @return the strength
	 */
	public int getStrength() {
		return strength;
	}
	/**
	 * @param strength the strength to set
	 */
	public void setStrength(int strength) {
		this.strength = strength;
	}
	/**
	 * @param name
	 * @param password
	 * @param age
	 * @param weakness
	 * @param strength
	 */
	public Squad(String name, String password, int age, int weakness, int strength) {
		this.name = name;
		this.password = password;
		this.age = age;
		this.weakness = weakness;
		this.strength = strength;
	}
	/**
	 * 
	 */
	public Squad() {
	}
	/**
	 * @param id
	 * @param name
	 * @param password
	 * @param age
	 * @param weakness
	 * @param strength
	 */
	public Squad(int id, String name, String password, int age, int weakness, int strength) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.age = age;
		this.weakness = weakness;
		this.strength = strength;
	}
	
	

}
