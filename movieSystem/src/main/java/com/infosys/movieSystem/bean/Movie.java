package com.infosys.movieSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Movie {

    @Id
    private String movieId;
    private String movieName;
    private String language;
    private String genre;
    private Integer duration;
    private Double ratings;
    private String url;
    private String videoUrl;  // Added videoUrl field

    // Default Constructor
    public Movie() {
        super();
    }

    // Constructor with movieId
    public Movie(String movieId) {
        super();
        this.movieId = movieId;
    }

    // Constructor with all fields (including videoUrl)
    public Movie(String movieId, String movieName, String language, String genre, Integer duration, Double ratings, String url, String videoUrl) {
        super();
        this.movieId = movieId;
        this.movieName = movieName;
        this.language = language;
        this.genre = genre;
        this.duration = duration;
        this.ratings = ratings;
        this.url = url;
        this.videoUrl = videoUrl;  // Initialize videoUrl properly
    }

    // Getters and Setters
    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Double getRatings() {
        return ratings;
    }

    public void setRatings(Double ratings) {
        this.ratings = ratings;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    // toString Method
    @Override
    public String toString() {
        return "Movie [movieId=" + movieId + ", movieName=" + movieName + ", language=" + language + ", genre=" + genre
                + ", duration=" + duration + ", ratings=" + ratings + ", url=" + url + ", videoUrl=" + videoUrl + "]";
    }

    public double getTicketPrice() {
        // Placeholder for ticket price calculation logic
        return 0;
    }

    // Uncommented example of generating a new movie ID
    // You would typically move this logic to a service class
    /*
    public String generateMovieId(MovieRepository repository) {
        String lastId = repository.getLastId();
        long id = 0L;
        if (lastId == null) {
            id = 100001L;
        } else {
            id = Long.parseLong(lastId.substring(1));
            id++;
        }
        return "M" + id;
    }
    */
}
