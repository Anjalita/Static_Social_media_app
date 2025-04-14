To add the MIT License to your project, you can follow these steps:

1. **Create a LICENSE file:**
   In the root of your project directory (where `README.md` is), create a new file named `LICENSE`.

2. **Add the MIT License text:**
   Inside the `LICENSE` file, add the following text:

   ```text
   MIT License

   Copyright (c) [year] [Your Name or Organization]

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
   ```

3. **Update the `README.md`:**
   To indicate that your project uses the MIT License, add a **License** section to your `README.md`:

   ```markdown
   ## License

   This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
   ```

---

This will properly add the MIT License to your project and update your `README.md` to reference it. 

---

### Full Example of Your Updated `README.md`:

```markdown
# **Static_Social_media_app**

This project is a ReactJS-based static social media platform where users can interact with posts through likes, comments, and shares. It showcases a component-based architecture for scalability and clean design, providing an intuitive user experience.

---

## **Installation**

### **Prerequisites**
- Node.js and npm installed on your machine. You can download them from [Node.js official website](https://nodejs.org/).

### Steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/Anjalita/Static_Social_media_app
   ```

2. Navigate to the project directory:
   ```bash
   cd Static_Social_Media_App
   ```

3. Open the project in VS Code:
   ```bash
   code .
   ```

4. Open a new terminal in VS Code. Click on the split terminal button to create two terminals.
    - In the first terminal, navigate to the API directory:
      ```bash
      cd api
      ```
    - In the second terminal, navigate to the client directory:
      ```bash
      cd client
      ```

5. Install dependencies in both directories:
   ```bash
   npm install
   ```

6. Start the development server:
   ```bash
   npm start
   ```
   The application will open in your default browser at http://localhost:3000.

---

## **Database Setup**

1. **Start XAMPP:**
   - Open the XAMPP control panel.
   - Start the Apache and MySQL services.

2. **Access phpMyAdmin:**
   - Open your browser and go to [http://localhost/phpmyadmin](http://localhost/phpmyadmin).

3. **Create a new database:**
   - Click on "Databases" in the top menu.
   - Enter a name for the database, for example, `social_media`.
   - Click "Create".

4. **Import the SQL file:**
   - Click on the newly created database from the left sidebar.
   - Choose "Import" from the top menu.
   - Click "Choose File" and select the `social.sql` file from the repository.
   - Click "Go" to import the data into the database.

---

## **Usage**

Access the Project:

Open your browser and navigate to http://localhost:3000 to access the project.

![image](https://github.com/Anjalita/Static_Social_media_app/assets/96990535/a906cff3-ab1c-4d6b-a001-2e0a0fc4563b)  
![image](https://github.com/Anjalita/Static_Social_media_app/assets/96990535/6e20e2bf-f5d1-4053-a33c-dfe3c1c08fdb)

![Screenshot 2024-07-03 210911](https://github.com/Anjalita/Static_Social_media_app/assets/96990535/fa1303f1-007f-41ff-90b7-e8d9e9b72f58)

---

## **License**

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
