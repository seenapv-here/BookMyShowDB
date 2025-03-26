# 🎟️ BookMyShow Database Project  

This project defines the database schema and SQL scripts for a **movie ticket booking system** similar to BookMyShow. The system allows users to view and book movie shows at various theatres.  

---

## 📌 **Project Structure**  

```
📺 bookmyshow-db
 ├── 📄 README.md          # Project documentation
 ├── 📄 bookmyshow_db.sql  # SQL script to create database tables
 ├── 📄 sample_data.sql    # SQL script to insert sample data
 ├── 📄 queries.sql        # SQL queries to fetch data
```

---

## 🏠 **Database Schema**  

The project follows **1NF, 2NF, 3NF, and BCNF** normalization rules.  

### **1️⃣ Theatre Table**  
Stores theatre details.  
```sql
CREATE TABLE Theatre (
    theatre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);
```

### **2️⃣ Movie Table**  
Stores movie details.  
```sql
CREATE TABLE Movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    language VARCHAR(50) NOT NULL,
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 10)
);
```

### **3️⃣ ShowDetails Table**  
Stores movie show information.  
```sql
CREATE TABLE ShowDetails (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    theatre_id INT NOT NULL,
    show_date DATE NOT NULL,
    show_time TIME NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id)
);
```
---

🚀 **Happy Coding!** 🎮  

