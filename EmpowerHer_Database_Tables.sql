
-- ==========================================
-- 1. USERS
-- Registration, login and user profiles
-- ==========================================
CREATE TABLE Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(150) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    MobileNumber NVARCHAR(20),
    VillageCity NVARCHAR(100),
    State NVARCHAR(100),
    Pincode NVARCHAR(10),
    DateOfBirth DATE,
    Gender NVARCHAR(20),
    AboutMe NVARCHAR(1000),
    Role NVARCHAR(20) NOT NULL DEFAULT 'User',
    Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
    JoinedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT CK_Users_Role
        CHECK (Role IN ('User', 'Admin')),

    CONSTRAINT CK_Users_Status
        CHECK (Status IN ('Active', 'Inactive', 'Blocked'))
);


-- ==========================================
-- 2. PRODUCTS
-- Handmade products listed by users
-- ==========================================
CREATE TABLE Products (
    ProductId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(150) NOT NULL,
    Category NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(10,2) NOT NULL,
    ImageUrl NVARCHAR(500),
    SellerId INT NOT NULL,
    Status NVARCHAR(20) NOT NULL DEFAULT 'Pending',
    CreatedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Products_Users
        FOREIGN KEY (SellerId) REFERENCES Users(UserId),

    CONSTRAINT CK_Products_Price
        CHECK (Price >= 0),

    CONSTRAINT CK_Products_Status
        CHECK (Status IN ('Pending', 'Approved', 'Rejected', 'Inactive'))
);


-- ==========================================
-- 3. GOVERNMENT SCHEMES
-- ==========================================
CREATE TABLE GovernmentSchemes (
    SchemeId INT IDENTITY(1,1) PRIMARY KEY,
    SchemeName NVARCHAR(200) NOT NULL,
    Category NVARCHAR(100),
    Description NVARCHAR(MAX),
    Eligibility NVARCHAR(MAX),
    Benefits NVARCHAR(MAX),
    ApplicationUrl NVARCHAR(500),
    Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
    CreatedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT CK_GovernmentSchemes_Status
        CHECK (Status IN ('Active', 'Inactive'))
);


-- ==========================================
-- 4. SCHEME APPLICATIONS (OPTIONAL)
-- Tracks a user's application for a scheme
-- ==========================================
CREATE TABLE SchemeApplications (
    ApplicationId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    SchemeId INT NOT NULL,
    ApplicationDate DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    Status NVARCHAR(30) NOT NULL DEFAULT 'Applied',

    CONSTRAINT FK_SchemeApplications_Users
        FOREIGN KEY (UserId) REFERENCES Users(UserId),

    CONSTRAINT FK_SchemeApplications_Schemes
        FOREIGN KEY (SchemeId) REFERENCES GovernmentSchemes(SchemeId),

    CONSTRAINT UQ_SchemeApplications_User_Scheme
        UNIQUE (UserId, SchemeId)
);


-- ==========================================
-- 5. COURSES
-- ==========================================
CREATE TABLE Courses (
    CourseId INT IDENTITY(1,1) PRIMARY KEY,
    CourseTitle NVARCHAR(200) NOT NULL,
    Category NVARCHAR(100),
    Description NVARCHAR(MAX),
    ThumbnailUrl NVARCHAR(500),
    Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
    CreatedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT CK_Courses_Status
        CHECK (Status IN ('Active', 'Inactive'))
);


-- ==========================================
-- 6. COURSE LESSONS
-- One course can contain many lessons
-- ==========================================
CREATE TABLE CourseLessons (
    LessonId INT IDENTITY(1,1) PRIMARY KEY,
    CourseId INT NOT NULL,
    LessonTitle NVARCHAR(200) NOT NULL,
    Content NVARCHAR(MAX),
    VideoUrl NVARCHAR(500),
    LessonNumber INT NOT NULL DEFAULT 1,

    CONSTRAINT FK_CourseLessons_Courses
        FOREIGN KEY (CourseId) REFERENCES Courses(CourseId),

    CONSTRAINT CK_CourseLessons_Number
        CHECK (LessonNumber > 0),

    CONSTRAINT UQ_CourseLessons_Number
        UNIQUE (CourseId, LessonNumber)
);


