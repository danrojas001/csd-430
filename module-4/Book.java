// Dan Rojas
// Mod 4.2
// 28-Jun-26

package Beans;

import java.time.LocalDate;

public class Book implements java.io.Serializable {

    /*
    required private properties
     */
    private String title;
    private String author;
    private String genre;
    private LocalDate publishDate;

    /*
    required no-args constructor for java bean
     */
    public Book() {
    }

    /*
    convenience constructor
     */
    public Book(String title, String author, String genre, LocalDate publishDate) {
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.publishDate = publishDate;
    }

    /*
    getters and setters
     */

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGenre() {
        return this.genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public LocalDate getPublishDate() {
        return this.publishDate;
    }

    public void setPublishDate(LocalDate publishDate) {
        this.publishDate = publishDate;
    }
}
