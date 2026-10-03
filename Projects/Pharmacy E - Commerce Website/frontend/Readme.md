Pharmacy E-Commerce with Prescription Validation — Frontend

1. Overview
This is the frontend application for the Pharmacy E-Commerce with Prescription Validation project.
The frontend is developed using React.js and provides the user interface for customers, pharmacists, and administrators.
The application communicates with the Node.js and Express.js backend through REST APIs and displays data received from the MySQL database.
2. Technology Stack
React.js — Frontend library
Vite — Development and build tool
React Router DOM — Client-side routing
JavaScript — Application logic
HTML5 — Page structure
CSS3 — Styling and responsive design
Fetch API — Backend API communication
3. Frontend Architecture
                    React Application
                           |
          ┌────────────────┼────────────────┐
          ↓                ↓                ↓
       Customer        Pharmacist         Admin
          |                |                |
          └────────────────┼────────────────┘
                           ↓
                    REST API Requests
                           ↓
                 Node.js + Express Backend
                           ↓
                       MySQL Database
4. Project Structure
frontend/
│
├── public/
│
├── src/
│   ├── assets/
│   │
│   ├── components/
│   │
│   ├── pages/
│   │
│   ├── App.jsx
│   ├── App.css
│   ├── main.jsx
│   └── index.css
│
├── package.json
├── package-lock.json
├── vite.config.js
└── README.md
5. Main Pages
The frontend provides the following main pages and interfaces.
Home / Hero Page
The home page is the initial public page of the application.
It contains:
PharmaCare branding
Navigation bar
Hero section
Medicine search
Medicine categories
Medicine cards
Features section
About section
Footer
Users can access the hero page without logging in.
Login
The login page allows users to authenticate using:
Email
Password
After successful login, the user is redirected according to their role.
CUSTOMER
    ↓
Home

PHARMACIST
    ↓
Pharmacist Dashboard

ADMIN
    ↓
Admin Dashboard
Registration
New users can create an account by providing:
Full name
Email
Password
Role
Available roles:
CUSTOMER
PHARMACIST
ADMIN
6. Customer Features
Customers can:
Browse medicines
Search medicines
Filter medicines by category
Add medicines to cart
View cart
Checkout
Upload prescriptions
Make payments
View previous orders
Logout
7. Medicine Browsing
The home page retrieves medicine information from the backend API.
Example API:
GET /api/medicines
The frontend displays:
Medicine name
Description
Category
Price
Prescription requirement
Available stock
8. Shopping Cart
Customers can add medicines to the shopping cart.
The cart manages:
Selected medicines
Quantity
Price
Total amount
The user can review the cart before proceeding to checkout.
9. Prescription Workflow
Some medicines require a valid prescription.
The frontend checks whether a medicine requires a prescription.
The workflow is:
Select Medicine
      ↓
Checkout
      ↓
Prescription Required?
      ↓
Upload Prescription
      ↓
Pharmacist Review
      ↓
Approved / Rejected
      ↓
Continue Order
Prescription files are uploaded to the backend using FormData.
10. Pharmacist Dashboard
The pharmacist interface allows pharmacists to manage submitted prescriptions.
Main functions:
View pending prescriptions
View prescription details
View uploaded prescription files
Approve prescription
Reject prescription
The pharmacist dashboard communicates with the prescription APIs provided by the backend.
11. Admin Dashboard
The administrator interface provides administrative functions.
Main features:
View users
View medicines
Add medicines
Update medicine information
Delete medicines
Manage inventory
Only users with the ADMIN role can access the admin dashboard.
12. Role-Based Navigation
The frontend displays different navigation options depending on the logged-in user's role.
