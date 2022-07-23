CREATE DATABASE BlogPage

USE BlogPage

CREATE TABLE Users
(
	Id int primary key identity,
	Name nvarchar(20),
	Surname nvarchar(20),
	Email varchar(100) not null unique CONSTRAINT Ck_Email CHECK(LEN(Email) >= 4 AND LEN(Email) <= 100)
)

CREATE TABLE Posts
(
	Id int primary key identity,
	Title nvarchar(255),
	PostText nvarchar(500) not null CONSTRAINT Ck_Text CHECK(LEN(PostText) <= 500),
	LikeCount int,
	CreatedAt datetime,
	UserId int references Users(Id)
)


INSERT INTO Users
VALUES
('Ramin', 'Safarli', 'ramin.safarli.kb@gmail.com'),
('Farhad', 'Aghayev', 'farhad.aghayev.std@bhos.edu.az'),
('Azar', 'Zeynalabdiyev', 'azar.zeynalabdiye.std@bhos.edu.az'),
('Akif', 'Guliyev', 'akif.guliyev@gmail.com'),
('Rasim', 'Baghirzada', 'rasim.baghirzada@gmail.com'),
('Ali', 'Valiyev', 'ali.valiyev@gmail.com'),
('Agha', 'Gurbanov', 'agha.gurbanov@gmail.com'),
('Sarkhan', 'Yusifov', 'sarkhan.yusifov@gmail.com'),
('Rashad', 'Aliyev', 'rashad.aliyev@gmail.com'),
('Roya', 'Valehzada', 'roya.valehzada@gmail.com')

INSERT INTO Posts
VALUES
('Title 1', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 300, '2022-06-20 14:26:34', 1),
('Title 2', 'fermentum leo vel orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget nullam non nisi est sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id ', 258, '2022-06-21 12:26:34', 4),
('Title 3', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 1435, '2022-07-20 14:26:34', 1),
('Title 4', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 768, '2021-04-20 14:26:34',5),
('Title 5', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 879, '2022-08-20 14:26:34',3),
('Title 6', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 412, '2019-11-20 14:26:34',8),
('Title 7', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 143, '2022-06-27 14:26:34',9),
('Title 8', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 746, '2018-01-20 14:26:34',10),
('Title 9', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 963, '2022-02-17 14:26:34',7),
('Title 10', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 120, '2022-05-15 14:26:34',6),
('Title 11', 'nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu', 486, '2022-04-11 14:26:34',2)