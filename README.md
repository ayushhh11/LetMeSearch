# LetMeSearch

A web platform that saves time by letting you store, manage, and instantly search your frequently used queries — all from one place.

---

## What It Does

Ever find yourself Googling the same things repeatedly? LetMeSearch lets you save your go-to search queries and access them instantly via a clean, audio-enhanced web interface. No more retyping — just click and go.

---

## Features

- Save and retrieve frequently searched queries
- Audio-guided experience (recorded voice walkthrough — replaceable with your own)
- MySQL-backed persistent storage
- Responsive UI with smooth scroll and FontAwesome icons
- Add and delete queries on the fly

---

## Tech Stack

| Layer      | Technology                        |
|------------|-----------------------------------|
| Frontend   | HTML, CSS, JavaScript, jQuery     |
| Backend    | Java (JSP — JavaServer Pages)     |
| Database   | MySQL                             |
| Icons      | FontAwesome                       |

---

## Getting Started

### Prerequisites

- Java (JDK 8+)
- Apache Tomcat (or any JSP-compatible server)
- MySQL

### Database Setup

Run the following SQL to create the required table:

```sql
CREATE DATABASE letme;

USE letme;

CREATE TABLE letme (
  id   INT AUTO_INCREMENT PRIMARY KEY,
  ques VARCHAR(255) NOT NULL
);
```

### Running the Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/ayushhh11/LetMeSearch.git
   ```

2. **Configure DB connection**  
   Open `db.jsp` and update your MySQL credentials:
   ```jsp
   String url  = "jdbc:mysql://localhost:3306/letme";
   String user = "your_mysql_username";
   String pass = "your_mysql_password";
   ```

3. **Deploy to Tomcat**  
   Copy the project folder into your Tomcat `webapps/` directory and start the server.

4. **Open in browser**
   ```
   http://localhost:8080/LetMeSearch/index.html
   ```

---

## Customise the Audio

The voice walkthrough uses `audio.mp3`, which is currently recorded by the author.  
To replace it with your own voice:

1. Record your audio and export it as `audio.mp3`
2. Replace the existing `audio.mp3` in the root of the project
3. Re-deploy — no other changes needed

---

## Project Structure

```
LetMeSearch/
├── index.html          # Landing page
├── pahele.html         # Pre-load / intro page
├── end.html            # End / confirmation page
├── db.jsp              # Database connection
├── delk.jsp            # Delete query handler
├── err.jsp             # Error page
├── main.css            # Core styles
├── main.js             # Core scripts
├── audio.mp3           # Voice walkthrough
├── banner.jpg          # Banner image
└── ...                 # FontAwesome assets & jQuery libs
```

---

## Contributing

Contributions are welcome! Feel free to fork the repo, make improvements, and open a pull request.

---

## 👤 Author

**Ayush Singh Tomar**  
[LinkedIn](https://www.linkedin.com/in/ayush-singh-tomar-8a2693236) · [GitHub](https://github.com/ayushhh11)

