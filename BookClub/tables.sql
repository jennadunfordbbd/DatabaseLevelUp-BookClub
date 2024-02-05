CREATE TABLE members (
    memberID int,
    memberName varchar(255),
    memberSurname varchar(255),
	memberEmail varchar(255),
	memberCellNumber varchar(255)
);

CREATE TABLE memberPreferences (
	memberID int,
	preferredGenre varchar(255),
	favoriteBook varchar(255)
);

CREATE TABLE books (
	bookID int,
	bookName varchar(255),
	bookAuthor varchar(255),
	datePublished DATE,
	bookGenre varchar(255),
	bookPrice varchar (255), --What data type for currency??
	bookRating int --A rating out of 5 or 10? 
	);

CREATE TABLE hosts (
	hostID int,
	memberID int,
	hostAddress varchar(255),
	weekDayAvailable varChar(255),

)

CREATE TABLE meetings (
	meetingID int,
	meetingDate DATE,
	hostID int,
	numberAttendees int,
	bookID int
)

CREATE TABLE discussionNotes ( --Could also call this "comments"
	discussionID int,
	memberID int, --Who made this discussion
	discussionContent varchar(255), --How should we store the content of a discussion? In a text file? In a very long string?
	meetingID int --To see which meeting discussion relates to, can get book from here
)