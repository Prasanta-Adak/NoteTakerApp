package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notes")
public class Note {

	public Note(int id, String titel, String content, Date addedDate) {
		super();
		this.id = id;
		this.titel = titel;
		this.content = content;
		this.addedDate = addedDate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Id
	private int id;
	private String titel;
	@Column(length=1500)
	private String content;
	private Date addedDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitel() {
		return titel;
	}
	public void setTitel(String titel) {
		this.titel = titel;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
}
