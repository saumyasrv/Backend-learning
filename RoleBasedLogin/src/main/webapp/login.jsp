
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex justify-content-center align-items-center vh-100">
    <form action="LoginServlet" method="post" class="p-4 border rounded shadow">
        <h2 class="mb-3">Login</h2>
        <div class="mb-3">
            <input type="text" name="username" class="form-control" placeholder="Username" required/>
        </div>
        <div class="mb-3">
            <input type="password" name="password" class="form-control" placeholder="Password" required/>
        </div>
        <div class="mb-3">
            <select name="role" class="form-select" required>
                <option value="" disabled selected>Select Role</option>
                <option value="admin">Admin</option>
                <option value="teacher">Teacher</option>
                <option value="student">Student</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
    </form>
</body>
</html>
