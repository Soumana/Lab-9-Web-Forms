USE ssylla_db;
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE team(team_id INT AUTO_INCREMENT UNIQUE, team_name VARCHAR(100) PRIMARY KEY,
team_state VARCHAR(100), 
FOREIGN KEY (team_state) REFERENCES state(state_name) ON DELETE CASCADE); 


CREATE TABLE player(player_id INT AUTO_INCREMENT UNIQUE, first_name VARCHAR(100), 
last_name VARCHAR(100), player_team VARCHAR(100),
jersey_number INT, position VARCHAR(100), height VARCHAR(100), weight VARCHAR(100),
FOREIGN KEY (player_team) REFERENCES team(team_name) ON DELETE CASCADE); 


CREATE TABLE owner(owner_id INT AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(100), 
last_name VARCHAR(100), owner_team VARCHAR(100),
FOREIGN KEY (owner_team) REFERENCES team(team_name) ON DELETE CASCADE); 


CREATE TABLE state(state_id INT AUTO_INCREMENT UNIQUE, state_name VARCHAR(100) PRIMARY KEY); #1




select * from state;
INSERT INTO state(state_name) VALUES ('Alabama');
INSERT INTO state(state_name) VALUES ('Alaska');
INSERT INTO state(state_name) VALUES ('Arizona');
INSERT INTO state(state_name) VALUES ('Arkansas');
INSERT INTO state(state_name) VALUES ('California');
INSERT INTO state(state_name) VALUES ('Colorado');
INSERT INTO state(state_name) VALUES ('Connecticut');
INSERT INTO state(state_name) VALUES ('Delaware');
INSERT INTO state(state_name) VALUES ('Florida');
INSERT INTO state(state_name) VALUES ('Georgia');
INSERT INTO state(state_name) VALUES ('Hawaii');
INSERT INTO state(state_name) VALUES ('Idaho');
INSERT INTO state(state_name) VALUES ('Illinois');
INSERT INTO state(state_name) VALUES ('Indiana');
INSERT INTO state(state_name) VALUES ('Iowa');
INSERT INTO state(state_name) VALUES ('Kansas');
INSERT INTO state(state_name) VALUES ('Kentucky');
INSERT INTO state(state_name) VALUES ('Louisiana');
INSERT INTO state(state_name) VALUES ('Maine');
INSERT INTO state(state_name) VALUES ('Maryland');
INSERT INTO state(state_name) VALUES ('Massachusetts');
INSERT INTO state(state_name) VALUES ('Michigan');
INSERT INTO state(state_name) VALUES ('Minnesota');
INSERT INTO state(state_name) VALUES ('Mississippi');
INSERT INTO state(state_name) VALUES ('Missouri');
INSERT INTO state(state_name) VALUES ('Montana');
INSERT INTO state(state_name) VALUES ('Nebraska');
INSERT INTO state(state_name) VALUES ('Nevada');
INSERT INTO state(state_name) VALUES ('New Hampshire');
INSERT INTO state(state_name) VALUES ('New Jersey');
INSERT INTO state(state_name) VALUES ('New Mexico');
INSERT INTO state(state_name) VALUES ('New York');
INSERT INTO state(state_name) VALUES ('North Carolina');
INSERT INTO state(state_name) VALUES ('North Dakota');
INSERT INTO state(state_name) VALUES ('Ohio');
INSERT INTO state(state_name) VALUES ('Oklahoma');
INSERT INTO state(state_name) VALUES ('Oregon');
INSERT INTO state(state_name) VALUES ('Pennsylvania');
INSERT INTO state(state_name) VALUES ('Rhode Island');
INSERT INTO state(state_name) VALUES ('South Carolina');
INSERT INTO state(state_name) VALUES ('South Dakota');
INSERT INTO state(state_name) VALUES ('Tennessee');
INSERT INTO state(state_name) VALUES ('Texas');
INSERT INTO state(state_name) VALUES ('Utah');
INSERT INTO state(state_name) VALUES ('Vermont');
INSERT INTO state(state_name) VALUES ('Virginia');
INSERT INTO state(state_name) VALUES ('Washington');
INSERT INTO state(state_name) VALUES ('West Virginia');
INSERT INTO state(state_name) VALUES ('Wisconsin');
INSERT INTO state(state_name) VALUES ('Wyoming');
INSERT INTO state(state_name) VALUES ('Canada');




select * from player;
INSERT INTO team(team_name, team_state) VALUES('Atlanta Hawks', 'Georgia');
INSERT INTO team(team_name, team_state) VALUES('Boston Celtics', 'Massachusetts');
INSERT INTO team(team_name, team_state) VALUES('Brooklyn Nets', 'New York');
INSERT INTO team(team_name, team_state) VALUES('Charlotte Hornets', 'North Carolina');
INSERT INTO team(team_name, team_state) VALUES('Chicago Bulls', 'Illinois');
INSERT INTO team(team_name, team_state) VALUES('Cleveland Cavaliers', 'Ohio');
INSERT INTO team(team_name, team_state) VALUES('Dallas Mavericks', 'Texas');
INSERT INTO team(team_name, team_state) VALUES('Denver Nuggets', 'Colorado');
INSERT INTO team(team_name, team_state) VALUES('Detroit Pistons', 'Michigan');
INSERT INTO team(team_name, team_state) VALUES('Golden State Warriors', 'California');
INSERT INTO team(team_name, team_state) VALUES('Houston Rockets', 'Texas');
INSERT INTO team(team_name, team_state) VALUES('Indiana Pacers', 'Indiana');
INSERT INTO team(team_name, team_state) VALUES('LA Clippers', 'California');
INSERT INTO team(team_name, team_state) VALUES('Los Angeles Lakers', 'California');
INSERT INTO team(team_name, team_state) VALUES('Memphis Grizzlies', 'Tennessee');
INSERT INTO team(team_name, team_state) VALUES('Miami Heat', 'Florida');
INSERT INTO team(team_name, team_state) VALUES('Milwaukee Bucks', 'Wisconsin');
INSERT INTO team(team_name, team_state) VALUES('Minnesota Timberwolves', 'Minnesota');
INSERT INTO team(team_name, team_state) VALUES('New Orleans Pelicans', 'Louisiana');
INSERT INTO team(team_name, team_state) VALUES('New York Knicks', 'New York');
INSERT INTO team(team_name, team_state) VALUES('Oklahoma City Thunder', 'Oklahoma');
INSERT INTO team(team_name, team_state) VALUES('Orlando Magic', 'Florida');
INSERT INTO team(team_name, team_state) VALUES('Philadelphia 76ers', 'Pennsylvania');
INSERT INTO team(team_name, team_state) VALUES('Phoenix Suns', 'Arizona');
INSERT INTO team(team_name, team_state) VALUES('Portland Trail Blazers', 'Oregon');
INSERT INTO team(team_name, team_state) VALUES('Sacramento Kings', 'California');
INSERT INTO team(team_name, team_state) VALUES('San Antonio Spurs', 'Texas');
INSERT INTO team(team_name, team_state) VALUES('Toronto Raptors', 'Canada');
INSERT INTO team(team_name, team_state) VALUES('Utah Jazz', 'Utah');
INSERT INTO team(team_name, team_state) VALUES('Washington Wizards', 'Washington');


