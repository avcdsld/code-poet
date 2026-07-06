-- Every morning I am here

SELECT   self.day, other.reply
FROM     days   self
LEFT JOIN replies other
  ON     self.reached = other.heard
ORDER BY self.day;
