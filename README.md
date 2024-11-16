# MOH Medical Courses Admin Dashboard

This Rails application tracks course enrollments for a nursing course. It includes functionalities for admins to create courses and assign tutors. Tutors can log in to view courses assigned to them, while students can enroll in courses.

## Features

- **Admin**: Create courses, assign tutors
- **Tutor**: View assigned courses
- **Student**: Enroll in courses via a form
- **Authentication**: Only existing users can log in

## Getting Started

### Prerequisites

Ensure you have the following installed on your machine:

- **Ruby**: Version 3.0 or higher
- **Rails**: Version 7.0 or higher

### Setup Instructions

1. **Clone the repository**:

   - ```git clone https://github.com/afanimartin/moh-courses.git && cd moh-courses```
2. **Install dependencies**:
   - ```bundle install```
3. **Create and migrate the database**:
   - ```rails db:create```
   - ```rails db:migrate```
   - ```rails db:seed```
4. **Start the Rails server**:
   - ```bin/dev``` or ```rails server```
5. **Visit the application**:
   - Open your web browser and go to ```http://localhost:3000``` to see the application.

