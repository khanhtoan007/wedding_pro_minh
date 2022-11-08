package model;

public class Content {
    private int contentID;
    private String page;
    private String contentName;
    private String label;
    private String secondLabel;
    private String description;
    private String image;

    public Content(int contentID, String page, String contentName, String label, String secondLabel, String description, String image) {
        this.contentID = contentID;
        this.page = page;
        this.contentName = contentName;
        this.label = label;
        this.secondLabel = secondLabel;
        this.description = description;
        this.image = image;
    }

    public Content() {
    }

    public int getContentID() {
        return contentID;
    }

    public void setContentID(int contentID) {
        this.contentID = contentID;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public String getContentName() {
        return contentName;
    }

    public void setContentName(String contentName) {
        this.contentName = contentName;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getSecondLabel() {
        return secondLabel;
    }

    public void setSecondLabel(String secondLabel) {
        this.secondLabel = secondLabel;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Content{" +
                "contentID=" + contentID +
                ", page='" + page + '\'' +
                ", contentName='" + contentName + '\'' +
                ", label='" + label + '\'' +
                ", secondLabel='" + secondLabel + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