select * from player;
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kent', 'Bazemore', 'Atlanta Hawks', 24, 'Guard', '6 ft 5 in', '201 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('DeAndre`', 'Bembry', 'Atlanta Hawks', 95, 'Forward-Guard', '6 ft 6 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyler', 'Cavanaugh', 'Atlanta Hawks', 34, 'Forward', '6 ft 9 in', '238 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Antonius', 'Cleveland', 'Atlanta Hawks', 0, 'Guard', '6 ft 6 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('John', 'Collins', 'Atlanta Hawks', 20, 'Forward-Center', '6 ft 10 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dewayne', 'Dedmon', 'Atlanta Hawks', 14, 'Center', '7 ft 0 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Malcolm', 'Delaney', 'Atlanta Hawks', 5, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyler', 'Dorsey', 'Atlanta Hawks', 2, 'Guard', '6 ft 5 in', '183 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Damion', 'Lee', 'Atlanta Hawks', 8, 'Guard', '6 ft 6 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Josh', 'Magette', 'Atlanta Hawks', 11, 'Guard', '6 ft 1 in', '160 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jaylen', 'Morris', 'Atlanta Hawks', 3, 'Guard', '6 ft 5 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Mike', 'Muscala', 'Atlanta Hawks', 31, 'Forward-Center', '6 ft 11 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Miles', 'Plumlee', 'Atlanta Hawks', 18, 'Center', '6 ft 11 in', '249 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Taurean', 'Prince', 'Atlanta Hawks', 12, 'Forward', '6 ft 8 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dennis', 'Schroder', 'Atlanta Hawks', 17, 'Guard', '6 ft 1 in', '172 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Isaiah', 'Taylor', 'Atlanta Hawks', 22, 'Guard', '6 ft 3 in', '170 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Andrew', 'White III', 'Atlanta Hawks', 4, 'Forward', '6 ft 7 in', '210 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kadeem', 'Allen', 'Boston Celtics', 45, 'Guard', '6 ft 3 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Aron', 'Baynes', 'Boston Celtics', 46, 'Center', '6 ft 10 in', '260 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jabari', 'Bird', 'Boston Celtics', 26, 'Guard', '6 ft 6 in', '198 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jaylen', 'Brown', 'Boston Celtics', 7, 'Guard-Forward', '6 ft 7 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Gordon', 'Hayward', 'Boston Celtics', 20, 'Forward', '6 ft 8 in', '226 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Al', 'Horford', 'Boston Celtics', 42, 'Forward-Center', '6 ft 10 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyrie', 'Irving', 'Boston Celtics', 11, 'Guard', '6 ft 3 in', '193 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Shane', 'Larkin', 'Boston Celtics', 8, 'Guard', '5 ft 11 in', '175 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Greg', 'Monroe', 'Boston Celtics', 55, 'Center-Forward', '6 ft 11 in', '265 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marcus', 'Morris', 'Boston Celtics', 13, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Abdel', 'Nader', 'Boston Celtics', 28, 'Forward', '6 ft 6 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Semi', 'Ojeleye', 'Boston Celtics', 37, 'Forward', '6 ft 7 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Terry', 'Rozier', 'Boston Celtics', 12, 'Guard', '6 ft 2 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marcus', 'Smart', 'Boston Celtics', 36, 'Guard', '6 ft 4 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jayson', 'Tatum', 'Boston Celtics', 0, 'Forward', '6 ft 8 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Daniel', 'Theis', 'Boston Celtics', 27, 'Forward-Center', '6 ft 9 in', '243 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Guerschon', 'Yabusele', 'Boston Celtics', 30, 'Forward', '6 ft 8 in', '260 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Quincy', 'Acy', 'Brooklyn Nets', 13, 'Forward', '6 ft 7 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jarrett', 'Allen', 'Brooklyn Nets', 31, 'Center', '6 ft 11 in', '234 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('DeMarre', 'Caroll', 'Brooklyn Nets', 9, 'Forward', '6 ft 8 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Allen', 'Crabbe', 'Brooklyn Nets', 33, 'Guard-Forward', '6 ft 6 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dante', 'Cunningham', 'Brooklyn Nets', 44, 'Forward', '6 ft 8 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Spencer', 'Dinwiddie', 'Brooklyn Nets', 8, 'Guard', '6 ft 6 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Milton', 'Doyle', 'Brooklyn Nets', 14, 'Guard', '6 ft 4 in', '180 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Joe', 'Harris', 'Brooklyn Nets', 12, 'Forward-Guard', '6 ft 6 in', '219 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rondae', 'Hollis-Jefferson', 'Brooklyn Nets', 24, 'Forward', '6 ft 7 in', '214 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Caris', 'LeVert', 'Brooklyn Nets', 22, 'Guard-Forward', '6 ft 7 in', '203 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jeremy', 'Lin', 'Brooklyn Nets', 7, 'Guard', '6 ft 3 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Timofey', 'Mozgov', 'Brooklyn Nets', 20, 'Center', '7 ft 1 in', '275 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jahlil', 'Okafor', 'Brooklyn Nets', 4, 'Center', '6 ft 11 in', '260 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('D`Angelo', 'Russell', 'Brooklyn Nets', 1, 'Guard', '6 ft 5 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nik', 'Stauskas', 'Brooklyn Nets', 2, 'Guard', '6 ft 6 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('James', 'Webb III', 'Brooklyn Nets', 0, 'Forward', '6 ft 9 in', '202 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Isaiah', 'Whitehead', 'Brooklyn Nets', 15, 'Guard', '6 ft 4 in', '213 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dwayne', 'Bacon', 'Charlotte Hornets', 7, 'Forward', '6 ft 7 in', '221 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nicolas', 'Batum', 'Charlotte Hornets', 5, 'Guard-Forward', '6 ft 8 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Michael', 'Carter-Williams', 'Charlotte Hornets', 10, 'Guard', '6 ft 6 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Treveon', 'Graham', 'Charlotte Hornets', 21, 'Guard-Forward', '6 ft 5 in', '219 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wily', 'Hernangomez', 'Charlotte Hornets', 41, 'Center', '6 ft 11 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dwight', 'Howard', 'Charlotte Hornets', 12, 'Center', '6 ft 11 in', '265 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Frank', 'Kaminsky', 'Charlotte Hornets', 44, 'Forward-Center', '7 ft 0 in', '242 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Michael', 'Kidd-Gilchrist', 'Charlotte Hornets', 14, 'Forward', '6 ft 7 in', '232 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jeremy', 'Lamb', 'Charlotte Hornets', 3, 'Guard', '6 ft 5 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Mangok', 'Mathiang', 'Charlotte Hornets', 9, 'Forward-Center', '6 ft 10 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Malik', 'Monk', 'Charlotte Hornets', 1, 'Guard', '6 ft 3 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marcus', 'Paige', 'Charlotte Hornets', 4, 'Guard', '6 ft 0 in', '164 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Julyan', 'Stone', 'Charlotte Hornets', 32, 'Guard', '6 ft 6 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kemba', 'Walker', 'Charlotte Hornets', 15, 'Guard', '6 ft 1 in', '184 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marvin', 'Williams', 'Charlotte Hornets', 2, 'Forward', '6 ft 9 in', '237 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Cody', 'Zeller', 'Charlotte Hornets', 40, 'Center-Forward', '7 ft 0 in', '240 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ryan', 'Arcidiacono', 'Chicago Bulls', 15, 'Guard', '6 ft 3 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Omer', 'Asik', 'Chicago Bulls', 3, 'Center', '7 ft 0 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Antonio', 'Blakeney', 'Chicago Bulls', 9, 'Guard', '6 ft 4 in', '197 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kris', 'Dunn', 'Chicago Bulls', 32, 'Guard', '6 ft 4 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jarell', 'Eddie', 'Chicago Bulls', 31, 'Guard-Forward', '6 ft 7 in', '218 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Cristiano', 'Felicio', 'Chicago Bulls', 6, 'Center-Forward', '6 ft 9 in', '280 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jerian', 'Grant', 'Chicago Bulls', 2, 'Guard', '6 ft 4 in', '198 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Justin', 'Holiday', 'Chicago Bulls', 7, 'Guard', '6 ft 6 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Zach', 'LaVine', 'Chicago Bulls', 8, 'Guard', '6 ft 5 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Robin', 'Lopez', 'Chicago Bulls', 42, 'Center', '7 ft 0 in', '277 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Lauri', 'Markkanen', 'Chicago Bulls', 24, 'Forward', '7 ft 0 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('David', 'Nwaba', 'Chicago Bulls', 11, 'Forward', '6 ft 4 in', '209 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Camreon', 'Payne', 'Chicago Bulls', 22, 'Guard', '6 ft 3 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bobby', 'Portis', 'Chicago Bulls', 5, 'Forward', '6 ft 11 in', '248 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Denzel', 'Valentine', 'Chicago Bulls', 45, 'Forward', '6 ft 6 in', '214 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Noah', 'Vonleh', 'Chicago Bulls', 30, 'Forward', '6 ft 9 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Paul', 'Zipser', 'Chicago Bulls', 16, 'Forward', '6 ft 8 in', '226 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jose', 'Calderon', 'Cleveland Cavaliers', 81, 'Guard', '6 ft 3 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jordan', 'Clarkson', 'Cleveland Cavaliers', 8, 'Guard', '6 ft 5 in', '194 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jeff', 'Green', 'Cleveland Cavaliers', 32, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('George', 'Hill', 'Cleveland Cavaliers', 3, 'Guard', '6 ft 3 in', '188 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('John', 'Holland', 'Cleveland Cavaliers', 10, 'Guard-Forward', '6 ft 5 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rodney', 'Hood', 'Cleveland Cavaliers', 1, 'Guard', '6 ft 8 in', '206 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('LeBron', 'James', 'Cleveland Cavaliers', 23, 'Forward-Guard', '6 ft 8 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyle', 'Korver', 'Cleveland Cavaliers', 26, 'guard', '6 ft 7 in', '212 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kevin', 'Love', 'Cleveland Cavaliers', 0, 'Center-Forward', '6 ft 10 in', '251 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Larry', 'Nance Jr.', 'Cleveland Cavaliers', 22, 'Forward', '6 ft 9 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Cedi', 'Osman', 'Cleveland Cavaliers', 16, 'Forward', '6 ft 8 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('London', 'Perrantes', 'Cleveland Cavaliers', 15, 'Guard', '6 ft 2 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('JR', 'Smith', 'Cleveland Cavaliers', 5, 'Guard-Forward', '6 ft 6 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tristan', 'Thompson', 'Cleveland Cavaliers', 13, 'Center-Forward', '6 ft 9 in', '238 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Okaro', 'White', 'Cleveland Cavaliers', 9, 'Forward', '6 ft 8 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ante', 'Zizic', 'Cleveland Cavaliers', 41, 'Forward-Center', '6 ft 11 in', '250 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('J.J.', 'Barea', 'Dallas Mavericks', 5, 'Guard', '6 ft 0 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Harrison', 'Barnes', 'Dallas Mavericks', 40, 'Forward', '6 ft 8 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyle', 'Collinsworth', 'Dallas Mavericks', 8, 'Guard', '6 ft 6 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Seth', 'Curry', 'Dallas Mavericks', 30, 'Guard', '6 ft 2 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Yogi', 'Ferrell', 'Dallas Mavericks', 11, 'Guard', '6 ft 0 in', '180 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dorian', 'Finney-Smith', 'Dallas Mavericks', 10, 'Forward', '6 ft 8 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jalen', 'Jones', 'Dallas Mavericks', 21, 'Forward', '6 ft 7 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Maxi', 'Kleber', 'Dallas Mavericks', 42, 'Forward', '6 ft 11 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wesley', 'Matthews', 'Dallas Mavericks', 23, 'Guard-Forward', '6 ft 5 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Doug', 'McDermott', 'Dallas Mavericks', 20, 'Forward', '6 ft 8 in', '219 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Salah', 'Mejri', 'Dallas Mavericks', 50, 'Center', '7 ft 2 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Johnathan', 'Motley', 'Dallas Mavericks', 6, 'Forward', '6 ft 10 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nerlens', 'Noel', 'Dallas Mavericks', 3, 'Center', '6 ft 11 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dirk', 'Nowitzki', 'Dallas Mavericks', 41, 'Center-Forward', '7 ft 0 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dwight', 'Powell', 'Dallas Mavericks', 7, 'Center-Forward', '6 ft 11 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dennis', 'Smith Jr.', 'Dallas Mavericks', 1, 'Guard', '6 ft 3 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jameel', 'Warney', 'Dallas Mavericks', 32, 'Forward', '6 ft 8 in', '260 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Darrell', 'Arthur', 'Denver Nuggets', 00, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Will', 'Barton', 'Denver Nuggets', 5, 'Forward-Guard', '6 ft 6 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Malik', 'Beasley', 'Denver Nuggets', 25, 'Guard', '6 ft 5 in', '196 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wilson', 'Chandler', 'Denver Nuggets', 21, 'Forward', '6 ft 9 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Torrey', 'Craig', 'Denver Nuggets', 3, 'Guard-Forward', '6 ft 6 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kenneth', 'Faried', 'Denver Nuggets', 35, 'Forward', '6 ft 8 in', '228 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Devin', 'Harris', 'Denver Nuggets', 34, 'Guard', '6 ft 3 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Gary', 'Harris', 'Denver Nuggets', 14, 'Guard', '6 ft 4 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Juancho', 'Hernangomez', 'Denver Nuggets', 41, 'Forward', '6 ft 9 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Richard', 'Jefferson', 'Denver Nuggets', 22, 'Forward', '6 ft 7 in', '233 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nikola', 'Jokic', 'Denver Nuggets', 15, 'Center', '6 ft 10 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyler', 'Lydon', 'Denver Nuggets', 20, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Trey', 'Lyles', 'Denver Nuggets', 7, 'Forward', '6 ft 10 in', '234 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Paul', 'Millsap', 'Denver Nuggets', 4, 'Forward', '6 ft 8 in', '246 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Monte', 'Morris', 'Denver Nuggets', 11, 'Guard', '6 ft 3 in', '175 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jamal', 'Murray', 'Denver Nuggets', 27, 'Guard', '6 ft 4 in', '207 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Mason', 'Plumlee', 'Denver Nuggets', 24, 'Center-Forward', '6 ft 11 in', '255 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Reggie', 'Bullock', 'Detroit Pistons', 25, 'Forward-Guard', '6 ft 7 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dwight', 'Buycks', 'Detroit Pistons', 20, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Andre', 'Drummond', 'Detroit Pistons', 0, 'Center', '6 ft 11 in', '279 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Henry', 'Ellenson', 'Detroit Pistons', 8, 'Forward', '6 ft 11 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('James', 'Ennis III', 'Detroit Pistons', 33, 'Forward', '6 ft 7 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kay', 'Felder', 'Detroit Pistons', 22, 'Guard', '5 ft 9 in', '176 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Langston', 'Galloway', 'Detroit Pistons', 9, 'Guard', '6 ft 2 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Blake', 'Griffin', 'Detroit Pistons', 23, 'Forward', '6 ft 10 in', '251 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Reggie', 'Hearn', 'Detroit Pistons', 38, 'Guard', '6 ft 5 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Reggie', 'Jackson', 'Detroit Pistons', 1, 'Guard', '6 ft 3 in', '208 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Stanley', 'Johnson', 'Detroit Pistons', 7, 'Forward', '6 ft 7 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Luke', 'Kennard', 'Detroit Pistons', 5, 'Guard', '6 ft 5 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('John', 'Leur', 'Detroit Pistons', 30, 'Forward-Center', '6 ft 10 in', '228 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Eric', 'Moreland', 'Detroit Pistons', 24, 'Forward-Center', '6 ft 10 in', '238 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jameer', 'Nelson', 'Detroit Pistons', 41, 'Guard', '6 ft 0 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ish', 'Smith', 'Detroit Pistons', 14, 'Guard', '6 ft 0 in', '175 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Anthony', 'Tolliver', 'Detroit Pistons', 43, 'Forward', '6 ft 8 in', '240 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jordan', 'Bell', 'Golden State Warriors', 2, 'Center-Forward', '6 ft 9 in', '224 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Chris', 'Boucher', 'Golden State Warriors', 25, 'Forward', '6 ft 10 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Omri', 'Casspi', 'Golden State Warriors', 18, 'Forward', '6 ft 9 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Quinn', 'Cook', 'Golden State Warriors', 4, 'Guard', '6 ft 2 in', '179 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Stephen', 'Curry', 'Golden State Warriors', 30, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kevin', 'Durant', 'Golden State Warriors', 35, 'Forward', '6 ft 9 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Draymond', 'Green', 'Golden State Warriors', 23, 'Forward', '6 ft 7 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Andre', 'Iguodala', 'Golden State Warriors', 9, 'Guard-Forward', '6 ft 6 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Damian', 'Jones', 'Golden State Warriors', 15, 'Center', '7 ft 0 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Shaun', 'Livingston', 'Golden State Warriors', 34, 'Guard', '6 ft 7 in', '192 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kevon', 'Looney', 'Golden State Warriors', 5, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Patrick', 'McCaw', 'Golden State Warriors', 0, 'Guard', '6 ft 7 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('JaVale', 'McGee', 'Golden State Warriors', 1, 'Center', '7 ft 0 in', '270 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Zaza', 'Pachulia', 'Golden State Warriors', 27, 'Center', '6 ft 11 in', '270 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Klay', 'Thompson', 'Golden State Warriors', 11, 'Guard', '6 ft 7 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('David', 'West', 'Golden State Warriors', 3, 'Forward', '6 ft 9 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nick', 'Young', 'Golden State Warriors', 6, 'Guard-Forward', '6 ft 7 in', '210 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ryan', 'Anderson', 'Houston Rockets', 33, 'Forward', '6 ft 10 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Trevor', 'Ariza', 'Houston Rockets', 1, 'Forward-Guard', '6 ft 8 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tarik', 'Black', 'Houston Rockets', 28, 'Forward-Center', '6 ft 9 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Markel', 'Brown', 'Houston Rockets', 26, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Clint', 'Capela', 'Houston Rockets', 15, 'Center', '6 ft 10 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Eric', 'Gordon', 'Houston Rockets', 10, 'Guard', '6 ft 4 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Gerald', 'Green', 'Houston Rockets', 14, 'Guard-Forward', '6 ft 7 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('James', 'Harden', 'Houston Rockets', 13, 'Guard', '6 ft 5 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('RJ', 'Hunter', 'Houston Rockets', 2, 'Guard', '6 ft 5 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Joe', 'Johnson', 'Houston Rockets', 7, 'Guard-Forward', '6 ft 7 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Luc', 'Mbah a Moute', 'Houston Rockets', 12, 'Forward', '6 ft 8 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nene', 'Hilario', 'Houston Rockets', 42, 'Center-Forward', '6 ft 11 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Chinau', 'Onuaku', 'Houston Rockets', 21, 'Center', '6 ft 10 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Chris', 'Paul', 'Houston Rockets', 3, 'Guard', '6 ft 0 in', '175 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Zhou', 'Qi', 'Houston Rockets', 9, 'Forward-Center', '7 ft 1 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('PJ', 'Tucker', 'Houston Rockets', 4, 'Forward', '6 ft 6 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Brandan', 'Wright', 'Houston Rockets', 32, 'Forward-Center', '6 ft 10 in', '235 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ike', 'Anigbogu', 'Indiana Pacers', 13, 'Center', '6 ft 10 in', '262 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bojan', 'Bogdanovic', 'Indiana Pacers', 44, 'Forward', '6 ft 8 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Trevor', 'Booker', 'Indiana Pacers', 20, 'Forward', '6 ft 10 in', '228 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Darren', 'Collison', 'Indiana Pacers', 2, 'Guard', '6 ft 2 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Al', 'Jefferson', 'Indiana Pacers', 25, 'Center', '6 ft 10 in', '280 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Cory', 'Joseph', 'Indiana Pacers', 6, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('TJ', 'Leaf', 'Indiana Pacers', 22, 'Forward', '6 ft 10 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ben', 'Moore', 'Indiana Pacers', 26, 'Forward', '6 ft 8 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Victor', 'Oladipo', 'Indiana Pacers', 4, 'Guard', '6 ft 4 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alex', 'Poythress', 'Indiana Pacers', 0, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Glenn', 'Robinson III', 'Indiana Pacers', 40, 'Guard-Forward', '6 ft 7 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Domantas', 'Sabonis', 'Indiana Pacers', 11, 'Center-Forward', '6 ft 10 in', '252 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Lance', 'Stephenson', 'Indiana Pacers', 1, 'Guard', '6 ft 6 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Edmond', 'Summer', 'Indiana Pacers', 5, 'Guard', '6 ft 5 in', '188 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Myles', 'Turner', 'Indiana Pacers', 33, 'Center', '6 ft 11 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Joe', 'Young', 'Indiana Pacers', 3, 'Guard', '6 ft 2 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Thaddeus', 'Young', 'Indiana Pacers', 21, 'Forward', '6 ft 8 in', '230 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Patrick', 'Beverley', 'LA Clippers', 21, 'Guard', '6 ft 1 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Avery', 'Bradley', 'LA Clippers', 11, 'Guard', '6 ft 2 in', '180 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Sam', 'Dekker', 'LA Clippers', 7, 'Forward', '6 ft 9 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jawun', 'Evans', 'LA Clippers', 1, 'Guard', '6 ft 0 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Danilo', 'Gallinari', 'LA Clippers', 8, 'Forward', '6 ft 10 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Montrezl', 'Harrell', 'LA Clippers', 5, 'Forward-Center', '6 ft 8 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tobias', 'Harris', 'LA Clippers', 34, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wesley', 'Johnson', 'LA Clippers', 33, 'Forward', '6 ft 7 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('DeAndre', 'Jordan', 'LA Clippers', 6, 'Center', '6 ft 11 in', '265 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Sean', 'Kilpatrick', 'LA Clippers', 2, 'Guard', '6 ft 4 in', '212 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Boban', 'Marjanovic', 'LA Clippers', 51, 'Center', '7 ft 3 in', '290 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Austin', 'Rivers', 'LA Clippers', 25, 'Guard', '6 ft 4 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Milos', 'Teodosic', 'LA Clippers', 4, 'Guard', '6 ft 5 in', '196 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Sindarius', 'Thornwell', 'LA Clippers', 0, 'Guard', '6 ft 5 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyrone', 'Wallace', 'LA Clippers', 12, 'Guard', '6 ft 5 in', '198 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('C.J.', 'Williams', 'LA Clippers', 9, 'Forward-Guard', '6 ft 5 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Lou', 'Williams', 'LA Clippers', 23, 'Guard', '6 ft 1in', '175 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Lonzo', 'Ball', 'Los Angeles Lakers', 2, 'Guard', '6 ft 6 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Thomas', 'Bryant', 'Los Angeles Lakers', 31, 'Center', '6 ft 10 in', '248 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kentavious', 'Caldwell-Pope', 'Los Angeles Lakers', 1, 'Guard', '6 ft 5 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alex', 'Caruso', 'Los Angeles Lakers', 4, 'Guard', '6 ft 5 in', '186 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Luol', 'Deng', 'Los Angeles Lakers', 9, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyler', 'Ennis', 'Los Angeles Lakers', 10, 'Guard', '6 ft 3 in', '194 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Channing', 'Frye', 'Los Angeles Lakers', 12, 'Forward', '6 ft 11 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Josh', 'Hart', 'Los Angeles Lakers', 5, 'Guard', '6 ft 5 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Brandon', 'Ingram', 'Los Angeles Lakers', 14, 'Forward-Guard', '6 ft 9 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyle', 'Kuzma', 'Los Angeles Lakers', 0, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Brook', 'Lopez', 'Los Angeles Lakers', 11, 'Center', '7 ft 0 in', '268 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Gary', 'Payton II', 'Los Angeles Lakers', 23, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Julius', 'Randle', 'Los Angeles Lakers', 30, 'Forward-Center', '6 ft 9 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Isaiah', 'Thomas', 'Los Angeles Lakers', 3, 'Guard', '5 ft 9 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Travis', 'Wear', 'Los Angeles Lakers', 21, 'Forward', '6 ft 10 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ivica', 'Zubac', 'Los Angeles Lakers', 40, 'Center', '7 ft 1 in', '240 lbs');


INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dillon', 'Brooks', 'Memphis Grizzlies' , 24, 'Forward-Guard', '6 ft 6 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Mario', 'Chalmers', 'Memphis Grizzlies', 6, 'Guard', '6 ft 2 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Mike', 'Conley', 'Memphis Grizzlies', 11, 'Guard', '6 ft 1 in', '175 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Deyonta', 'Davis', 'Memphis Grizzlies', 21, 'Center-Forward', '6 ft 11 in', '237 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyreke', 'Evans', 'Memphis Grizzlies', 12, 'Guard-Forward', '6 ft 6 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marc', 'Gasol', 'Memphis Grizzlies', 33, 'Center', '7 ft 1 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('JaMychal', 'Green', 'Memphis Grizzlies', 0, 'Forward', '6 ft 9 in', '227 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Andrew', 'Harrison', 'Memphis Grizzlies', 5, 'Guard', '6 ft 6 in', '213 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Myke', 'Henry', 'Memphis Grizzlies', 4, 'Forward', '6 ft 6 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Brice', 'Johnson', 'Memphis Grizzlies', 14, 'Forward', '6 ft 10 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jarell', 'Martin', 'Memphis Grizzlies', 1, 'Forward', '6 ft 10 in', '239 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ben', 'McLemore', 'Memphis Grizzlies', 23, 'Guard', '6 ft 5 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Chandler', 'Parsons', 'Memphis Grizzlies', 25, 'Forward', '6 ft 10 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ivan', 'Rabb', 'Memphis Grizzlies', 10, 'Forward', '6 ft 10 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wayne', 'Selden', 'Memphis Grizzlies', 7, 'Guard-Forward', '6 ft 5 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kobi', 'Simmons', 'Memphis Grizzlies', 2, 'Guard', '6 ft 4 in', '170 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Briante', 'Weber', 'Memphis Grizzlies', 3, 'Guard', '6 ft 2 in', '165 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bam', 'Adebayo', 'Miami Heat', 13, 'Center-Forward', '6 ft 10 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Luke', 'Babbitt', 'Miami Heat', 22, 'Forward', '6 ft 9 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Goran', 'Dragic', 'Miami Heat', 7, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wayne', 'Ellington', 'Miami Heat', 2, 'Guard', '6 ft 5 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Udonis', 'Haslem', 'Miami Heat', 40, 'Forward', '6 ft 8 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('James', 'Johnson', 'Miami Heat', 16, 'Forward', '6 ft 8 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyler', 'Johnson', 'Miami Heat', 8, 'Guard', '6 ft 4 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Derrick', 'Jones Jr.', 'Miami Heat', 5, 'Forward-Guard', '6 ft 7 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rodney', 'McGruder', 'Miami Heat', 17, 'Guard-Forward', '6 ft 4 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jordan', 'Mickey', 'Miami Heat', 25, 'Center-Forward', '6 ft 8 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kelly', 'Olynyk', 'Miami Heat', 9, 'Forward-Center', '7 ft 0 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Josh', 'Richardson', 'Miami Heat', 0, 'Forward', '6 ft 6 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dwyane', 'Wade', 'Miami Heat', 3, 'Guard', '6 ft 4 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dion', 'Waiters', 'Miami Heat', 11, 'Guard', '6 ft 4 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Derrick', 'Walton Jr.', 'Miami Heat', 14, 'Guard', '6 ft 1 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Hassan', 'Whiteside', 'Miami Heat', 21, 'Center', '7 ft 0 in', '265 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Justise', 'Winslow', 'Miami Heat', 20, 'Forward', '6 ft 7 in', '225 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Giannis', 'Antetokounmpo', 'Milwaukee Bucks', 34, 'Forward', '6 ft 11 in', '222 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Eric', 'Bledsoe', 'Milwaukee Bucks', 6, 'Guard', '6 ft 1 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Malcolm', 'Brogdon', 'Milwaukee Bucks', 13, 'Guard', '6 ft 5 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Sterling', 'Brown', 'Milwaukee Bucks', 23, 'Guard', '6 ft 6 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Matthew', 'Dellavedova', 'Milwaukee Bucks', 8, 'Guard', '6 ft 4 in', '198 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('John', 'Henson', 'Milwaukee Bucks', 31, 'Center', '6 ft 11 in', '229 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Brandon', 'Jennings', 'Milwaukee Bucks', 11, 'Guard', '6 ft 1in', '170 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Thon', 'Maker', 'Milwaukee Bucks', 7, 'Center-Forward', '7 ft 1 in', '223 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Khris', 'Middleton', 'Milwaukee Bucks', 22, 'Forward', '6 ft 8 in', '234 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Shabazz', 'Muhammad', 'Milwaukee Bucks', 15, 'Guard-Forward', '6 ft 6 in', '221 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Xavier', 'Munford', 'Milwaukee Bucks', 0, 'Guard', '6 ft 4 in', '173 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jabari', 'Parker', 'Milwaukee Bucks', 12, 'Forward', '6 ft 8 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marshall', 'Plumlee', 'Milwaukee Bucks', 40, 'Center', '7 ft 0 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tony', 'Snell', 'Milwaukee Bucks', 21, 'Guard', '6 ft 7 in', '221 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jason', 'Terry', 'Milwaukee Bucks', 3, 'Guard', '6 ft 2 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('D.J.', 'Wilson', 'Milwaukee Bucks', 5, 'Forward', '6 ft 10 in', '236 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyler', 'Zeller', 'Milwaukee Bucks', 44, 'Center', '7 ft 0 in', '250 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Cole', 'Aldrich', 'Minnesota Timberwolves', 45, 'Center', '6 ft 11 in', '253 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nemanja', 'Bjelica', 'Minnesota Timberwolves', 8, 'Forward', '6 ft 10 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Aaron', 'Brooks', 'Minnesota Timberwolves', 30, 'Guard', '6 ft 0 in', '161 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Anthony', 'Brown', 'Minnesota Timberwolves', 3, 'Forward', '6 ft 7 in', '224 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jimmy', 'Butler', 'Minnesota Timberwolves', 23, 'Guard', '6 ft 8 in', '236 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jamal', 'Crawford', 'Minnesota Timberwolves', 11, 'Guard', '6 ft 5 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Gorgui', 'Dieng', 'Minnesota Timberwolves', 5, 'Center', '6 ft 11 in', '251 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marcus', 'Georges-Hunt', 'Minnesota Timberwolves', 13, 'Guard', '6 ft 5 in', '226 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Taj', 'Gibson', 'Minnesota Timberwolves', 67, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Amile', 'Jefferson', 'Minnesota Timberwolves', 10, 'Forward', '6 ft 9 in', '224 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyus', 'Jones', 'Minnesota Timberwolves', 1, 'Guard', '6 ft 2 in', '184 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Justin', 'Patton', 'Minnesota Timberwolves', 24, 'Center', '7 ft 0 in', '236 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Derrick', 'Rose', 'Minnesota Timberwolves', 25, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jeff', 'Teague', 'Minnesota Timberwolves', 0, 'Guard', '6 ft 2 in', '189 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Karl-Anthony', 'Towns', 'Minnesota Timberwolves', 32, 'Center', '7 ft 0 in', '248 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Andrew', 'Wiggins', 'Minnesota Timberwolves', 22, 'Forward', '6 ft 8 in', '202 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alexis', 'Ajinca', 'New Orleans Pelicans', 42, 'Center', '7 ft 2 in', '248 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ian', 'Clark', 'New Orleans Pelicans', 2, 'Guard', '6 ft 3 in', '175 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Charles', 'Cooke', 'New Orleans Pelicans', 4, 'Guard', '6 ft 5 in', '196 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('DeMarcus', 'Cousins', 'New Orleans Pelicans', 0, 'Center', '6 ft 11 in', '270 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Anthony', 'Davis', 'New Orleans Pelicans', 23, 'Forward-Center', '6 ft 10 in', '253 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Cheick', 'Diallo', 'New Orleans Pelicans', 13, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Larry', 'Drew II', 'New Orleans Pelicans', 1, 'Guard', '6 ft 2 in', '180 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Solomon', 'Hill', 'New Orleans Pelicans', 44, 'Forward', '6 ft 7 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jrue', 'Holiday', 'New Orleans Pelicans', 11, 'Guard', '6 ft 4 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Frank', 'Jackson', 'New Orleans Pelicans', 15, 'Guard', '6 ft 3 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('DeAndre', 'Liggins', 'New Orleans Pelicans', 34, 'Guard', '6 ft 6 in', '209 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Darius', 'Miller', 'New Orleans Pelicans', 21, 'Forward', '6 ft 8 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nikola', 'Mirotic', 'New Orleans Pelicans', 3, 'Forward', '6 ft 10 in', '238 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('E`Twaun', 'Moore', 'New Orleans Pelicans', 55, 'Forward-Guard', '6 ft 4 in', '191 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Emeka', 'Okafor', 'New Orleans Pelicans', 50, 'Center', '6 ft 10 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rajon', 'Rondo', 'New Orleans Pelicans', 9, 'Guard', '6 ft 1 in', '186 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ron', 'Baker', 'New York Knicks', 31, 'Guard', '6 ft 4 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Michael', 'Beasley', 'New York Knicks', 8, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Trey', 'Burke', 'New York Knicks', 23, 'Guard', '6 ft 1 in', '191 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Damyean', 'Dotson', 'New York Knicks', 21, 'Guard', '6 ft 5 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tim', 'Hardaway Jr.', 'New York Knicks', 3, 'Forward-Guard', '6 ft 6 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Isaiah', 'Hicks', 'New York Knicks', 4, 'Forward', '6 ft 9 in', '242 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jarrett', 'Jack', 'New York Knicks', 55, 'Guard', '6 ft 3 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Enes', 'Kanter', 'New York Knicks', 00, 'Center', '6 ft 11 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Luke', 'Kornet', 'New York Knicks', 2, 'Forward-Center', '7 ft 1 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Courtney', 'Lee', 'New York Knicks', 5, 'Guard', '6 ft 5 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Emmanuel', 'Mudiay', 'New York Knicks', 1, 'Guard', '6 ft 5 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Joakim', 'Noah', 'New York Knicks', 13, 'Center', '6 ft 11 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Frank', 'Ntilikina', 'New York Knicks', 11, 'Guard', '6 ft 5 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyle', 'O`Quinn', 'New York Knicks', 9, 'Center-Forward', '6 ft 10 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kristaps', 'Porzingis', 'New York Knicks', 6, 'Forward-Center', '7 ft 3 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Lance', 'Thomas', 'New York Knicks', 42, 'Forward', '6 ft 8 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Troy', 'Williams', 'New York Knicks', 0, 'Forward', '6 ft 7 in', '218 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alex', 'Abrines', 'Oklahoma City Thunder', 8, 'Guard', '6 ft 6 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Steven', 'Adams', 'Oklahoma City Thunder', 12, 'Center', '7 ft 0 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Carmelo', 'Anthony', 'Oklahoma City Thunder', 7, 'Forward', '6 ft 8 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Corey', 'Brewer', 'Oklahoma City Thunder', 3, 'Guard-Forward', '6 ft 9 in', '186 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nick', 'Collison', 'Oklahoma City Thunder', 4, 'Forward', '6 ft 10 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('PJ', 'Dozier', 'Oklahoma City Thunder', 35, 'Guard', '6 ft 6 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Raymond', 'Felton', 'Oklahoma City Thunder', 2, 'Guard', '6 ft 1 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Terrance', 'Ferguson', 'Oklahoma City Thunder', 23, 'Guard', '6 ft 7 in', '184 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Paul', 'George', 'Oklahoma City Thunder', 13, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jerami', 'Grant', 'Oklahoma City Thunder', 9, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Daniel', 'Hamilton', 'Oklahoma City Thunder', 25, 'Guard', '6 ft 7 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Josh', 'Huestis', 'Oklahoma City Thunder', 34, 'Guard', '6 ft 7 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dakari', 'Johnson', 'Oklahoma City Thunder', 44, 'Center', '7 ft 0 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Patrick', 'Patterson', 'Oklahoma City Thunder', 54, 'Forward', '6 ft 9 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Andre', 'Roberson', 'Oklahoma City Thunder', 21, 'Guard', '6 ft 7 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyle', 'Singler', 'Oklahoma City Thunder', 15, 'Forward', '6 ft 8 in', '228 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Russell', 'Westbrook', 'Oklahoma City Thunder', 0, 'Guard', '6 ft 3 in', '200 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Arron', 'Afflalo', 'Orlando Magic', 4, 'Guard', '6 ft 5 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jamel', 'Artis', 'Orlando Magic', 0, 'Guard', '6 ft 7 in', '213 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('D.J.', 'Augustin', 'Orlando Magic', 14, 'Guard', '6 ft 0 in', '183 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Khem', 'Birch', 'Orlando Magic', 24, 'Center', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bismack', 'Biyombo', 'Orlando Magic', 11, 'Center', '6 ft 9 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Evan', 'Fournier', 'Orlando Magic', 10, 'Guard-Forward', '6 ft 7 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Aaron', 'Gordon', 'Orlando Magic', 00, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Mario', 'Hezonja', 'Orlando Magic', 8, 'Forward-Guard', '6 ft 8 in', '218 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jonathan', 'Isaac', 'Orlando Magic', 1, 'Forward', '6 ft 10 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wes', 'Iwundu', 'Orlando Magic', 25, 'Forward', '6 ft 7 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Shelvin', 'Mack', 'Orlando Magic', 7, 'Guard', '6 ft 3 in', '203 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rodney', 'Purvis', 'Orlando Magic', 15, 'Guard', '6 ft 4 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Terrence', 'Ross', 'Orlando Magic', 31, 'Guard-Forward', '6 ft 7 in', '206 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jonathon', 'Simmons', 'Orlando Magic', 17, 'Forward', '6 ft 6 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marreese', 'Speights', 'Orlando Magic', 5, 'Forward-Center', '6 ft 10 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rashad', 'Vaughn', 'Orlando Magic', 20, 'Guard', '6 ft 6 in', '202 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nikola', 'Vucevic', 'Orlando Magic', 9, 'Center', '7 ft 0 in', '260 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Justin', 'Anderson', 'Philadelphia 76ers', 1, 'Guard-Forward', '6 ft 6 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jerryd', 'Bayless', 'Philadelphia 76ers', 0, 'Guard', '6 ft 3 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marco', 'Belinelli', 'Philadelphia 76ers', 18, 'Guard-Forward', '6 ft 5 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Robert', 'Covington', 'Philadelphia 76ers', 33, 'Forward', '6 ft 9 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Joel', 'Embiid', 'Philadelphia 76ers', 21, 'Center', '7 ft 0 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Markelle', 'Fultz', 'Philadelphia 76ers', 20, 'Guard', '6 ft 4 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Richaun', 'Holmes', 'Philadelphia 76ers', 22, 'Forward-Center', '6 ft 10 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ersan', 'Ilyasova', 'Philadelphia 76ers', 23, 'Forward', '6 ft 10 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Demetrius', 'Jackson', 'Philadelphia 76ers', 11, 'Guard', '6 ft 1 in', '201 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Amir', 'Johnson', 'Philadelphia 76ers', 5, 'Center-Forward', '6 ft 9 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Furkan', 'Korkmaz', 'Philadelphia 76ers', 30, 'Guard-Forward', '6 ft 7 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Timothe', 'Luwawu-Cabarrot', 'Philadelphia 76ers', 7, 'Guard-Forward', '6 ft 6 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('T.J.', 'McConnell', 'Philadelphia 76ers', 12, 'Guard', '6 ft 2 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('JJ', 'Redick', 'Philadelphia 76ers', 17, 'Guard-Forward', '6 ft 4 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dario', 'Saric', 'Philadelphia 76ers', 9, 'Forward', '6 ft 10 in', '223 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ben', 'Simmons', 'Philadelphia 76ers', 25, 'Guard-Forward', '6 ft 10 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('James', 'Young', 'Philadelphia 76ers', 8, 'Guard-Forward', '6 ft 6 in', '215 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dragan', 'Bender', 'Phoenix Suns', 35, 'Forward', '7 ft 1 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Devin', 'Booker', 'Phoenix Suns', 1, 'Guard', '6 ft 6 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyson', 'Chandler', 'Phoenix Suns', 4, 'Center', '7 ft 1 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marquese', 'Chriss', 'Phoenix Suns', 0, 'Forward', '6 ft 10 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Troy', 'Daniels', 'Phoenix Suns', 30, 'Guard', '6 ft 4 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jared', 'Dudley', 'Phoenix Suns', 3, 'Forward', '6 ft 7 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Shaquille', 'Harrison', 'Phoenix Suns', 10, 'Guard', '6 ft 4 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Danuel', 'House', 'Phoenix Suns', 23, 'Forward-Guard', '6 ft 7 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Josh', 'Jackson', 'Phoenix Suns', 20, 'Guard-Forward', '6 ft 8 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Brandon', 'Knight', 'Phoenix Suns', 11, 'Guard', '6 ft 3 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alex', 'Len', 'Phoenix Suns', 21, 'Center', '7 ft 1 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Elfrid', 'Payton', 'Phoenix Suns', 2, 'Guard', '6 ft 4 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alec', 'Peters', 'Phoenix Suns', 25, 'Forward', '6 ft 9 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Davon', 'Reed', 'Phoenix Suns', 32, 'Guard', '6 ft 6 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tyler', 'Ulis', 'Phoenix Suns', 8, 'Guard', '5 ft 10 in', '160 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('TJ', 'Warren', 'Phoenix Suns', 12, 'Forward', '6 ft 8 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alan', 'Williams', 'Phoenix Suns', 15, 'Forward-Center', '6 ft 8 in', '265 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Al-Farouq', 'Aminu', 'Portland Trail Blazers', 8, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Wade', 'Baldwin IV', 'Portland Trail Blazers', 2, 'Guard', '6 ft 4 in', '202 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Zach', 'Collins', 'Portland Trail Blazers', 33, 'Center-Forward', '7 ft 0 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Pat', 'Connaughton', 'Portland Trail Blazers', 5, 'Guard-Forward', '6 ft 5 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ed', 'Davis', 'Portland Trail Blazers', 17, 'Forward-Center', '6 ft 10 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Maurice', 'Harkless', 'Portland Trail Blazers', 4, 'Forward', '6 ft 9 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jake', 'Layman', 'Portland Trail Blazers', 10, 'Forward', '6 ft 9 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Meyers', 'Leonard', 'Portland Trail Blazers', 11, 'Center', '7 ft 1 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Damian', 'Lillard', 'Portland Trail Blazers', 0, 'Guard', '6 ft 3 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('CJ', 'McCollum', 'Portland Trail Blazers', 3, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jusuf', 'Nurkic', 'Portland Trail Blazers', 27, 'Center', '7 ft 0 in', '280 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Georgios', 'Papagiannis', 'Portland Trail Blazers', 19, 'Center', '7 ft 1 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Caleb', 'Swanigan', 'Portland Trail Blazers', 50, 'Forward-Center', '6 ft 8 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Evan', 'Turner', 'Portland Trail Blazers', 1, 'Forward-Guard', '6 ft 7 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('CJ', 'Wilcox', 'Portland Trail Blazers', 23, 'Guard', '6 ft 5 in', '195 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bogdan', 'Bogdanovic', 'Sacramento Kings', 8, 'Guard', '6 ft 6 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bruno', 'Caboclo', 'Sacramento Kings', 22, 'Forward', '6 ft 9 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Vince', 'Carter', 'Sacramento Kings', 15, 'Guard-Forward', '6 ft 6 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Willie', 'Cauley-Stein', 'Sacramento Kings', 00, 'Center', '7 ft 0 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jack', 'Cooley', 'Sacramento Kings', 45, 'Center', '6 ft 10 in', '274 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('De`Aaron', 'Fox', 'Sacramento Kings', 5, 'Guard', '6 ft 3 in', '175 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Harry', 'Giles', 'Sacramento Kings', 20, 'Forward-Center', '6 ft 10 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Buddy', 'Hield', 'Sacramento Kings', 24, 'Guard', '6 ft 4 in', '214 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Justin', 'Jackson', 'Sacramento Kings', 25, 'Forward', '6 ft 8 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kosta', 'Koufos', 'Sacramento Kings', 41, 'Center', '7 ft 0 in', '265 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Skal', 'Labissiere', 'Sacramento Kings', 7, 'Forward-Center', '6 ft 11 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Frank', 'Mason', 'Sacramento Kings', 10, 'Guard', '5 ft 11 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Zach', 'Randolph', 'Sacramento Kings', 50, 'Forward', '6 ft 9 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('JaKarr', 'Sampson', 'Sacramento Kings', 29, 'Forward', '6 ft 9 in', '207 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Iman', 'Shumpert', 'Sacramento Kings', 4, 'Guard', '6 ft 5 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Garrett', 'Temple', 'Sacramento Kings', 17, 'Forward-Guard', '6 ft 6 in', '195 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('LaMarcus', 'Aldridge', 'San Antonio Spurs', 12, 'Forward', '6 ft 11 in', '260 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyle', 'Anderson', 'San Antonio Spurs', 1, 'Forward', '6 ft 9 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Davis', 'Bertans', 'San Antonio Spurs', 42, 'Center-Forward', '6 ft 10 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Matt', 'Costello', 'San Antonio Spurs', 10, 'Forward-Center', '6 ft 10 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bryn', 'Forbes', 'San Antonio Spurs', 11, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Pau', 'Gasol', 'San Antonio Spurs', 16, 'Center', '7 ft 0 in', '250 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rudy', 'Gay', 'San Antonio Spurs', 22, 'Forward', '6 ft 8 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Manu', 'Ginobili', 'San Antonio Spurs', 20, 'Guard', '6 ft 6 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Danny', 'Green', 'San Antonio Spurs', 14, 'Guard-Forward', '6 ft 6 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Darrun', 'Hilliard', 'San Antonio Spurs', 24, 'Guard', '6 ft 6 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Joffrey', 'Lauvergne', 'San Antonio Spurs', 77, 'Center', '6 ft 11 in', '260 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kawhi', 'Leonard', 'San Antonio Spurs', 2, 'Forward', '6 ft 7 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Patty', 'Mills', 'San Antonio Spurs', 8, 'Guard', '6 ft 0 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dejounte', 'Murray', 'San Antonio Spurs', 5, 'Guard', '6 ft 5 in', '170 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tony', 'Parker', 'San Antonio Spurs', 9, 'Guard', '6 ft 2 in', '185 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Brandon', 'Paul', 'San Antonio Spurs', 3, 'Guard', '6 ft 4 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Derrick', 'White', 'San Antonio Spurs', 4, 'Guard', '6 ft 4 in', '190 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('OG', 'Anunoby', 'Toronto Raptors', 3, 'Forward', '6 ft 8 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Lorenzo', 'Brown', 'Toronto Raptors', 4, 'Guard', '6 ft 5 in', '189 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('DeMar', 'DeRozan', 'Toronto Raptors', 10, 'Guard', '6 ft 7 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Nigel', 'Hayes', 'Toronto Raptors', 2, 'Forward', '6 ft 7 in', '254 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Serge', 'Ibaka', 'Toronto Raptors', 9, 'Forward', '6 ft 10 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kyle', 'Lowry', 'Toronto Raptors', 7, 'Guard', '6 ft 0 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alfonzo', 'McKinnie', 'Toronto Raptors', 34, 'Forward', '6 ft 8 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('CJ', 'Miles', 'Toronto Raptors', 0, 'Forward-Guard', '6 ft 6 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Malcolm', 'Miller', 'Toronto Raptors', 13, 'Forward', '6 ft 7 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Lucas', 'Nogueira', 'Toronto Raptors', 92, 'Center', '7 ft 0 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jakob', 'Poeltl', 'Toronto Raptors', 42, 'Center', '7 ft 0 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Norman', 'Powell', 'Toronto Raptors', 24, 'Forward-Guard', '6 ft 4 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Malachi', 'Richardson', 'Toronto Raptors', 22, 'Guard', '6 ft 6 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Pascal', 'Siakam', 'Toronto Raptors', 43, 'Forward', '6 ft 9 in', '230 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jonas', 'Valanciunas', 'Toronto Raptors', 17, 'Center', '7 ft 0 in', '255 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Fred', 'VanVleet', 'Toronto Raptors', 23, 'Guard', '6 ft 0 in', '195 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Delon', 'Wright', 'Toronto Raptors', 55, 'Guard', '6 ft 5 in', '190 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tony', 'Bradley', 'Utah Jazz', 13, 'Center', '6 ft 10 in', '248 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Alec', 'Burks', 'Utah Jazz', 10, 'Guard', '6 ft 6 in', '214 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jae', 'Crowder', 'Utah Jazz', 99, 'Forward', '6 ft 6 in', '235 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Dante', 'Exum', 'Utah Jazz', 11, 'Guard', '6 ft 6 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Derrick', 'Favors', 'Utah Jazz', 15, 'Forward-Center', '6 ft 10 in', '265 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Rudy', 'Gobert', 'Utah Jazz', 27, 'Center', '7 ft 1 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Joe', 'Ingles', 'Utah Jazz', 2, 'Forward', '6 ft 8 in', '226 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jonas', 'Jerebko', 'Utah Jazz', 8, 'Forward', '6 ft 10 in', '231 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Erick', 'McCree', 'Utah Jazz', 21, 'Forward', '6 ft 8 in', '225 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Donovan', 'Mitchell', 'Utah Jazz', 45, 'Guard', '6 ft 3 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Raul', 'Neto', 'Utah Jazz', 25, 'Guard', '6 ft 1 in', '179 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Georges', 'Niang', 'Utah Jazz', 31, 'Forward', '6 ft 6 in', '231 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Royce', 'O`Neale', 'Utah Jazz', 23, 'Forward', '6 ft 6 in', '226 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ricky', 'Rubio', 'Utah Jazz', 3, 'Guard', '6 ft 4 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Thabo', 'Sefolosha', 'Utah Jazz', 22, 'Forward', '6 ft 7 in', '220 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('David', 'Stockton', 'Utah Jazz', 5, 'Guard', '5 ft 11 in', '165 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ekpe', 'Udoh', 'Utah Jazz', 33, 'Center-Forward', '6 ft 10 in', '245 lbs');

INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Bradley', 'Beal', 'Washington Wizards', 3, 'Guard', '6 ft 5 in', '207 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tim', 'Frazier', 'Washington Wizards', 8, 'Guard', '6 ft 1 in', '170 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Marcin', 'Gortat', 'Washington Wizards', 13, 'Center', '6 ft 11 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ian', 'Mahinmi', 'Washington Wizards', 28, 'Center', '6 ft 11 in', '262 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Chris', 'McCullough', 'Washington Wizards', 1, 'Forward', '6 ft 9 in', '215 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jodie', 'Meeks', 'Washington Wizards', 20, 'Guard', '6 ft 4 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Markieff', 'Morris', 'Washington Wizards', 5, 'Forward', '6 ft 10 in', '245 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Kelly', 'Oubre Jr.', 'Washington Wizards', 12, 'Forward', '6 ft 7 in', '205 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Otto', 'Porter Jr.', 'Washington Wizards', 22, 'Forward', '6 ft 8 in', '198 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Devin', 'Robinson', 'Washington Wizards', 7, 'Forward', '6 ft 8 in', '200 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Tomas', 'Satoransky', 'Washington Wizards', 31, 'Guard-Forward', '6 ft 7 in', '210 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Mike', 'Scott', 'Washington Wizards', 30, 'Forward', '6 ft 8 in', '237 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Ramon', 'Sessions', 'Washington Wizards', 9, 'Guard', '6 ft 3 in', '190 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('Jason', 'Smith', 'Washington Wizards', 14, 'Forward-Center', '7 ft 0 in', '240 lbs');
INSERT INTO player(first_name, last_name, player_team, jersey_number, position, height, weight)
VALUES('John', 'Wall', 'Washington Wizards', 2, 'Guard', '6 ft 4 in', '210 lbs');


select * from owner;
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Tony', 'Ressler', 'Atlanta Hawks');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('H. Irving', 'Grousbeck', 'Boston Celtics');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Wycliffe', 'Grousbeck', 'Boston Celtics');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Steve', 'Pagliuca', 'Boston Celtics');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Mikhail', 'Prokhorov', 'Brooklyn Nets');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Michael', 'Jordan', 'Charlotte Hornets');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Jerry', 'Reinsdorf', 'Chicago Bulls');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Dan', 'Gilbert', 'Cleveland Cavaliers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Gary', 'Gilbert', 'Cleveland Cavaliers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Gordon', 'Gund', 'Cleveland Cavaliers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Usher', 'Raymond', 'Cleveland Cavaliers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Mark', 'Cuban', 'Dallas Mavericks');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Stan', 'Kroenke', 'Denver Nuggets');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Tom', 'Gores', 'Detroit Pistons');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Joe', 'Lacob', 'Golden State Warriors');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Peter', 'Guber', 'Golden State Warriors');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Tilman', 'Fertitta', 'Houston Rockets');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Herbert', 'Simon', 'Indiana Pacers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Steve', 'Ballmer', 'LA Clippers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Jeanie', 'Buss', 'Los Angeles Lakers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Jim', 'Buss', 'Los Angeles Lakers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Johnny', 'Buss', 'Los Angeles Lakers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Robert', 'J. Pera', 'Memphis Grizzlies');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Micky', 'Arison', 'Miami Heat');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Marc', 'Lasry', 'Milwaukee Bucks');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Wesley', 'Edens', 'Milwaukee Bucks');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Glen', 'Taylor', 'Minnesota Timberwolves');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Tom', 'Benson', 'New Orleans Pelicans');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('James', 'Dolan', 'New York Knicks');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Clay', 'Bennett', 'Oklahoma City Thunder');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Richard', 'DeVos', 'Orlando Magic');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Joshua', 'Harris', 'Philadelphia 76ers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Will', 'Smith', 'Philadelphia 76ers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Robert', 'Sarver', 'Phoenix Suns');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Paul', 'Allen', 'Portland Trail Blazers');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Vivek', 'Ranadive', 'Sacramento Kings');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Peter', 'Holt', 'San Antonio Spurs');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Larry', 'Tanenbaum', 'Toronto Raptors');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Gail', 'Miller', 'Utah Jazz');
INSERT INTO owner(first_name, last_name, owner_team) VALUES('Ted', 'Leonsis', 'Washington Wizards');



select first_name, last_name, jersey_number, position, height, weight
from player 
left join team on player.player_team = team.team_name
left join state on team.team_state = state.state_name
where state_name = 'California';

select first_name, last_name, jersey_number, position, height, weight
from player 
left join team on player.player_team = team.team_name
left join state on team.team_state = state.state_name
where state_name = 'California'
order by first_name;






