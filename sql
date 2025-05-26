CREATE TABLE Courses (
CourseId INT PRIMARY KEY,
CourseName NVARCHAR(50)
);

CREATE TABLE StudentCourses (
Id INT PRIMARY KEY IDENTITY,
StudentId INT FOREIGN KEY REFERENCES Students(Id),
CourseId INT FOREIGN KEY REFERENCES Courses(CourseId)
);

SELECT s.FirstName, s.LastName, c.CourseName
FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON c.CourseId = sc.CourseId;



SqlCommand cmd = new SqlCommand("UPDATE Students SET FirstName=@FirstName, LastName=@LastName WHERE Id=@Id", conn);
cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(txtId.Text));
conn.Open();
cmd.ExecuteNonQuery();
conn.Close();





int id = Convert.ToInt32(txtId.Text);
SqlConnection conn = new SqlConnection("your_connection_string");
SqlCommand cmd = new SqlCommand("DELETE FROM Students WHERE Id=@Id", conn);
cmd.Parameters.AddWithValue("@Id", id);
conn.Open();
cmd.ExecuteNonQuery();
conn.Close();






string connectionString = "your_connection_string";
SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Students", connectionString);
DataTable dt = new DataTable();
da.Fill(dt);
dataGridView1.DataSource = dt;



CREATE TABLE Students (
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
StudentNumber NVARCHAR(20)
);


string connectionString = "your_connection_string";
SqlConnection conn = new SqlConnection(connectionString);
string query = "INSERT INTO Students (FirstName, LastName, StudentNumber) VALUES (@FirstName, @LastName, @StudentNumber)";
SqlCommand cmd = new SqlCommand(query, conn);
cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
cmd.Parameters.AddWithValue("@StudentNumber", txtNumber.Text);
conn.Open();
cmd.ExecuteNonQuery();
conn.Close();
