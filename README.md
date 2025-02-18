# Movie Booking System

This project is a web-based movie booking system developed using Spring Boot, JSP, and MySQL. Users can book movie tickets, manage show times, and view available movies.

## Features
- User Registration & Authentication
- Movie Listings & Show Timings
- Ticket Booking & Payment Processing
- Admin Panel for Movie Management
- Reports & Booking History

## Prerequisites
Ensure you have the following installed:
- Java (JDK 17+)
- Maven
- MySQL Database
- Eclipse or IntelliJ IDEA

## Installation
1. **Clone the Repository**
```sh
git clone https://github.com/GURUJANARDHANREDDY/movie-booking-system.git
cd movie-booking-system
```

2. **Configure Database**
- Create a MySQL database named `movie_booking`.
- Update `application.properties` with your database credentials:
  ```properties
  spring.datasource.url=jdbc:mysql://localhost:3306/movie_booking
  spring.datasource.username=root
  spring.datasource.password=yourpassword
  ```

3. **Build and Run the Application**
```sh
mvn clean install
mvn spring-boot:run
```

4. **Access the Application**
- Open `http://localhost:9090` in your browser.

## Usage
### **User Features**
- Browse available movies
- Select show time and book tickets
- View booking history

### **Admin Features**
- Add, update, or delete movies
- Manage show timings
- Generate booking reports

## Troubleshooting
### **1. Whitelabel Error Page (404/500)**
- Ensure the server is running: `mvn spring-boot:run`
- Verify database connection and schema setup.

### **2. JSP Not Rendering Properly**
- Ensure you have included necessary dependencies:
  ```xml
  <dependency>
      <groupId>org.apache.tomcat.embed</groupId>
      <artifactId>tomcat-embed-jasper</artifactId>
  </dependency>
  ```

### **3. Login Issues**
- Ensure users are registered correctly in the database.
- Check password encoding configuration in `EncoderConfig.java`.


## License
This project is licensed under the MIT License.

SCREENSHOTS
![WhatsApp Image 2024-12-02 at 13 26 42_12511c7c](https://github.com/user-attachments/assets/52bdb541-79d1-4b50-aa1f-5ef345eca822)
![WhatsApp Image 2024-12-02 at 13 25 53_35bcdcf8](https://github.com/user-attachments/assets/a58c8f33-d38f-4ea8-91a1-0911c4c1dbeb)
![WhatsApp Image 2024-12-02 at 13 24 04_a3e9972a](https://github.com/user-attachments/assets/1d8d117d-ec16-4085-97d3-4bcb02bb508a)
![WhatsApp Image 2024-12-02 at 13 33 20_06a2aec9](https://github.com/user-attachments/assets/a2157b48-b03b-4b08-8ec2-66da376d0b3f)
![WhatsApp Image 2024-12-02 at 13 30 42_6e1d012f](https://github.com/user-attachments/assets/29e916c0-2456-4aa2-b36b-005b803582e6)
![WhatsApp Image 2024-12-02 at 13 25 28_262abc0d](https://github.com/user-attachments/assets/621191e2-4031-4ccb-b1ef-0f66a5b61b6f)
![WhatsApp Image 2024-12-02 at 13 24 56_07a95268](https://github.com/user-attachments/assets/adb8eacf-32da-422a-9990-230a2a0c769f)
![WhatsApp Image 2024-12-02 at 13 33 07_f8415a89](https://github.com/user-attachments/assets/3221f1ec-95f8-4040-a6ae-07f0946d1d4a)
![WhatsApp Image 2024-12-02 at 13 32 13_d447605a](https://github.com/user-attachments/assets/2d6d26f4-2202-4338-9d1d-04d240a473ed)
![WhatsApp Image 2024-12-02 at 13 32 44_c8ffaf3e](https://github.com/user-attachments/assets/8ba5b817-1512-4546-89f2-d644b5b110a2)
![WhatsApp Image 2024-12-02 at 13 31 27_706a5062](https://github.com/user-attachments/assets/60750212-b496-4516-965a-c83835a0d507)
![WhatsApp Image 2024-12-02 at 13 28 15_a6c2e4c3](https://github.com/user-attachments/assets/4bf60b70-515c-454c-9fef-73043a80c984)
![WhatsApp Image 2024-12-02 at 13 29 07_b92c3ec6](https://github.com/user-attachments/assets/60e82310-64d6-4343-98c6-f9d725cd1f6a)
![WhatsApp Image 2024-12-02 at 13 29 51_3bf48c29](https://github.com/user-attachments/assets/2707dc89-a4c2-40ab-813d-737a4aa3fb13)