-- ==========================================
-- 7. COURSE ENROLLMENTS
-- Which user has enrolled in which course
-- ==========================================
CREATE TABLE CourseEnrollments (
    EnrollmentId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    CourseId INT NOT NULL,
    EnrollmentDate DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    Status NVARCHAR(20) NOT NULL DEFAULT 'Enrolled',
    CompletedOn DATETIME2 NULL,

    CONSTRAINT FK_CourseEnrollments_Users
        FOREIGN KEY (UserId) REFERENCES Users(UserId),

    CONSTRAINT FK_CourseEnrollments_Courses
        FOREIGN KEY (CourseId) REFERENCES Courses(CourseId),

    CONSTRAINT UQ_CourseEnrollments_User_Course
        UNIQUE (UserId, CourseId),

    CONSTRAINT CK_CourseEnrollments_Status
        CHECK (Status IN ('Enrolled', 'InProgress', 'Completed'))
);


-- ==========================================
-- 8. FINANCIAL LITERACY TOPICS
-- ==========================================
CREATE TABLE FinancialLiteracyTopics (
    TopicId INT IDENTITY(1,1) PRIMARY KEY,
    TopicTitle NVARCHAR(200) NOT NULL,
    Category NVARCHAR(100) NOT NULL,
    Content NVARCHAR(MAX),
    ImageUrl NVARCHAR(500),
    Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
    CreatedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT CK_FinancialTopics_Status
        CHECK (Status IN ('Active', 'Inactive'))
);


-- ==========================================
-- 9. NOTIFICATIONS
-- ==========================================
CREATE TABLE Notifications (
    NotificationId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL,
    Message NVARCHAR(MAX) NOT NULL,
    Type NVARCHAR(50) NOT NULL DEFAULT 'General',
    SendTo NVARCHAR(30) NOT NULL DEFAULT 'All Users',
    CreatedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT CK_Notifications_SendTo
        CHECK (SendTo IN ('All Users', 'Selected Users'))
);


-- ==========================================
-- 10. USER NOTIFICATIONS
-- Tracks delivery/read status for each user
-- ==========================================
CREATE TABLE UserNotifications (
    UserNotificationId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    NotificationId INT NOT NULL,
    IsRead BIT NOT NULL DEFAULT 0,
    ReadOn DATETIME2 NULL,

    CONSTRAINT FK_UserNotifications_Users
        FOREIGN KEY (UserId) REFERENCES Users(UserId),

    CONSTRAINT FK_UserNotifications_Notifications
        FOREIGN KEY (NotificationId)
        REFERENCES Notifications(NotificationId),

    CONSTRAINT UQ_UserNotifications_User_Notification
        UNIQUE (UserId, NotificationId)
);


-- ==========================================
-- 11. TESTIMONIALS
-- Feedback displayed on the home page
-- ==========================================
CREATE TABLE Testimonials (
    TestimonialId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NULL,
    DisplayName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100),
    Feedback NVARCHAR(MAX) NOT NULL,
    Rating TINYINT NULL,
    Status NVARCHAR(20) NOT NULL DEFAULT 'Pending',
    CreatedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Testimonials_Users
        FOREIGN KEY (UserId) REFERENCES Users(UserId),

    CONSTRAINT CK_Testimonials_Rating
        CHECK (Rating IS NULL OR Rating BETWEEN 1 AND 5),

    CONSTRAINT CK_Testimonials_Status
        CHECK (Status IN ('Pending', 'Approved', 'Rejected'))
);


-- ==========================================
-- 12. CONTACT MESSAGES
-- Messages submitted through Contact Us
-- ==========================================
CREATE TABLE ContactMessages (
    ContactMessageId INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(150) NOT NULL,
    Subject NVARCHAR(200) NOT NULL,
    Message NVARCHAR(MAX) NOT NULL,
    Status NVARCHAR(20) NOT NULL DEFAULT 'New',
    SubmittedOn DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT CK_ContactMessages_Status
        CHECK (Status IN ('New', 'Read', 'Replied', 'Closed'))
);
