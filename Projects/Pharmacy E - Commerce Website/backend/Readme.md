Pharmacy E-Commerce with Prescription Validation — Backend
1. Overview
This is the backend API for the Pharmacy E-Commerce with Prescription Validation project.
The backend is developed using Node.js and Express.js and provides REST APIs for the React frontend. It connects with a MySQL database to manage users, medicines, inventory, prescriptions, orders, and payments.
The system also implements JWT authentication and role-based authorization for Customers, Pharmacists, and Administrators.
2. Technology Stack
Node.js — JavaScript runtime
Express.js — Backend web framework
MySQL — Relational database
mysql2 — MySQL connectivity
JWT (JSON Web Token) — Authentication
bcryptjs — Password hashing
Multer — Prescription file upload
CORS — Communication between frontend and backend
dotenv — Environment variable management
Postman — API testing
3. Backend Architecture
React Frontend
       |
       | HTTP Requests
       ↓
Node.js + Express.js
       |
       ├── User Routes
       ├── Medicine Routes
       ├── Prescription Routes
       ├── Order Routes
       └── Payment Routes
       |
       ↓
Authentication & Authorization
       |
       ↓
MySQL Database
4. Project Structure
backend/
│
├── config/
│   └── db.js
│
├── middleware/
│   └── authMiddleware.js
│
├── routes/
│   ├── medicineRoutes.js
│   ├── userRoutes.js
│   ├── prescriptionRoutes.js
│   ├── orderRoutes.js
│   └── paymentRoutes.js
│
├── uploads/
│
├── server.js
├── package.json
├── package-lock.json
└── README.md
5. API Modules
Users
Base URL:
/api/users
Handles:
User registration
User login
Authentication
User information
Role-based access
Supported roles:
CUSTOMER
PHARMACIST
ADMIN
Medicines
Base URL:
/api/medicines
Handles:
View medicines
View medicine by ID
Add medicine
Update medicine
Delete medicine
Manage medicine inventory
Medicine information includes:
Medicine name
Description
Category
Price
Prescription requirement
Prescriptions
Base URL:
/api/prescriptions
Handles:
Prescription upload
View customer prescriptions
View pending prescriptions
Approve prescription
Reject prescription
Prescription files are uploaded using Multer.
Allowed file types:
JPG
JPEG
PNG
PDF
Orders
Base URL:
/api/orders
Handles:
Creating orders
Viewing customer orders
Managing order information
Connecting orders with medicines and prescriptions
Order statuses include:
PENDING
CONFIRMED
PROCESSING
SHIPPED
DELIVERED
CANCELLED
Payments
Base URL:
/api/payments
Handles:
Payment creation
Payment information
Payment status
Supported payment methods:
CARD
UPI
COD
6. Authentication
The backend uses JWT-based authentication.
Login Flow
User enters email and password
          ↓
POST /api/users/login
          ↓
Backend checks MySQL
          ↓
Password verification
          ↓
JWT generated
          ↓
Token returned to frontend
          ↓
Frontend stores token
The token is sent with protected API requests using:
Authorization: Bearer <token>
7. Role-Based Authorization
The backend provides different access levels based on the user's role.
Customer
Customers can:
Browse medicines
Add medicines to cart
Upload prescriptions
Place orders
Make payments
View their orders
Pharmacist
Pharmacists can:
View pending prescriptions
View uploaded prescription files
Approve prescriptions
Reject prescriptions
Administrator
Administrators can:
Manage users
Add medicines
Update medicines
Delete medicines
Manage inventory
8. Middleware
The project uses authentication and authorization middleware.
Authentication Middleware
authenticateToken verifies whether the JWT provided by the client is valid.
If the token is missing:
401 Unauthorized
If the token is invalid or expired:
403 Forbidden
Authorization Middleware
authorizeRoles() checks whether the authenticated user has permission to access a particular route.
For example:
ADMIN → Admin APIs
PHARMACIST → Prescription APIs
CUSTOMER → Customer APIs
9. Prescription Upload
Prescription files are handled using Multer.
The frontend sends the prescription using:
multipart/form-data
The backend receives the file and stores it in:
uploads/
