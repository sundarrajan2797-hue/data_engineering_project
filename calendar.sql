CREATE TABLE Calendar (
    DateKey INT PRIMARY KEY,
    FullDate DATE NOT NULL,
    DayNumber INT,
    DayName VARCHAR(20),
    MonthNumber INT,
    MonthName VARCHAR(20),
    QuarterNumber INT,
    YearNumber INT,
    WeekNumber INT
);


DECLARE @StartDate DATE = '2025-01-01';
DECLARE @EndDate DATE = '2025-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO Calendar (
        DateKey,
        FullDate,
        DayNumber,
        DayName,
        MonthNumber,
        MonthName,
        QuarterNumber,
        YearNumber,
        WeekNumber
    )
    VALUES (
        CONVERT(INT, FORMAT(@StartDate, 'yyyyMMdd')),
        @StartDate,
        DAY(@StartDate),
        DATENAME(WEEKDAY, @StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate),
        DATEPART(QUARTER, @StartDate),
        YEAR(@StartDate),
        DATEPART(WEEK, @StartDate)
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;

SELECT *
FROM Calendar;