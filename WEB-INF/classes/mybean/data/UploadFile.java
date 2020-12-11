package mybean.data;

public class UploadFile{
	String savedFileName = "",backNews ="";

	public UploadFile(){
		super();
	}
	public void setSavedFileName(String name){
		this.savedFileName = name;
	}
	public String getSavedFileName(){
		return savedFileName;
	}

	public void setBackNews(String s){
		this.backNews = s;
	}
	public String getBackNews(){
		return backNews;
	}
}
