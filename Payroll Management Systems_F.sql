SHOW databases;
Drop database if exists Payroll_Management;
CREATE database Payroll_Management;
USE Payroll_Management;
SELECT database();
SHOW tables;


-- Creat Tables
CREATE TABLE IF NOT EXISTS state(
stateId char(2) primary key NOT NULL,
name varchar(50));

INSERT INTO state (stateId, name) VALUES 
('AL', 'Alabama'),
('AK', 'Alaska'),
('AZ', 'Arizona'),
('AR', 'Arkansas'),
('AS', 'American Samoa'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DE', 'Delaware'),
('DC', 'District of Columbia'),
('FL', 'Florida'),
('GA', 'Georgia'),
('GU', 'Guam'),
('HI', 'Hawaii'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('IA', 'Iowa'),
('KS', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('ME', 'Maine'),
('MD', 'Maryland'),
('MA', 'Massachusetts'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MS', 'Mississippi'),
('MO', 'Missouri'),
('MT', 'Montana'),
('NE', 'Nebraska'),
('NV', 'Nevada'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NY', 'New York'),
('NC', 'North Carolina'),
('ND', 'North Dakota'),
('MP', 'Northern Mariana Islands'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('PR', 'Puerto Rico'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TX', 'Texas'),
('TT', 'Trust Territories'),
('UT', 'Utah'),
('VT', 'Vermont'),
('VA', 'Virginia'),
('VI', 'Virgin Islands'),
('WA', 'Washington'),
('WV', 'West Virginia'),
('WI', 'Wisconsin'),
('WY', 'Wyoming');

CREATE TABLE IF NOT EXISTS worklocations(
locationId INT auto_increment primary key,
locationName varchar(100) NOT NULL,
state char(2) NOT NULL,
city varchar(50) NOT NULL,
address varchar(100) NOT NULL,
foreign key (state) references state(stateId));

INSERT INTO worklocations(locationName, state, city, address) VALUES
('Lincoln', 'NE', 'LINCOLN', '1620 PINE LAKE ROAD'),
('La Vista', 'NE', 'LA VISTA', '12515 PORTSIDE PARKWAY'),
('Omaha', 'NE', 'OMAHA', '12300 W DODGE RD'),
('Wichita', 'KS', 'WICHITA', '9700 E KELLOGG'),
('Lenexa', 'KS', 'LENEXA', '9350 MARSHALL DR'),
('N Kansas City', 'MO', 'KANSAS CITY', '1600 NW 88TH ST'),
('Overland Park', 'KS', 'OVERLAND PARK', '12221 BLUE VALLEY PKWY'),
('Kansas City', 'MO', 'KANSAS CITY', '241 E LINWOOD BLVD'),
('Independence', 'MO', 'INDEPENDENCE', '19040 E VALLEY VIEW PKWY'),
('Sioux Falls', 'SD', 'SIOUX FALLS', '3700 S GRANGE AVE'),
('West Des Moines', 'IA', 'WEST DES MOINES', '7205 MILLS CIVIC PKWY'),
('Oklahoma City', 'OK', 'OKLAHOMA CITY', '13200 N WESTERN AVE'),
('Tulsa', 'OK', 'TULSA', '10220 S MEMORIAL DR'),
('Moore', 'OK', 'MOORE', '2651 S. TELEPHONE RD'),
('Parker', 'CO', 'PARKER', '18414 COTTONWOOD DR'),
('Aurora', 'CO', 'AURORA', '1471 S HAVANA ST'),
('E Colorado Springs', 'CO', 'COLORADO SPRINGS', '5885 BARNES RD'),
('Douglas County', 'CO', 'LITTLETON', '8686 PARK MEADOWS CENTER DR'),
('Springfield', 'MO', 'SPRINGFIELD', '279 N. EASTGATE AVENUE'),
('W Colorado Springs', 'CO', 'COLORADO SPRINGS', '5050 N NEVADA AVE'),
('Thornton', 'CO', 'THORNTON', '16375 N. WASHINGTON ST'),
('Timnath', 'CO', 'TIMNATH', '4705 WEITZEL ST'),
('Sheridan', 'CO', 'SHERIDAN', '4000 RIVER POINT PKWY'),
('Denver Bus Ctr', 'CO', 'DENVER', '400 S ZUNI ST'),
('Westminster CO', 'CO', 'WESTMINSTER', '6400 W 92ND AVE'),
('Arvada', 'CO', 'ARVADA', '5195 WADSWORTH BLVD'),
('SW Denver', 'CO', 'LITTLETON', '7900 W QUINCY AVE'),
('Superior', 'CO', 'SUPERIOR', '600 MARSHALL RD'),
('Coralville', 'IA', 'CORALVILLE', '2900 HEARTLAND DR'),
('Rochester MN', 'MN', 'ROCHESTER', '2020 COMMERCE DR NW'),
('St Peters', 'MO', 'SAINT PETERS', '200 COSTCO WAY'),
('Burnsville', 'MN', 'BURNSVILLE', '14050 BURNHAVEN DR'),
('Eden Prairie', 'MN', 'EDEN PRAIRIE', '12011 TECHNOLOGY DR'),
('Davenport', 'IA', 'DAVENPORT', '2790 E 53RD ST'),
('Manchester MO', 'MO', 'MANCHESTER', '301 HIGHLANDS BLVD DRIVE'),
('St Louis Park', 'MN', 'SAINT LOUIS PARK', '5801 W 16TH ST'),
('Eagan', 'MN', 'EAGAN', '995 BLUE GENTIAN RD'),
('Gypsum', 'CO', 'GYPSUM', '170 COOLEY MESA RD'),
('Maple Grove', 'MN', 'MAPLE GROVE', '11330 FOUNTAINS DR'),
('S St Louis', 'MO', 'SAINT LOUIS', '4200 RUSTY RD'),
('Minneapolis Bus Ctr', 'MN', 'MINNEAPOLIS', '3311 BROADWAY ST NE'),
('St Cloud', 'MN', 'SAINT CLOUD', '3636 2ND ST S'),
('Woodbury', 'MN', 'WOODBURY', '7070 TAMARACK ROAD'),
('Coon Rapids', 'MN', 'MINNEAPOLIS', '12547 RIVERDALE BLVD NW'),
('Maplewood', 'MN', 'MAPLEWOOD', '1431 BEAM AVE'),
('McKinney', 'TX', 'MCKINNEY', '3650 W UNIVERSITY DR'),
('Frisco', 'TX', 'FRISCO', '11220 DALLAS PKWY'),
('Lubbock TX', 'TX', 'LUBBOCK', '6020 34TH ST'),
('East Peoria', 'IL', 'EAST PEORIA', '301 W WASHINGTON ST'),
('W Plano', 'TX', 'PLANO', '1701 DALLAS PKWY'),
('E Plano', 'TX', 'PLANO', '3800 N CENTRAL EXPY'),
('Lewisville', 'TX', 'LEWISVILLE', '851 STATE HIGHWAY 121 BYP'),
('Southlake', 'TX', 'SOUTHLAKE', '2601 E STATE HIGHWAY 114'),
('N Fort Worth', 'TX', 'FORT WORTH', '8900 TEHAMA RIDGE PKWY'),
('Little Rock', 'AR', 'LITTLE ROCK', '16901 CHENAL PARKWAY'),
('Dallas', 'TX', 'DALLAS', '8055 CHURCHILL WAY'),
('Dallas Bus Ctr', 'TX', 'DALLAS', '8282 PARK LN'),
('West Fargo ND', 'ND', 'WEST FARGO', '750 23RD AVE EAST'),
('Rockwall', 'TX', 'ROCKWALL', '1225 STATE HIGHWAY 276'),
('Fort Worth', 'TX', 'FORT WORTH', '5300 OVERTON RIDGE BLVD'),
('Bismarck', 'ND', 'BISMARCK', '1325 57TH AVE NE'),
('Baxter', 'MN', 'BAXTER', '13650 ELDER DR'),
('Arlington', 'TX', 'ARLINGTON', '600 W ARBROOK BLVD'),
('Duncanville', 'TX', 'DUNCANVILLE', '250 W HIGHWAY 67'),
('Middleton', 'WI', 'MIDDLETON', '2150 DEMING WAY'),
('Loves Park', 'IL', 'LOVES PARK', '5000 STADIUM DRIVE'),
('Sun Prairie', 'WI', 'SUN PRAIRIE', '2850 HOEPKER RD'),
('Champaign', 'IL', 'CHAMPAIGN', '2002 N. NEIL ST'),
('SE Albuquerque', 'NM', 'ALBUQUERQUE', '500 EUBANK BLVD SE'),
('NW Albuquerque', 'NM', 'ALBUQUERQUE', '9955 COORS BYPASS NW'),
('Albuquerque', 'NM', 'ALBUQUERQUE', '1420 N RENAISSANCE BLVD NE'),
('St Charles', 'IL', 'SAINT CHARLES', '221 S RANDALL RD'),
('Lake In The Hills', 'IL', 'LAKE IN THE HILLS', '250 N RANDALL RD'),
('Naperville', 'IL', 'NAPERVILLE', '1320 S ROUTE 59'),
('Plainfield', 'IL', 'PLAINFIELD', '16261 S. BOULEVARD PLACE'),
('NE Naperville', 'IL', 'NAPERVILLE', '1255 EAST OGDEN AVE'),
('Bloomingdale', 'IL', 'BLOOMINGDALE', '505 W ARMY TRAIL RD'),
('Bolingbrook', 'IL', 'BOLINGBROOK', '830 E BOUGHTON RD'),
('Lake Zurich', 'IL', 'LAKE ZURICH', '680 S RAND RD'),
('Schaumburg', 'IL', 'SCHAUMBURG', '1375 N MEACHAM RD'),
('Oak Brook', 'IL', 'OAK BROOK', '1901 W 22ND ST'),
('Orland Park', 'IL', 'ORLAND PARK', '9915 W 159TH ST'),
('Mt Prospect', 'IL', 'MOUNT PROSPECT', '999 N ELMHURST RD'),
('NE Memphis', 'TN', 'CORDOVA', '2431 N GERMANTOWN PKWY'),
('Melrose Park', 'IL', 'MELROSE PARK', '8400 W NORTH AVE'),
('North Riverside IL', 'IL', 'NORTH RIVERSIDE', '2500 SOUTH HARLEM AVE'),
('Mettawa', 'IL', 'METTAWA', '25901 RIVERWOODS RD'),
('Pewaukee', 'WI', 'PEWAUKEE', '443 PEWAUKEE RD'),
('Duluth', 'MN', 'DULUTH', '4611 W ARROWHEAD RD.'),
('Bedford Park Bus Ctr', 'IL', 'CHICAGO', '7300 S CICERO AVE'),
('Glenview', 'IL', 'GLENVIEW', '2900 PATRIOT BLVD'),
('Niles', 'IL', 'NILES', '7311 N MELVINA AVE'),
('New Berlin', 'WI', 'NEW BERLIN', '15300 WEST GRANGE AVE'),
('SE Memphis', 'TN', 'MEMPHIS', '3775 HACKS CROSS RD'),
('Pleasant Prairie', 'WI', 'PLEASANT PRAIRIE', '7707 94TH AVE'),
('Chicago South Loop', 'IL', 'CHICAGO', '1430 S ASHLAND AVE'),
('Lincoln Park', 'IL', 'CHICAGO', '2746 N CLYBOURN AVE'),
('Menomonee Falls', 'WI', 'MENOMONEE FALLS', 'W162N9235 PERSHING AVE'),
('Merrillville', 'IN', 'MERRILLVILLE', '1310 E 79TH AVE'),
('Grafton', 'WI', 'GRAFTON', '950 PORT WASHINGTON RD'),
('Grand Chute', 'WI', 'GRAND CHUTE', '5401 W. INTEGRITY WAY'),
('Evansville', 'IN', 'EVANSVILLE', '1201 CROSS POINTE PL'),
('Bellevue (Green Bay)', 'WI', 'BELLEVUE', '2355 COSTCO WAY'),
('Cedar Park TX', 'TX', 'CEDAR PARK', '4601 183A TOLL RD'),
('Avon IN', 'IN', 'AVON', '8816 DR. CHARLES NELSON DRIVE'),
('Pflugerville', 'TX', 'PFLUGERVILLE', '1901 KELLY LN'),
('Fortune Park', 'IN', 'INDIANAPOLIS', '9010 MICHIGAN RD'),
('Billings', 'MT', 'BILLINGS', '2290 KING AVE W'),
('Austin', 'TX', 'AUSTIN', '10401 RESEARCH BLVD'),
('Mishawaka', 'IN', 'GRANGER', '625 E UNIVERSITY DR'),
('S Indianapolis', 'IN', 'INDIANAPOLIS', '4628 E COUNTY LINE RD'),
('Castleton', 'IN', 'INDIANAPOLIS', '6110 E 86TH ST'),
('S Austin', 'TX', 'AUSTIN', '4301 W WILLIAM CANNON DR BLDG A STE 100'),
('W Nashville', 'TN', 'NASHVILLE', '6670 CHARLOTTE PIKE'),
('Woodlands', 'TX', 'CONROE', '8185 HIGHWAY 242'),
('Kalamazoo', 'MI', 'KALAMAZOO', '5100 CENTURY AVE'),
('Brentwood', 'TN', 'BRENTWOOD', '98 SEABOARD LN'),
('Ridgeland', 'MS', 'RIDGELAND', '700 HIGHLAND COLONY PKWY'),
('Wyoming', 'MI', 'WYOMING', '4901 WILSON AVE SW'),
('Spanish Fork', 'UT', 'SPANISH FORK', '273 E 1000 N'),
('Orem', 'UT', 'OREM', '648 E 800 S'),
('Louisville', 'KY', 'LOUISVILLE', '3408 BARDSTOWN RD'),
('Cypress TX', 'TX', 'CYPRESS', '26960 NW FREEWAY'),
('NE Louisville', 'KY', 'LOUISVILLE', '5020 NORTON HEALTHCARE BLVD'),
('Humble', 'TX', 'HUMBLE', '21802 TOWNSEN BLVD W.'),
('Willowbrook', 'TX', 'HOUSTON', '12405 N GESSNER RD'),
('Lehi', 'UT', 'LEHI', '198 N 1200 E'),
('Grand Rapids', 'MI', 'GRAND RAPIDS', '5100 28TH ST SE'),
('Sonterra Park', 'TX', 'SAN ANTONIO', '1201 N LOOP 1604 E'),
('Murray', 'UT', 'MURRAY', '5201 S INTERMOUNTAIN DR'),
('Sandy', 'UT', 'SANDY', '11100 S AUTO MALL DR'),
('Bountiful', 'UT', 'WEST BOUNTIFUL', '573 W 100 N'),
('Salt Lake City', 'UT', 'SALT LAKE CITY', '1818 S 300 W'),
('Fort Wayne', 'IN', 'FORT WAYNE', '5110 VALUE DR'),
('West Valley', 'UT', 'SALT LAKE CITY', '3747 S 2700 W'),
('Saratoga Springs', 'UT', 'SARATOGA SPRINGS', '1083 N REDWOOD RD.'),
('NW San Antonio', 'TX', 'SAN ANTONIO', '5611 UTSA BLVD'),
('Selma', 'TX', 'SELMA', '15330 IH-35 NORTH'),
('El Paso', 'TX', 'EL PASO', '6101 GATEWAY BLVD W SUITE #1'),
('South Jordan', 'UT', 'SOUTH JORDAN', '3571 W 10400 S'),
('W Katy', 'TX', 'KATY', '23645 KATY FREEWAY'),
('South Ogden', 'UT', 'OGDEN', '3656 WALL AVE'),
('Bunker Hill', 'TX', 'HOUSTON', '1150 BUNKER HILL RD'),
('Murfreesboro', 'TN', 'MURFREESBORO', '1524 BEASIE RD'),
('W San Antonio', 'TX', 'SAN ANTONIO', '191 W LOOP 1604 S'),
('Galleria', 'TX', 'HOUSTON', '3836 RICHMOND AVE'),
('Stafford Bus Ctr', 'TX', 'STAFFORD', '12717 NETWORK DR'),
('Sugar Land', 'TX', 'SUGAR LAND', '17520 SOUTHWEST FWY'),
('Pearland', 'TX', 'PEARLAND', '3500 BUSINESS CENTER DRIVE'),
('Webster', 'TX', 'WEBSTER', '1310 JASMINE AVE'),
('Idaho Falls', 'ID', 'IDAHO FALLS', '2495 E. LINCOLN ROAD'),
('Florence', 'KY', 'FLORENCE', '800 HEIGHTS BLVD'),
('Traverse City', 'MI', 'TRAVERSE CITY', '125 E SOUTH AIRPORT RD'),
('Huntsville', 'AL', 'HUNTSVILLE', '1205 N. MEMORIAL PKWY'),
('Springdale', 'OH', 'SPRINGDALE', '1100 E KEMPER RD'),
('Pocatello', 'ID', 'POCATELLO', '305 W QUINN RD'),
('Bozeman', 'MT', 'BOZEMAN', '2505 CATRON ST'),
('East Lansing', 'MI', 'EAST LANSING', '2540 E SAGINAW HIGHWAY'),
('Deerfield', 'OH', 'CINCINNATI', '9691 WATERSTONE BLVD'),
('Lafayette', 'LA', 'LAFAYETTE', '201 MEADOW FARM RD'),
('Centerville', 'OH', 'CENTERVILLE', '5300 CORNERSTONE NORTH BLVD'),
('Lexington', 'KY', 'LEXINGTON', '1500 FITZGERALD CT'),
('Baton Rouge', 'LA', 'BATON ROUGE', '10000 DAWNADELE AVE BLDG A'),
('Midland', 'MI', 'MIDLAND', '4816 BAY CITY RD'),
('Hoover', 'AL', 'HOOVER', '3650 GALLERIA CIR'),
('Pittsfield Township', 'MI', 'ANN ARBOR', '771 AIRPORT BLVD'),
('Perrysburg', 'OH', 'PERRYSBURG', '26400 DIXIE HWY'),
('Green Oak Township', 'MI', 'BRIGHTON', '6700 WHITMORE LAKE RD'),
('Toledo', 'OH', 'TOLEDO', '3405 W CENTRAL AVE'),
('Fort Oglethorpe', 'GA', 'RINGGOLD', '100 COBB PKWY'),
('Haggerty', 'MI', 'LIVONIA', '20000 HAGGERTY RD'),
('Commerce Township', 'MI', 'COMMERCE TOWNSHIP', '3000 COMMERCE XING'),
('Middlebelt', 'MI', 'LIVONIA', '13700 MIDDLEBELT RD'),
('NW Columbus', 'OH', 'PLAIN CITY', '7300 STATE ROUTE 161 E'),
('Bloomfield', 'MI', 'BLOOMFIELD', '2343 S TELEGRAPH RD'),
('Auburn Hills', 'MI', 'AUBURN HILLS', '400 BROWN RD'),
('Madison Heights', 'MI', 'MADISON HEIGHTS', '30550 STEPHENSON HWY'),
('Columbus', 'OH', 'COLUMBUS', '1500 GEMINI PL'),
('Helena', 'MT', 'HELENA', '2195 E CUSTER AVE'),
('Easton OH', 'OH', 'COLUMBUS', '3888 STELZER RD'),
('Lakeside', 'MI', 'SHELBY TOWNSHIP', '45460 MARKET ST'),
('Farragut', 'TN', 'KNOXVILLE', '10745 KINGSTON PIKE'),
('Roseville MI', 'MI', 'ROSEVILLE', '27118 GRATIOT AVE'),
('New Orleans', 'LA', 'NEW ORLEANS', '3900 DUBLIN ST'),
('St George', 'UT', 'SAINT GEORGE', '835 N 3050 E'),
('Prescott', 'AZ', 'PRESCOTT', '3911 E STATE ROUTE 69'),
('Twin Falls', 'ID', 'TWIN FALLS', '731 POLE LINE RD'),
('Mesa', 'AZ', 'MESA', '1444 S SOSSAMAN RD'),
('Scottsdale', 'AZ', 'SCOTTSDALE', '15255 N HAYDEN RD'),
('Cave Creek', 'AZ', 'PHOENIX', '2450 E BEARDSLEY RD'),
('Paradise Valley', 'AZ', 'PHOENIX', '4570 E CACTUS RD'),
('SE Gilbert', 'AZ', 'GILBERT', '2887 S MARKET ST'),
('Montgomery', 'AL', 'MONTGOMERY', '8251 EASTCHASE PKWY'),
('Gilbert', 'AZ', 'GILBERT', '1415 N ARIZONA AVE');

CREATE TABLE IF NOT EXISTS positions(
positionId int auto_increment primary key,
positionName varchar(100) NOT NULL,
description varchar(1000));

INSERT INTO positions(positionName, description) VALUES 
('CEO', 'Sets company strategy and oversees overall performance.'),
('CTO', 'Manages technology strategy and innovation.'),
('CFO', 'Manages financial health and planning.'),
('CIO', 'Manages information technology and systems.'),
('VP of Engineering', 'Leads engineering, product development, and strategy.'),
('Software Development Manager', 'Manages software development teams and projects.'),
('Front-End Developer', 'Designs user interfaces and experiences.'),
('Back-End Developer', 'Develops server-side applications and databases.'),
('DevOps Engineer', 'Focuses on automation and optimization of development processes.'),
('Database Administrator (DBA)', 'Manages and maintains databases.'),
('Quality Assurance (QA) Engineer', 'Ensures software quality through testing and defect identification.'),
('Systems Architect', 'Designs overall system architecture.'),
('Network Engineer', 'Manages network infrastructure.'),
('Security Engineer', 'Focuses on protecting digital assets and data.'),
('VP of Product Management', 'Leads product strategy and management.'),
('Product Manager', 'Manages product development, features, and user feedback.'),
('Product Owner', 'Represents the customer and guides feature development.'),
('UX/UI Designer', 'Designs user interfaces and experiences.'),
('Business Analyst', 'Analyzes data and requirements for business needs.'),
('IT Manager', 'Manages IT operations and support.'),
('Systems Administrator', 'Maintains servers and systems.'),
('Helpdesk Support', 'Provides technical support to employees.'),
('IT Support Specialist', 'Resolves technical problems and offers user support.'),
('Network Administrator', 'Manages network infrastructure.'),
('IT Security Specialist', 'Ensures digital asset and data security.'),
('IT Procurement Manager', 'Manages hardware and software procurement.'),
('Project Manager', 'Leads and manages projects to meet objectives.'),
('Scrum Master', 'Facilitates Agile development processes.'),
('Agile Coach', 'Guides teams in adopting and improving Agile practices.'),
('Project Coordinator', 'Assists project managers in planning and tracking projects.'),
('Data Scientist', 'Analyzes data for insights and decision-making.'),
('Data Analyst', 'Collects and interprets data for insights.'),
('Business Intelligence (BI) Analyst', 'Transforms data into actionable insights.'),
('Data Engineer', 'Builds and maintains data pipelines and architecture.'),
('Chief Data Officer', 'Oversees data strategy and compliance.'),
('VP of Sales', 'Leads sales team and develops sales strategies.'),
('VP of Marketing', 'Leads marketing department and sets marketing strategies.'),
('Account Executive', 'Sells products and manages client relationships.'),
('Digital Marketing Manager', 'Manages digital marketing strategies and campaigns.'),
('Sales Engineer', 'Provides technical expertise in selling technical products.'),
('Content Marketing Specialist', 'Creates and manages content to engage customers.'),
('HR Manager', 'Manages HR functions, including recruitment and policies.'),
('HR Generalist', 'Handles various HR tasks, including onboarding and benefits.'),
('Talent Acquisition Specialist', 'Focuses on recruitment and talent acquisition.'),
('HR Coordinator', 'Assists with HR tasks and coordinates HR activities.'),
('Training and Development Specialist', 'Focuses on employee training and development programs.');


CREATE TABLE IF NOT EXISTS department(
departmentId int auto_increment primary key,
departmentName varchar(100) NOT NULL,
departmentManager bigint);

INSERT INTO department(departmentName) VALUES
('Executive Leadership'),
('Engineering and Development'),
('Product Management'),
('IT Operations and Support'),
('Project Management'),
('Data and Analytics'),
('Sales and Marketing'),
('Human Resources');

CREATE TABLE IF NOT EXISTS employeetype(
employeetypeId int auto_increment primary key,
employeetypeName varchar(50) NOT NULL);

INSERT INTO employeetype(employeetypeName) VALUES
('Full-Time Employees (FTEs)'),
('Part-Time Employees'),
('Contract Employees'),
('Temporary Employees'),
('Interns'),
('Freelancers/Independent Contractors'),
('Consultants'),
('Seasonal Employees'),
('Remote/Telecommuting Employees'),
('Shift Workers'),
('Temporary-to-Permanent Employees'),
('On-Call Employees'),
('Freelance or Gig Workers'),
('Probationary Employees'),
('Salaried Employees'),
('Hourly Employees');

CREATE TABLE IF NOT EXISTS statetax(
stateId  char(2) primary key NOT NULL,
percentage float NOT NULL,
foreign key (stateId) references state(stateId) );

INSERT INTO statetax(stateId, percentage) VALUES
('AL', 6.5),
('AK', 0),
('AZ', 4.9),
('AR', 6.5),
('CA', 8.84),
('CO', 4.55),
('CT', 7.5),
('DE', 8.7),
('FL', 0),
('GA', 5.75),
('HI', 4.4),
('ID', 6.92),
('IL', 7),
('IN', 5.25),
('IA', 9.8),
('KS', 7),
('KY', 5),
('LA', 4.45),
('ME', 8.93),
('MD', 8.25),
('MA', 8),
('MI', 6),
('MN', 9.8),
('MS', 3),
('MO', 4),
('MT', 6.75),
('NE', 7.81),
('NV', 0),
('NH', 0),
('NJ', 10.5),
('NM', 5.9),
('NY', 6.5),
('NC', 2.5),
('ND', 1.41),
('OH', 0.26),
('OK', 6),
('OR', 6.6),
('PA', 9.99),
('RI', 7),
('SC', 5),
('SD', 0),
('TN', 2),
('TX', 0),
('UT', 4.95),
('VT', 8.5),
('VA', 6),
('WA', 0),
('WV', 6.5),
('WI', 7.9),
('WY', 0);

CREATE TABLE IF NOT EXISTS federaltax(
percentage float NOT NULL);

INSERT INTO federaltax(percentage) VALUES
(3);

CREATE TABLE IF NOT EXISTS Deduction(
deductionId int auto_increment primary key,
deductionName varchar(100) not null,
deductionAmount float not null);

INSERT INTO deduction (deductionName, deductionAmount) VALUES
('Retirement Contributions 401(K)', 10),
('Health Insurance Premiums', 3),
('Life and Disability Insurance', 2),
('Flexible Spending Accounts', 1),
('Stock Purchase Plans', 4);

CREATE TABLE IF NOT EXISTS payperiod(
payperiodId int auto_increment primary key,
payperiodName varchar(100) not null);

INSERT INTO payperiod (payperiodname) VALUES
('Monthly Pay Period'),
('Biweekly Pay Period'),
('Semi-Monthly Pay Period'),
('Weekly Pay Period'),
('Bi-Monthly Pay Period'),
('Quarterly Pay Period'),
('Annually'),
('Irregular Pay Period');


CREATE TABLE IF NOT EXISTS salarygrade(
salarygradeId int auto_increment primary key,
salaryMax bigint NOT NULL,
salaryMin bigint NOT NULL);

INSERT INTO salarygrade (salaryMax, salaryMin) VALUES
(80000, 60000),
(70000, 50000),
(60000, 40000),
(50000, 30000),
(40000, 20000),
(35000, 15000);


CREATE TABLE IF NOT EXISTS Employees(
employeeId bigint auto_increment primary key,
locationId int,
email varchar(100) UNIQUE NOT NULL,
phoneOffice varchar(20),
positionId int,
departmentId int,
employeetypeId int,
foreign key (locationId) references worklocations(locationId),
foreign key (positionId) references positions(positionId),
foreign key (departmentId) references department(departmentId),
foreign key (employeetypeId) references employeetype(employeetypeId)
);


CREATE TABLE IF NOT EXISTS PersonDetail(
PersonDetailId bigint auto_increment primary key,
employeeId bigint UNIQUE,
firstName varchar(50),
lastName varchar(50),
birthDate date,
street varchar(200),
city varchar(100),
county varchar(50),
state char(2),
zipcode varchar(20),
foreign key (employeeId) references employees(employeeId),
foreign key (state) references state(stateId)
);

Insert into Employees (locationId, email, phoneOffice, positionId, departmentId, employeetypeId) values (20, 'Smith.John@dallasit.com', '(123) 456-7890', 46, 8, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'John', 'Smith', '1985-05-15', '123 Main St', 'Anytown', 'County A', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId, employeetypeId) values (35, 'Johnson.Mary@dallasit.com', '(234) 567-8901', 8, 2, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Mary', 'Johnson', '1990-02-28', '456 Elm St', 'Smallville', 'County B', 'TX', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId, employeetypeId) values (7, 'Davis.David@dallasit.com', '(345) 678-9012', 33, 6, 1); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'David', 'Davis', '1978-11-20', '789 Oak St', 'Metro City', 'County C', 'NY', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId, employeetypeId) values (92, 'Wilson.Sarah@dallasit.com', '(456) 789-0123', 44, 8, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Sarah', 'Wilson', '1982-08-12', '101 Maple St', 'Lakeside', 'County D', 'FL', '67890');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId, employeetypeId) values (33, 'Brown.Michael@dallasit.com', '(567) 890-1234', 32, 6, 1); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Michael', 'Brown', '1995-03-07', '234 Birch St', 'Riverside', 'County E', 'OH', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (145, 'Jones.Emily@dallasit.com', '(678) 901-2345', 36, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Jones', '1989-09-25', '567 Pine St', 'Springdale', 'County F', 'WA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (116, 'Anderson.William@dallasit.com', '(789) 012-3456', 28, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Anderson', '1980-06-14', '890 Cedar St', 'Hillsboro', 'County G', 'OR', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (183, 'White.Olivia@dallasit.com', '(890) 123-4567', 34, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Olivia', 'White', '1998-12-30', '345 Oak St', 'Meadowville', 'County H', 'IL', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (45, 'Thomas.James@dallasit.com', '(901) 234-5678', 31, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'James', 'Thomas', '1976-04-03', '123 Elm St', 'River City', 'County I', 'GA', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (105, 'Miller.Sophia@dallasit.com', '(234) 567-8901', 21, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Sophia', 'Miller', '2000-07-17', '789 Pine St', 'Lakeside', 'County J', 'TX', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (116, 'Martinez.Daniel@dallasit.com', '(345) 678-9012', 13, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Daniel', 'Martinez', '1987-10-09', '456 Maple St', 'Mountainview', 'County K', 'CA', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (123, 'Harris.Ava@dallasit.com', '(456) 789-0123', 41, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Ava', 'Harris', '1993-01-24', '101 Birch St', 'Parksville', 'County L', 'NY', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (86, 'Taylor.Benjamin@dallasit.com', '(567) 890-1234', 27, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Taylor', '1983-03-18', '234 Cedar St', 'Woodville', 'County M', 'OH', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (140, 'Clark.Mia@dallasit.com', '(678) 901-2345', 42, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Mia', 'Clark', '1996-06-02', '890 Oak St', 'Riverdale', 'County N', 'IL', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (187, 'Lewis.Logan@dallasit.com', '(789) 012-3456', 5, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Logan', 'Lewis', '1975-09-19', '567 Pine St', 'Springville', 'County O', 'FL', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (18, 'Scott.Harper@dallasit.com', '(890) 123-4567', 17, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Harper', 'Scott', '1984-12-11', '123 Elm St', 'Meadowview', 'County P', 'GA', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (87, 'Turner.Matthew@dallasit.com', '(901) 234-5678', 41, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Matthew', 'Turner', '1997-04-26', '456 Cedar St', 'Hillsboro', 'County Q', 'TX', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (50, 'Walker.Amelia@dallasit.com', '(123) 456-7890', 22, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Amelia', 'Walker', '1981-08-04', '789 Birch St', 'Mountainview', 'County R', 'CA', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (44, 'Hall.Elijah@dallasit.com', '(234) 567-8901', 2, 1); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Elijah', 'Hall', '1991-11-08', '101 Maple St', 'River City', 'County S', 'NY', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (118, 'Young.Grace@dallasit.com', '(345) 678-9012', 18, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Grace', 'Young', '1999-05-23', '234 Cedar St', 'Woodville', 'County T', 'OH', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (33, 'Green.Jackson@dallasit.com', '(456) 789-0123', 46, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Jackson', 'Green', '1971-02-15', '567 Oak St', 'Springville', 'County U', 'IL', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (9, 'King.Charlotte@dallasit.com', '(567) 890-1234', 22, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Charlotte', 'King', '1992-07-07', '890 Pine St', 'Parksville', 'County V', 'GA', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (24, 'Turner.Oliver@dallasit.com', '(678) 901-2345', 16, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Oliver', 'Turner', '2002-10-12', '123 Main St', 'Riverdale', 'County W', 'TX', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (75, 'Adams.Isabella@dallasit.com', '(789) 012-3456', 19, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Isabella', 'Adams', '1972-11-28', '456 Elm St', 'Meadowview', 'County X', 'CA', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (149, 'Allen.Aiden@dallasit.com', '(890) 123-4567', 21, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Aiden', 'Allen', '1988-03-01', '789 Oak St', 'Hillsboro', 'County Y', 'NY', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (13, 'Bailey.Mia@dallasit.com', '(901) 234-5678', 1, 1); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Mia', 'Bailey', '1994-05-03', '101 Maple St', 'River City', 'County Z', 'OH', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (190, 'Bennett.James@dallasit.com', '(234) 567-8901', 44, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'James', 'Bennett', '1974-07-16', '234 Cedar St', 'Parksville', 'County A', 'IL', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (18, 'Brooks.Ava@dallasit.com', '(345) 678-9012', 3, 1); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Ava', 'Brooks', '1999-08-21', '567 Pine St', 'Springville', 'County B', 'GA', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (57, 'Butler.Benjamin@dallasit.com', '(456) 789-0123', 18, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Butler', '1986-04-09', '890 Elm St', 'Woodville', 'County C', 'TX', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (173, 'Campbell.Emily@dallasit.com', '(567) 890-1234', 15, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Campbell', '1990-01-30', '123 Oak St', 'Mountainview', 'County D', 'CA', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (120, 'Carter.William@dallasit.com', '(678) 901-2345', 42, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Carter', '1977-09-13', '456 Pine St', 'Lakeside', 'County E', 'NY', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (139, 'Clark.Olivia@dallasit.com', '(789) 012-3456', 40, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Olivia', 'Clark', '1982-02-25', '789 Cedar St', 'Riverdale', 'County F', 'OH', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (66, 'Collins.Daniel@dallasit.com', '(890) 123-4567', 23, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Daniel', 'Collins', '1996-06-16', '101 Elm St', 'Hillsboro', 'County G', 'IL', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (52, 'Cooper.Sophia@dallasit.com', '(901) 234-5678', 35, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Sophia', 'Cooper', '2001-04-10', '234 Oak St', 'Meadowview', 'County H', 'GA', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (58, 'Davis.Michael@dallasit.com', '(123) 456-7890', 32, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Michael', 'Davis', '1973-10-23', '567 Birch St', 'Parksville', 'County I', 'TX', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (6, 'Evans.Emily@dallasit.com', '(234) 567-8901', 38, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Evans', '1989-03-14', '890 Maple St', 'Springville', 'County J', 'CA', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (148, 'Fisher.David@dallasit.com', '(345) 678-9012', 40, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'David', 'Fisher', '1971-08-05', '123 Cedar St', 'River City', 'County K', 'NY', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (28, 'Foster.Harper@dallasit.com', '(456) 789-0123', 25, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Harper', 'Foster', '1992-12-18', '456 Elm St', 'Woodville', 'County L', 'OH', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (47, 'Garcia.Grace@dallasit.com', '(567) 890-1234', 27, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Grace', 'Garcia', '1987-06-07', '789 Oak St', 'Mountainview', 'County M', 'IL', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (104, 'Gray.William@dallasit.com', '(678) 901-2345', 41, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Gray', '2000-01-11', '101 Pine St', 'Lakeside', 'County N', 'GA', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (18, 'Green.Benjamin@dallasit.com', '(789) 012-3456', 17, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Green', '1978-04-03', '234 Maple St', 'Riverdale', 'County O', 'TX', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (151, 'Hall.Amelia@dallasit.com', '(890) 123-4567', 30, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Amelia', 'Hall', '1995-07-26', '567 Cedar St', 'Hillsboro', 'County P', 'CA', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (53, 'Harris.Sophia@dallasit.com', '(901) 234-5678', 34, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Sophia', 'Harris', '1980-12-09', '890 Main St', 'Meadowview', 'County Q', 'NY', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (150, 'Hill.Michael@dallasit.com', '(234) 567-8901', 13, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Michael', 'Hill', '1999-11-06', '123 Birch St', 'Parksville', 'County R', 'OH', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (151, 'Howard.Emily@dallasit.com', '(345) 678-9012', 30, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Howard', '1979-05-08', '456 Pine St', 'Springville', 'County S', 'IL', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (172, 'Hughes.William@dallasit.com', '(456) 789-0123', 30, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Hughes', '1988-07-29', '789 Cedar St', 'River City', 'County T', 'GA', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (9, 'Jackson.Charlotte@dallasit.com', '(567) 890-1234', 45, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Charlotte', 'Jackson', '1993-03-17', '234 Oak St', 'Woodville', 'County U', 'TX', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (127, 'James.Mia@dallasit.com', '(678) 901-2345', 32, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Mia', 'James', '1986-10-22', '101 Elm St', 'Mountainview', 'County V', 'CA', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (38, 'Jenkins.Oliver@dallasit.com', '(789) 012-3456', 40, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Oliver', 'Jenkins', '2002-06-28', '567 Maple St', 'Lakeside', 'County W', 'NY', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (139, 'Johnson.Benjamin@dallasit.com', '(890) 123-4567', 34, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Johnson', '1977-01-31', '890 Cedar St', 'Riverdale', 'County X', 'OH', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (21, 'Lewis.Ethan@dallasit.com', '(901) 234-5678', 40, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Ethan', 'Lewis', '1981-04-14', '123 Oak St', 'Meadowville', 'County A', 'IL', '45612');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (79, 'Martinez.Olivia@dallasit.com', '(123) 456-7890', 17, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Olivia', 'Martinez', '1998-07-27', '456 Elm St', 'Hillsboro', 'County B', 'TX', '78934');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (3, 'Miller.William@dallasit.com', '(234) 567-8901', 20, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Miller', '1984-09-16', '789 Birch St', 'Springville', 'County C', 'CA', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (109, 'Mitchell.Sophia@dallasit.com', '(345) 678-9012', 37, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Sophia', 'Mitchell', '1976-03-25', '101 Cedar St', 'Lakeside', 'County D', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (116, 'Murphy.Jackson@dallasit.com', '(456) 789-0123', 4, 1); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Jackson', 'Murphy', '1990-01-03', '234 Pine St', 'Parksville', 'County E', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (166, 'Nelson.Charlotte@dallasit.com', '(567) 890-1234', 36, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Charlotte', 'Nelson', '1972-11-30', '567 Maple St', 'Woodville', 'County F', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (68, 'Parker.Daniel@dallasit.com', '(678) 901-2345', 46, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Daniel', 'Parker', '1997-05-12', '890 Oak St', 'River City', 'County G', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (148, 'Perez.Mia@dallasit.com', '(789) 012-3456', 23, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Mia', 'Perez', '1989-06-29', '123 Birch St', 'Riverdale', 'County H', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (86, 'Phillips.Logan@dallasit.com', '(890) 123-4567', 16, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Logan', 'Phillips', '1995-12-21', '456 Cedar St', 'Mountainview', 'County I', 'IL', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (25, 'Powell.William@dallasit.com', '(901) 234-5678', 39, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Powell', '1983-08-07', '789 Elm St', 'Meadowview', 'County J', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (9, 'Rivera.Harper@dallasit.com', '(234) 567-8901', 42, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Harper', 'Rivera', '1991-02-18', '101 Main St', 'Springville', 'County K', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (163, 'Roberts.Emily@dallasit.com', '(345) 678-9012', 39, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Roberts', '1970-07-04', '234 Cedar St', 'Lakeside', 'County L', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (76, 'Robinson.Oliver@dallasit.com', '(456) 789-0123', 46, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Oliver', 'Robinson', '1999-10-29', '567 Oak St', 'Parksville', 'County M', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (41, 'Rodriguez.Benjamin@dallasit.com', '(567) 890-1234', 28, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Rodriguez', '1986-06-23', '890 Pine St', 'Woodville', 'County N', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (149, 'Sanchez.Isabella@dallasit.com', '(678) 901-2345', 46, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Isabella', 'Sanchez', '1978-03-17', '123 Elm St', 'River City', 'County O', 'IL', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (49, 'Scott.Elijah@dallasit.com', '(789) 012-3456', 21, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Elijah', 'Scott', '2001-09-11', '456 Birch St', 'Riverdale', 'County P', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (50, 'Simmons.Ava@dallasit.com', '(890) 123-4567', 43, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Ava', 'Simmons', '1987-11-05', '789 Maple St', 'Mountainview', 'County Q', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (62, 'Stewart.William@dallasit.com', '(901) 234-5678', 37, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Stewart', '1994-08-02', '101 Cedar St', 'Meadowview', 'County R', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (145, 'Taylor.Emily@dallasit.com', '(123) 456-7890', 20, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Taylor', '1982-12-19', '234 Oak St', 'Springville', 'County S', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (92, 'Thomas.David@dallasit.com', '(234) 567-8901', 14, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'David', 'Thomas', '1977-05-09', '567 Elm St', 'Lakeside', 'County T', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (135, 'Torres.Harper@dallasit.com', '(345) 678-9012', 43, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Harper', 'Torres', '1993-04-24', '890 Main St', 'Parksville', 'County U', 'IL', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (85, 'Turner.Logan@dallasit.com', '(456) 789-0123', 27, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Logan', 'Turner', '1996-01-28', '123 Pine St', 'Woodville', 'County V', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (98, 'Walker.Mia@dallasit.com', '(567) 890-1234', 10, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Mia', 'Walker', '1984-08-13', '456 Oak St', 'River City', 'County W', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (180, 'Ward.Benjamin@dallasit.com', '(678) 901-2345', 15, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Ward', '1980-06-16', '789 Birch St', 'Riverdale', 'County X', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (35, 'Washington.Amelia@dallasit.com', '(789) 012-3456', 8, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Amelia', 'Washington', '2000-03-19', '101 Cedar St', 'Mountainview', 'County Y', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (42, 'White.Michael@dallasit.com', '(890) 123-4567', 44, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Michael', 'White', '1971-09-20', '234 Elm St', 'Meadowview', 'County Z', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (182, 'Williams.Olivia@dallasit.com', '(901) 234-5678', 43, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Olivia', 'Williams', '1988-02-23', '567 Cedar St', 'Springville', 'County A', 'IL', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (161, 'Wilson.Emily@dallasit.com', '(234) 567-8901', 12, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Wilson', '1992-05-15', '890 Pine St', 'Lakeside', 'County B', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (53, 'Wood.William@dallasit.com', '(345) 678-9012', 1, 1); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Wood', '1979-12-31', '123 Oak St', 'Parksville', 'County C', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (136, 'Wright.Charlotte@dallasit.com', '(456) 789-0123', 40, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Charlotte', 'Wright', '1998-03-05', '456 Maple St', 'Woodville', 'County D', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (135, 'Young.Sophia@dallasit.com', '(567) 890-1234', 10, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Sophia', 'Young', '1981-01-07', '789 Cedar St', 'River City', 'County E', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (127, 'Adams.Jackson@dallasit.com', '(678) 901-2345', 29, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Jackson', 'Adams', '2002-06-20', '101 Birch St', 'Riverdale', 'County F', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (41, 'Allen.Daniel@dallasit.com', '(789) 012-3456', 27, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Daniel', 'Allen', '1972-04-22', '234 Oak St', 'Mountainview', 'County G', 'IL', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (190, 'Bailey.Benjamin@dallasit.com', '(890) 123-4567', 5, 2); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Bailey', '1991-08-26', '567 Main St', 'Meadowview', 'County H', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (14, 'Bennett.Grace@dallasit.com', '(901) 234-5678', 29, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Grace', 'Bennett', '1986-10-29', '890 Pine St', 'Springville', 'County I', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (8, 'Brooks.Oliver@dallasit.com', '(123) 456-7890', 45, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Oliver', 'Brooks', '1990-03-16', '123 Cedar St', 'Lakeside', 'County J', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (50, 'Carter.Logan@dallasit.com', '(234) 567-8901', 20, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Logan', 'Carter', '1975-07-12', '456 Elm St', 'Parksville', 'County K', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (142, 'Clark.Ava@dallasit.com', '(345) 678-9012', 39, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Ava', 'Clark', '1983-02-14', '789 Cedar St', 'River City', 'County L', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (39, 'Collins.William@dallasit.com', '(456) 789-0123', 30, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'William', 'Collins', '1994-05-18', '101 Pine St', 'Riverdale', 'County M', 'IL', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (7, 'Davis.Emily@dallasit.com', '(567) 890-1234', 18, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Emily', 'Davis', '1978-09-25', '234 Birch St', 'Woodville', 'County N', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (136, 'Evans.Daniel@dallasit.com', '(678) 901-2345', 33, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Daniel', 'Evans', '2001-06-19', '567 Oak St', 'Mountainview', 'County O', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (147, 'Fisher.William@dallasit.com', '(789) 012-3456', 21, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate,street, city, county, state, zipcode) values (@empid,'William', 'Fisher', '1984-08-21', '890 Main St', 'Meadowview', 'County P', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (65, 'Garcia.Mia@dallasit.com', '(890) 123-4567', 33, 6); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Mia', 'Garcia', '1997-03-15', '123 Cedar St', 'Springville', 'County Q', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (22, 'Gray.Charlotte@dallasit.com', '(901) 234-5678', 28, 5); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Charlotte', 'Gray', '1993-12-09', '456 Elm St', 'Lakeside', 'County R', 'CA', '12345');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (64, 'Green.Sophia@dallasit.com', '(234) 567-8901', 42, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Sophia', 'Green', '1971-10-01', '789 Cedar St', 'Parksville', 'County S', 'IL', '23456');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (128, 'Hall.Logan@dallasit.com', '(345) 678-9012', 36, 7); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Logan', 'Hall', '1987-11-26', '101 Elm St', 'River City', 'County T', 'NY', '56789');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (21, 'Harris.Harper@dallasit.com', '(456) 789-0123', 25, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Harper', 'Harris', '1999-02-07', '234 Pine St', 'Riverdale', 'County U', 'OH', '34567');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (99, 'Hill.David@dallasit.com', '(567) 890-1234', 43, 8); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'David', 'Hill', '1976-06-04', '567 Maple St', 'Woodville', 'County V', 'GA', '78901');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (158, 'Hughes.Benjamin@dallasit.com', '(678) 901-2345', 18, 3); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Benjamin', 'Hughes', '1992-04-11', '890 Oak St', 'Mountainview', 'County W', 'TX', '45678');
Insert into Employees (locationId, email, phoneOffice, positionId, departmentId) values (165, 'Jackson.Ava@dallasit.com', '(789) 012-3456', 21, 4); SELECT LAST_INSERT_ID() into @empid; insert into PersonDetail (employeeId, firstName, lastName, birthDate, street, city, county, state, zipcode) values (@empid,'Ava', 'Jackson', '1980-01-18', '123 Main St', 'Meadowview', 'County X', 'CA', '12345');


CREATE TABLE IF NOT EXISTS EmployementDetail(
employementdetailId  bigint auto_increment primary key,
employeeId bigint UNIQUE,
employeetypeId int,
salarygradeId int,
employementstartdate date,
employementenddate date,
workstartDate date,
workendDate date,
foreign key (employeeId) references employees(employeeId));

INSERT INTO employementdetail(employeeId, employeetypeId, salarygradeId, employementstartdate, employementenddate, workstartdate, workenddate)
VALUES
(1, 4, 4, '1972-04-15', NULL, '1972-04-15', NULL),
(2, 3, 2, '1975-10-02', NULL, '1975-10-02', NULL),
(3, 1, 2, '1978-06-20', NULL, '1978-06-20', NULL),
(4, 5, 6, '1981-11-10', NULL, '1981-11-10', NULL),
(5, 2, 2, '1984-08-07', NULL, '1984-08-07', NULL),
(6, 1, 6, '1987-12-22', NULL, '1987-12-22', NULL),
(7, 5, 4, '1990-09-18', NULL, '1990-09-18', NULL),
(8, 4, 1, '1993-04-04', NULL, '1993-04-04', NULL),
(9, 1, 6, '1995-11-26', NULL, '1995-11-26', NULL),
(10, 1, 3, '1998-07-11', NULL, '1998-07-11', NULL),
(11, 5, 5, '2001-01-30', NULL, '2001-01-30', NULL),
(12, 3, 1, '2003-08-22', NULL, '2003-08-22', NULL),
(13, 3, 3, '2006-03-05', NULL, '2006-03-05', NULL),
(14, 4, 3, '2008-09-16', NULL, '2008-09-16', NULL),
(15, 4, 3, '2011-04-25', NULL, '2011-04-25', NULL),
(16, 5, 3, '2013-10-14', NULL, '2013-10-14', NULL),
(17, 2, 6, '1972-04-15', NULL, '1972-04-15', NULL),
(18, 1, 5, '1974-10-02', '1978-03-14', '1974-10-02', '1978-03-14'),
(19, 1, 1, '1977-06-20', NULL, '1977-06-20', NULL),
(20, 4, 6, '1979-11-10', '1983-05-28', '1979-11-10', '1983-05-28'),
(21, 2, 3, '1982-08-07', NULL, '1982-08-07', NULL),
(22, 5, 2, '1984-12-22', '1988-06-03', '1984-12-22', '1988-06-03'),
(23, 2, 3, '1987-09-18', NULL, '1987-09-18', NULL),
(24, 2, 6, '1989-04-04', '1992-10-15', '1989-04-04', '1992-10-15'),
(25, 1, 2, '1991-11-26', NULL, '1991-11-26', NULL),
(26, 4, 5, '1994-07-11', NULL, '1994-07-11', NULL),
(27, 5, 3, '1997-01-30', NULL, '1997-01-30', NULL),
(28, 2, 6, '1999-08-22', NULL, '1999-08-22', NULL),
(29, 3, 2, '2002-03-05', NULL, '2002-03-05', NULL),
(30, 3, 6, '2004-09-16', NULL, '2004-09-16', NULL),
(31, 3, 5, '2007-04-25', NULL, '2007-04-25', NULL),
(32, 3, 1, '2009-10-14', NULL, '2009-10-14', NULL),
(33, 1, 3, '2012-05-23', NULL, '2012-05-23', NULL),
(34, 3, 1, '2014-11-11', NULL, '2014-11-11', NULL),
(35, 2, 5, '2017-06-07', NULL, '2017-06-07', NULL),
(36, 3, 5, '2019-12-26', NULL, '2019-12-26', NULL),
(37, 1, 5, '2022-07-14', NULL, '2022-07-14', NULL),
(38, 3, 1, '1972-04-15', NULL, '1972-04-15', NULL),
(39, 3, 3, '1974-10-02', NULL, '1974-10-02', NULL),
(40, 4, 5, '1977-06-20', NULL, '1977-06-20', NULL),
(41, 2, 1, '1979-11-10', NULL, '1979-11-10', NULL),
(42, 3, 4, '1982-08-07', NULL, '1982-08-07', NULL),
(43, 3, 1, '1984-12-22', NULL, '1984-12-22', NULL),
(44, 4, 6, '1987-09-18', NULL, '1987-09-18', NULL),
(45, 5, 2, '1989-04-04', '1992-10-15', '1989-04-04', '1992-10-15'),
(46, 1, 6, '1991-11-26', '1995-06-10', '1991-11-26', '1995-06-10'),
(47, 2, 5, '1994-07-11', NULL, '1994-07-11', NULL),
(48, 5, 1, '1997-01-30', '2000-08-14', '1997-01-30', '2000-08-14'),
(49, 2, 3, '1999-08-22', '2003-03-07', '1999-08-22', '2003-03-07'),
(50, 4, 1, '2002-03-05', NULL, '2002-03-05', NULL),
(51, 5, 2, '2004-09-16', NULL, '2004-09-16', NULL),
(52, 4, 1, '2007-04-25', NULL, '2007-04-25', NULL),
(53, 1, 4, '2009-10-14', NULL, '2009-10-14', NULL),
(54, 5, 3, '2012-05-23', '2015-12-06', '2012-05-23', '2015-12-06'),
(55, 2, 6, '2014-11-11', '2018-05-26', '2014-11-11', '2018-05-26'),
(56, 3, 5, '2017-06-07', '2020-12-20', '2017-06-07', '2020-12-20'),
(57, 5, 1, '2019-12-26', '2023-09-01', '2019-12-26', '2023-09-01'),
(58, 4, 2, '2022-07-14', NULL, '2022-07-14', NULL),
(59, 4, 5, '1972-04-15', '1975-08-21', '1972-04-15', '1975-08-21'),
(60, 5, 4, '1974-10-02', '1978-03-14', '1974-10-02', '1978-03-14'),
(61, 4, 2, '1977-06-20', '1981-01-07', '1977-06-20', '1981-01-07'),
(62, 2, 2, '1979-11-10', NULL, '1979-11-10', NULL),
(63, 5, 6, '1982-08-07', '1985-12-18', '1982-08-07', '1985-12-18'),
(64, 2, 1, '1984-12-22', '1988-06-03', '1984-12-22', '1988-06-03'),
(65, 3, 4, '1987-09-18', '1991-02-02', '1987-09-18', '1991-02-02'),
(66, 1, 3, '1989-04-04', NULL, '1989-04-04', NULL),
(67, 2, 1, '1991-11-26', '1995-06-10', '1991-11-26', '1995-06-10'),
(68, 5, 2, '1994-07-11', '1998-01-25', '1994-07-11', '1998-01-25'),
(69, 2, 5, '1997-01-30', '2000-08-14', '1997-01-30', '2000-08-14'),
(70, 5, 1, '1999-08-22', NULL, '1999-08-22', NULL),
(71, 2, 4, '2002-03-05', '2005-09-19', '2002-03-05', '2005-09-19'),
(72, 3, 1, '2004-09-16', '2008-03-31', '2004-09-16', '2008-03-31'),
(73, 1, 1, '2007-04-25', NULL, '2007-04-25', NULL),
(74, 4, 3, '2009-10-14', NULL, '2009-10-14', NULL),
(75, 3, 5, '2012-05-23', NULL, '2012-05-23', NULL),
(76, 5, 3, '2014-11-11', NULL, '2014-11-11', NULL),
(77, 5, 2, '2017-06-07', NULL, '2017-06-07', NULL),
(78, 5, 4, '2019-12-26', NULL, '2019-12-26', NULL),
(79, 2, 4, '2022-07-14', NULL, '2022-07-14', NULL),
(80, 3, 5, '1972-04-15', NULL, '1972-04-15', NULL),
(81, 2, 5, '1974-10-02', NULL, '1974-10-02', NULL),
(82, 4, 5, '1977-06-20', NULL, '1977-06-20', NULL),
(83, 5, 2, '1979-11-10', NULL, '1979-11-10', NULL),
(84, 3, 4, '1982-08-07', NULL, '1982-08-07', NULL),
(85, 3, 5, '1984-12-22', NULL, '1984-12-22', NULL),
(86, 5, 3, '1987-09-18', NULL, '1987-09-18', NULL),
(87, 5, 1, '1989-04-04', NULL, '1989-04-04', NULL),
(88, 1, 5, '1991-11-26', NULL, '1991-11-26', NULL),
(89, 5, 1, '1994-07-11', NULL, '1994-07-11', NULL),
(90, 2, 4, '1997-01-30', '2000-08-14', '1997-01-30', '2000-08-14'),
(91, 5, 2, '1999-08-22', '2003-03-07', '1999-08-22', '2003-03-07'),
(92, 5, 3, '2002-03-05', '2005-09-19', '2002-03-05', '2005-09-19'),
(93, 4, 1, '2004-09-16', NULL, '2004-09-16', NULL),
(94, 2, 5, '2007-04-25', '2010-11-08', '2007-04-25', '2010-11-08'),
(95, 3, 5, '2009-10-14', '2013-04-28', '2009-10-14', '2013-04-28'),
(96, 3, 5, '2012-05-23', NULL, '2012-05-23', NULL),
(97, 4, 2, '2014-11-11', '2018-05-26', '2014-11-11', '2018-05-26'),
(98, 2, 2, '2017-06-07', '2020-12-20', '2017-06-07', '2020-12-20'),
(99, 2, 1, '2019-12-26', '2023-09-01', '2019-12-26', '2023-09-01'),
(100, 4, 4, '2022-07-14', NULL, '2022-07-14', NULL);

CREATE TABLE IF NOT EXISTS Account(
AccountId bigint  auto_increment primary key,
BankName varchar(100) NOT NULL,
EmployeeId bigint,
AccountNumber varchar(20),
foreign key (employeeId) references employees(employeeId));

INSERT INTO Account(BankName, EmployeeId, AccountNumber) VALUES
('JPMorgan Chase & Co.', 1, '23293233'),
('Bank of America', 2, '10637758'),
('Wells Fargo & Co.', 3, '29154166'),
('Citibank', 4, '15660275'),
('U.S. Bank', 5, '15912941'),
('PNC Financial Services Group', 6, '23944202'),
('JPMorgan Chase & Co.', 7, '25894191'),
('Bank of America', 8, '38386984'),
('Wells Fargo & Co.', 9, '19201330'),
('Citibank', 10, '27946571'),
('U.S. Bank', 11, '18880044'),
('PNC Financial Services Group', 12, '35917217'),
('JPMorgan Chase & Co.', 13, '26245785'),
('Bank of America', 14, '14025077'),
('Wells Fargo & Co.', 15, '14780363'),
('Citibank', 16, '33083760'),
('U.S. Bank', 17, '32518505'),
('PNC Financial Services Group', 18, '10992842'),
('JPMorgan Chase & Co.', 19, '13634469'),
('Bank of America', 20, '29636477'),
('Wells Fargo & Co.', 21, '10200527'),
('JPMorgan Chase & Co.', 22, '26713706'),
('Bank of America', 23, '39327535'),
('Wells Fargo & Co.', 24, '38775244'),
('Citibank', 25, '14268341'),
('U.S. Bank', 26, '18909095'),
('PNC Financial Services Group', 27, '16591793'),
('JPMorgan Chase & Co.', 28, '19117797'),
('Bank of America', 29, '22454260'),
('Wells Fargo & Co.', 30, '19458017'),
('Citibank', 31, '19920365'),
('U.S. Bank', 32, '10716363'),
('PNC Financial Services Group', 33, '24521194'),
('JPMorgan Chase & Co.', 34, '30554258'),
('Bank of America', 35, '37157277'),
('Wells Fargo & Co.', 36, '39899819'),
('Citibank', 37, '28916780'),
('U.S. Bank', 38, '30979679'),
('PNC Financial Services Group', 39, '22878176'),
('JPMorgan Chase & Co.', 40, '30910872'),
('JPMorgan Chase & Co.', 41, '35485671'),
('Bank of America', 42, '28965911'),
('Wells Fargo & Co.', 43, '36568498'),
('Citibank', 44, '20471346'),
('U.S. Bank', 45, '21268236'),
('PNC Financial Services Group', 46, '38991762'),
('JPMorgan Chase & Co.', 47, '28635738'),
('Bank of America', 48, '16357885'),
('Wells Fargo & Co.', 49, '16136975'),
('Citibank', 50, '37273512'),
('JPMorgan Chase & Co.', 51, '29100623'),
('Bank of America', 52, '36684998'),
('Wells Fargo & Co.', 53, '23549880'),
('Citibank', 54, '10822543'),
('U.S. Bank', 55, '20879290'),
('PNC Financial Services Group', 56, '24447283'),
('JPMorgan Chase & Co.', 57, '23873551'),
('Bank of America', 58, '21099443'),
('Wells Fargo & Co.', 59, '32003289'),
('Citibank', 60, '30733939'),
('JPMorgan Chase & Co.', 61, '35393109'),
('Bank of America', 62, '32855046'),
('Wells Fargo & Co.', 63, '19064894'),
('Citibank', 64, '28200148'),
('U.S. Bank', 65, '17279648'),
('PNC Financial Services Group', 66, '29629960'),
('JPMorgan Chase & Co.', 67, '28047023'),
('Bank of America', 68, '34635517'),
('Wells Fargo & Co.', 69, '25863614'),
('Citibank', 70, '24158502'),
('U.S. Bank', 71, '32711019'),
('PNC Financial Services Group', 72, '25712475'),
('JPMorgan Chase & Co.', 73, '11068913'),
('Bank of America', 74, '14182834'),
('Wells Fargo & Co.', 75, '27480533'),
('Citibank', 76, '19570131'),
('U.S. Bank', 77, '18854657'),
('PNC Financial Services Group', 78, '21182085'),
('JPMorgan Chase & Co.', 79, '14729592'),
('Bank of America', 80, '12607307'),
('Wells Fargo & Co.', 81, '12388854'),
('Citibank', 82, '31838122'),
('U.S. Bank', 83, '20972030'),
('PNC Financial Services Group', 84, '24189058'),
('JPMorgan Chase & Co.', 85, '13241452'),
('Bank of America', 86, '13012343'),
('Wells Fargo & Co.', 87, '21651514'),
('Citibank', 88, '27014847'),
('U.S. Bank', 89, '14486860'),
('PNC Financial Services Group', 90, '32145971'),
('JPMorgan Chase & Co.', 91, '26097372'),
('Bank of America', 92, '16851411'),
('Wells Fargo & Co.', 93, '32984359'),
('Citibank', 94, '36411883'),
('U.S. Bank', 95, '34746085'),
('PNC Financial Services Group', 96, '18115877'),
('JPMorgan Chase & Co.', 97, '17256657'),
('Bank of America', 98, '21073505'),
('Wells Fargo & Co.', 99, '14149615'),
('Citibank', 100, '18168661');


CREATE TABLE IF NOT EXISTS leaves (
LeaveID BIGINT AUTO_INCREMENT PRIMARY KEY,
EmployeeID bigint,
StartDate DATE,
EndDate DATE,
LeaveType ENUM('Sick', 'Vacation', 'Other'),
Status ENUM('Approved', 'Pending', 'Rejected'),
Reason TEXT,
FOREIGN KEY (EmployeeID) REFERENCES employees(employeeId)
);

INSERT INTO leaves (EmployeeID, StartDate, EndDate, LeaveType, Status) VALUES
(1, '2022-01-01', '2022-01-01', 'Sick', 'Approved'),
(2, '2022-02-05', '2022-02-06', 'Vacation', 'Pending'),
(3, '2022-03-20', '2022-03-23', 'Other', 'Pending'),
(57, '2022-05-15', '2022-05-20', 'Sick', 'Pending'),
(27, '2022-06-10', '2022-06-11', 'Vacation', 'Pending'),
(90, '2022-07-28', '2022-07-31', 'Vacation', 'Pending'),
(26, '2022-09-03', '2022-09-08', 'Vacation', 'Pending'),
(42, '2022-10-12', '2022-10-13', 'Vacation', 'Pending'),
(35, '2022-11-25', '2022-11-26', 'Vacation', 'Pending'),
(54, '2023-01-02', '2023-01-02', 'Vacation', 'Pending'),
(47, '2023-02-18', '2023-02-21', 'Vacation', 'Pending'),
(66, '2023-03-15', '2023-03-15', 'Vacation', 'Pending'),
(61, '2023-04-09', '2023-04-10', 'Vacation', 'Pending'),
(66, '2023-05-26', '2023-05-29', 'Vacation', 'Pending'),
(68, '2023-07-07', '2023-07-12', 'Vacation', 'Rejected'),
(75, '2023-08-23', '2023-08-23', 'Vacation', 'Approved'),
(22, '2022-09-29', '2022-09-29', 'Vacation', 'Approved'),
(78, '2022-11-11', '2022-11-12', 'Vacation', 'Approved'),
(52, '2022-12-18', '2022-12-22', 'Vacation', 'Approved'),
(89, '2023-01-30', '2023-01-31', 'Vacation', 'Approved'),
(54, '2023-03-07', '2023-03-10', 'Vacation', 'Approved'),
(80, '2023-04-25', '2023-04-27', 'Sick', 'Approved'),
(54, '2023-06-03', '2023-06-03', 'Vacation', 'Approved'),
(53, '2023-07-17', '2023-07-18', 'Other', 'Approved'),
(25, '2023-08-22', '2023-08-23', 'Sick', 'Approved'),
(33, '2023-09-16', '2023-09-21', 'Vacation', 'Approved'),
(31, '2023-10-01', '2023-10-01', 'Other', 'Approved'),
(65, '2023-10-05', '2023-10-07', 'Sick', 'Approved'),
(78, '2023-11-11', '2023-11-14', 'Sick', 'Approved'),
(32, '2023-12-08', '2023-12-09', 'Sick', 'Approved'),
(52, '2024-01-16', '2024-01-17', 'Sick', 'Approved'),
(72, '2024-02-21', '2024-02-24', 'Sick', 'Approved'),
(63, '2024-03-15', '2024-03-20', 'Sick', 'Approved'),
(29, '2024-04-29', '2024-04-29', 'Sick', 'Approved'),
(86, '2024-05-06', '2024-05-07', 'Sick', 'Approved'),
(25, '2024-06-10', '2024-06-10', 'Sick', 'Approved'),
(67, '2024-07-19', '2024-07-19', 'Sick', 'Approved'),
(34, '2024-08-25', '2024-08-26', 'Sick', 'Approved'),
(46, '2024-09-30', '2024-10-01', 'Sick', 'Approved'),
(42, '2024-11-05', '2024-11-06', 'Sick', 'Approved'),
(38, '2024-12-13', '2024-12-14', 'Sick', 'Approved'),
(50, '2025-01-22', '2025-01-25', 'Sick', 'Approved'),
(80, '2025-02-28', '2025-03-01', 'Sick', 'Rejected'),
(63, '2025-04-08', '2025-04-11', 'Vacation', 'Rejected'),
(48, '2025-05-15', '2025-05-17', 'Other', 'Rejected'),
(60, '2025-06-24', '2025-06-28', 'Sick', 'Rejected');


CREATE TABLE IF NOT EXISTS Attendance(
AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
EmployeeID BIGINT,
Date DATE,
TimeIn TIME,
TimeOut TIME,
TotalHoursWorked DECIMAL(5,2),
FOREIGN KEY (EmployeeID) REFERENCES employees(employeeId)
);

INSERT INTO attendance (EmployeeID, Date, TimeIn, TimeOut, TotalHoursWorked) VALUES
(1, '2023-10-31', '09:00', '16:00', 7),
(2, '2023-10-31', '08:30', '16:30', 8),
(3, '2023-10-31', '09:15', '16:15', 7),
(4, '2023-10-31', '08:00', '16:30', 8.5),
(5, '2023-10-31', '09:30', '16:30', 7),
(6, '2023-10-31', '09:15', '16:15', 7),
(7, '2023-10-31', '09:00', '17:00', 8),
(8, '2023-10-31', '08:30', '16:30', 8),
(9, '2023-10-31', '08:00', '17:00', 9),
(10, '2023-10-31', '09:15', '16:15', 7),
(11, '2023-10-31', '09:00', '16:30', 7.5),
(12, '2023-10-31', '08:30', '17:00', 8.5),
(13, '2023-10-31', '08:45', '17:15', 8.5),
(14, '2023-10-31', '09:30', '16:30', 7),
(15, '2023-10-31', '08:30', '16:30', 8),
(16, '2023-10-31', '09:15', '16:15', 7),
(17, '2023-10-31', '09:00', '16:00', 7),
(18, '2023-10-31', '08:30', '16:30', 8),
(19, '2023-10-31', '09:15', '16:15', 7),
(20, '2023-10-31', '08:00', '16:30', 8.5),
(21, '2023-10-31', '09:30', '16:30', 7),
(22, '2023-10-31', '09:15', '16:15', 7),
(23, '2023-10-31', '09:00', '17:00', 8),
(24, '2023-10-31', '08:30', '16:30', 8),
(25, '2023-10-31', '08:00', '17:00', 9),
(26, '2023-10-31', '09:15', '16:15', 7),
(27, '2023-10-31', '09:00', '16:30', 7.5),
(28, '2023-10-31', '08:30', '17:00', 8.5),
(29, '2023-10-31', '08:45', '17:15', 8.5),
(30, '2023-10-31', '09:30', '16:30', 7),
(31, '2023-10-31', '09:00', '16:00', 7),
(32, '2023-10-31', '08:30', '16:30', 8),
(33, '2023-10-31', '09:15', '16:15', 7),
(34, '2023-10-31', '08:00', '16:30', 8.5),
(35, '2023-10-31', '09:30', '16:30', 7),
(36, '2023-10-31', '09:15', '16:15', 7),
(37, '2023-10-31', '09:00', '17:00', 8),
(38, '2023-10-31', '08:30', '16:30', 8),
(39, '2023-10-31', '08:00', '17:00', 9),
(40, '2023-10-31', '09:15', '16:15', 7),
(41, '2023-10-31', '09:00', '16:30', 7.5),
(42, '2023-10-31', '08:30', '17:00', 8.5),
(43, '2023-10-31', '08:45', '17:15', 8.5),
(44, '2023-10-31', '09:30', '16:30', 7),
(45, '2023-10-31', '08:30', '16:30', 8),
(46, '2023-10-31', '09:15', '16:15', 7),
(47, '2023-10-31', '09:00', '16:00', 7),
(48, '2023-10-31', '08:30', '16:30', 8),
(49, '2023-10-31', '09:15', '16:15', 7),
(50, '2023-10-31', '08:00', '16:30', 8.5),
(51, '2023-10-31', '09:30', '16:30', 7),
(52, '2023-10-31', '09:15', '16:15', 7),
(53, '2023-10-31', '09:00', '17:00', 8),
(54, '2023-10-31', '08:30', '16:30', 8),
(55, '2023-10-31', '08:00', '17:00', 9),
(56, '2023-10-31', '09:15', '16:15', 7),
(57, '2023-10-31', '09:00', '16:30', 7.5),
(58, '2023-10-31', '08:30', '17:00', 8.5),
(59, '2023-10-31', '08:45', '17:15', 8.5),
(60, '2023-10-31', '09:30', '16:30', 7),
(61, '2023-10-31', '09:00', '16:00', 7),
(62, '2023-10-31', '08:30', '16:30', 8),
(63, '2023-10-31', '09:15', '16:15', 7),
(64, '2023-10-31', '08:00', '16:30', 8.5),
(65, '2023-10-31', '09:30', '16:30', 7),
(66, '2023-10-31', '09:15', '16:15', 7),
(67, '2023-10-31', '09:00', '17:00', 8),
(68, '2023-10-31', '08:30', '16:30', 8),
(69, '2023-10-31', '08:00', '17:00', 9),
(70, '2023-10-31', '09:15', '16:15', 7),
(71, '2023-10-31', '09:00', '16:30', 7.5),
(72, '2023-10-31', '08:30', '17:00', 8.5),
(73, '2023-10-31', '08:45', '17:15', 8.5),
(74, '2023-10-31', '09:30', '16:30', 7),
(75, '2023-10-31', '08:30', '16:30', 8),
(76, '2023-10-31', '09:15', '16:15', 7),
(77, '2023-10-31', '09:00', '16:00', 7),
(78, '2023-10-31', '08:30', '16:30', 8),
(79, '2023-10-31', '09:15', '16:15', 7),
(80, '2023-10-31', '08:00', '16:30', 8.5),
(81, '2023-10-31', '09:30', '16:30', 7),
(82, '2023-10-31', '09:15', '16:15', 7),
(83, '2023-10-31', '09:00', '17:00', 8),
(84, '2023-10-31', '08:30', '16:30', 8),
(85, '2023-10-31', '08:00', '17:00', 9),
(86, '2023-10-31', '09:15', '16:15', 7),
(87, '2023-10-31', '09:00', '16:30', 7.5),
(88, '2023-10-31', '08:30', '17:00', 8.5),
(89, '2023-10-31', '08:45', '17:15', 8.5),
(90, '2023-10-31', '09:30', '16:30', 7),
(10, '2023-10-30', '09:00', '16:00', 7),
(11, '2023-10-30', '08:30', '16:30', 8),
(12, '2023-10-30', '09:15', '16:15', 7),
(13, '2023-10-30', '08:00', '16:30', 8.5),
(14, '2023-10-30', '09:30', '16:30', 7),
(15, '2023-10-30', '09:15', '16:15', 7),
(16, '2023-10-30', '09:00', '17:00', 8),
(17, '2023-10-30', '08:30', '16:30', 8),
(18, '2023-10-30', '08:00', '17:00', 9),
(19, '2023-10-30', '09:15', '16:15', 7),
(20, '2023-10-30', '09:00', '16:30', 7.5),
(21, '2023-10-30', '08:30', '17:00', 8.5),
(22, '2023-10-30', '08:45', '17:15', 8.5),
(23, '2023-10-30', '09:30', '16:30', 7),
(24, '2023-10-30', '08:30', '16:30', 8),
(25, '2023-10-30', '09:15', '16:15', 7),
(26, '2023-10-30', '09:00', '16:00', 7),
(27, '2023-10-30', '08:30', '16:30', 8),
(28, '2023-10-30', '09:15', '16:15', 7),
(29, '2023-10-30', '08:00', '16:30', 8.5),
(30, '2023-10-30', '09:30', '16:30', 7),
(31, '2023-10-30', '09:15', '16:15', 7),
(32, '2023-10-30', '09:00', '17:00', 8),
(33, '2023-10-30', '08:30', '16:30', 8),
(34, '2023-10-30', '08:00', '17:00', 9),
(35, '2023-10-30', '09:15', '16:15', 7),
(36, '2023-10-30', '09:00', '16:30', 7.5),
(37, '2023-10-30', '08:30', '17:00', 8.5),
(38, '2023-10-30', '08:45', '17:15', 8.5),
(39, '2023-10-30', '09:30', '16:30', 7),
(40, '2023-10-30', '09:00', '16:00', 7),
(41, '2023-10-30', '08:30', '16:30', 8),
(42, '2023-10-30', '09:15', '16:15', 7),
(43, '2023-10-30', '08:00', '16:30', 8.5),
(44, '2023-10-30', '09:30', '16:30', 7),
(45, '2023-10-30', '09:15', '16:15', 7),
(46, '2023-10-30', '09:00', '17:00', 8),
(47, '2023-10-30', '08:30', '16:30', 8),
(48, '2023-10-30', '08:00', '17:00', 9),
(49, '2023-10-30', '09:15', '16:15', 7),
(50, '2023-10-30', '09:00', '16:30', 7.5),
(51, '2023-10-30', '08:30', '17:00', 8.5),
(52, '2023-10-30', '08:45', '17:15', 8.5),
(53, '2023-10-30', '09:30', '16:30', 7),
(54, '2023-10-30', '08:30', '16:30', 8),
(55, '2023-10-30', '09:15', '16:15', 7),
(56, '2023-10-30', '09:00', '16:00', 7),
(57, '2023-10-30', '08:30', '16:30', 8),
(58, '2023-10-30', '09:15', '16:15', 7),
(59, '2023-10-30', '08:00', '16:30', 8.5),
(60, '2023-10-30', '09:30', '16:30', 7),
(61, '2023-10-30', '09:15', '16:15', 7),
(62, '2023-10-30', '09:00', '17:00', 8),
(63, '2023-10-30', '08:30', '16:30', 8),
(64, '2023-10-30', '08:00', '17:00', 9),
(65, '2023-10-30', '09:15', '16:15', 7),
(66, '2023-10-30', '09:00', '16:30', 7.5),
(67, '2023-10-30', '08:30', '17:00', 8.5),
(68, '2023-10-30', '08:45', '17:15', 8.5),
(69, '2023-10-30', '09:30', '16:30', 7),
(70, '2023-10-30', '09:00', '16:00', 7),
(71, '2023-10-30', '08:30', '16:30', 8),
(72, '2023-10-30', '09:15', '16:15', 7),
(73, '2023-10-30', '08:00', '16:30', 8.5),
(74, '2023-10-30', '09:30', '16:30', 7),
(75, '2023-10-30', '09:15', '16:15', 7),
(76, '2023-10-30', '09:00', '17:00', 8),
(77, '2023-10-30', '08:30', '16:30', 8),
(78, '2023-10-30', '08:00', '17:00', 9),
(79, '2023-10-30', '09:15', '16:15', 7),
(80, '2023-10-30', '09:00', '16:30', 7.5),
(81, '2023-10-30', '08:30', '17:00', 8.5),
(82, '2023-10-30', '08:45', '17:15', 8.5),
(83, '2023-10-30', '09:30', '16:30', 7),
(84, '2023-10-30', '08:30', '16:30', 8),
(85, '2023-10-30', '09:15', '16:15', 7),
(86, '2023-10-30', '09:00', '16:00', 7),
(87, '2023-10-30', '08:30', '16:30', 8),
(88, '2023-10-30', '09:15', '16:15', 7),
(89, '2023-10-30', '08:00', '16:30', 8.5),
(90, '2023-10-30', '09:30', '16:30', 7),
(91, '2023-10-30', '09:15', '16:15', 7),
(92, '2023-10-30', '09:00', '17:00', 8),
(93, '2023-10-30', '08:30', '16:30', 8),
(94, '2023-10-30', '08:00', '17:00', 9),
(95, '2023-10-30', '09:15', '16:15', 7),
(96, '2023-10-30', '09:00', '16:30', 7.5),
(97, '2023-10-30', '08:30', '17:00', 8.5),
(98, '2023-10-30', '08:45', '17:15', 8.5),
(99, '2023-10-30', '09:30', '16:30', 7);



CREATE TABLE IF NOT EXISTS overtime(
overtimeId BIGINT AUTO_INCREMENT PRIMARY KEY,
overtimeRate DECIMAL(5,2),
employeeId bigint,
Date DATE,
startTime TIME,
endTime TIME,
reason text,
Status ENUM('Approved', 'Pending', 'Rejected'),
FOREIGN KEY (EmployeeID) REFERENCES employees(employeeId)
);

INSERT INTO overtime(overtimeRate, employeeId, Date, startTime, endTime, Status) VALUES
(25, 25, '2023-09-01', '20:30', '01:30', 'Approved'),
(26, 26, '2023-09-03', '21:00', '03:00', 'Approved'),
(26, 27, '2023-09-06', '21:30', '04:30', 'Approved'),
(22, 28, '2023-09-09', '22:00', '05:00', 'Approved'),
(29, 29, '2023-09-11', '22:30', '05:30', 'Approved'),
(27, 30, '2023-09-14', '23:00', '06:00', 'Approved'),
(20, 31, '2023-09-16', '23:30', '07:30', 'Approved'),
(30, 32, '2023-09-19', '00:00', '05:00', 'Approved'),
(22, 33, '2023-09-22', '00:30', '06:30', 'Pending'),
(22, 34, '2023-09-24', '01:00', '06:00', 'Approved'),
(29, 35, '2023-09-27', '01:30', '07:30', 'Approved'),
(28, 36, '2023-09-29', '02:00', '09:00', 'Pending'),
(20, 37, '2023-10-02', '02:30', '08:30', 'Approved'),
(20, 38, '2023-10-05', '03:00', '10:00', 'Approved'),
(23, 39, '2023-10-07', '03:30', '09:30', 'Approved'),
(25, 40, '2023-10-10', '04:00', '11:00', 'Approved'),
(24, 41, '2023-10-13', '04:30', '11:30', 'Approved'),
(22, 42, '2023-10-15', '05:00', '10:00', 'Approved'),
(22, 43, '2023-10-18', '05:30', '10:30', 'Approved'),
(23, 44, '2023-10-21', '06:00', '01:00', 'Approved'),
(26, 45, '2023-10-23', '06:30', '01:30', 'Approved'),
(27, 46, '2023-10-26', '07:00', '02:00', 'Approved'),
(21, 47, '2023-10-29', '07:30', '02:30', 'Approved'),
(28, 48, '2023-10-31', '08:00', '03:00', 'Approved'),
(22, 49, '2023-09-02', '08:30', '03:30', 'Approved'),
(19, 50, '2023-09-04', '09:00', '04:00', 'Approved'),
(30, 51, '2023-09-07', '09:30', '04:30', 'Pending'),
(21, 52, '2023-09-10', '10:00', '05:00', 'Approved'),
(30, 53, '2023-09-12', '10:30', '05:30', 'Approved'),
(22, 54, '2023-09-15', '11:00', '06:00', 'Pending'),
(29, 55, '2023-09-17', '11:30', '06:30', 'Approved'),
(25, 56, '2023-09-20', '00:00', '07:00', 'Approved'),
(23, 57, '2023-09-23', '00:30', '07:30', 'Approved'),
(19, 58, '2023-09-25', '01:00', '08:00', 'Approved'),
(29, 59, '2023-09-28', '01:30', '08:30', 'Approved'),
(22, 60, '2023-09-30', '02:00', '09:00', 'Approved'),
(26, 61, '2023-10-01', '02:30', '09:30', 'Pending'),
(21, 62, '2023-10-04', '03:00', '10:00', 'Pending'),
(19, 63, '2023-10-06', '03:30', '10:30', 'Pending'),
(21, 64, '2023-10-09', '04:00', '11:00', 'Pending'),
(23, 65, '2023-10-12', '04:30', '11:30', 'Approved'),
(29, 66, '2023-10-14', '05:00', '12:00', 'Approved'),
(24, 67, '2023-10-17', '05:30', '12:30', 'Approved'),
(24, 68, '2023-10-20', '06:00', '01:00', 'Approved'),
(28, 69, '2023-10-22', '06:30', '01:30', 'Pending'),
(23, 70, '2023-10-25', '07:00', '02:00', 'Approved'),
(25, 71, '2023-10-28', '07:30', '02:30', 'Approved'),
(26, 72, '2023-10-30', '08:00', '03:00', 'Pending'),
(26, 73, '2023-10-31', '08:30', '03:30', 'Approved'),
(28, 74, '2023-10-31', '09:00', '04:00', 'Approved'),
(21, 75, '2023-10-31', '09:30', '04:30', 'Approved'),
(25, 76, '2023-10-31', '10:00', '05:00', 'Approved'),
(21, 77, '2023-10-31', '10:30', '05:30', 'Approved'),
(23, 78, '2023-10-31', '11:00', '06:00', 'Approved'),
(24, 79, '2023-10-31', '11:30', '06:30', 'Rejected'),
(22, 80, '2023-10-31', '00:00', '07:00', 'Rejected'),
(25, 81, '2023-10-31', '00:30', '07:30', 'Approved');


CREATE TABLE IF NOT EXISTS Bonus(
BonusID BIGINT AUTO_INCREMENT PRIMARY KEY,
employeeId bigint,
Amount DECIMAL(10,2),
date DATE,
reason TEXT,
FOREIGN KEY (EmployeeID) REFERENCES employees(employeeId)
);

INSERT INTO Bonus(employeeId, Amount, date, reason) VALUES
(25, 7277, '2023-09-01', 'Performance Recognition'),
(26, 7949, '2023-09-03', 'Meeting Targets'),
(27, 229, '2023-09-06', 'Company Profits'),
(28, 5186, '2023-09-09', 'Retention'),
(29, 6945, '2023-09-11', 'Special Achievements'),
(30, 9512, '2023-09-14', 'Employee Referrals'),
(31, 9481, '2023-09-16', 'Holiday or Year-End Bonuses'),
(32, 1016, '2023-09-19', 'Longevity'),
(33, 4624, '2023-09-22', 'Employee Satisfaction'),
(34, 4179, '2023-09-24', 'Industry Competitiveness'),
(35, 4786, '2023-09-27', 'Performance Recognition'),
(36, 4245, '2023-09-29', 'Meeting Targets'),
(37, 9088, '2023-10-02', 'Company Profits'),
(38, 775, '2023-10-05', 'Retention'),
(39, 7380, '2023-10-07', 'Special Achievements'),
(40, 6065, '2023-10-10', 'Employee Referrals'),
(41, 3182, '2023-10-13', 'Holiday or Year-End Bonuses'),
(42, 2502, '2023-10-15', 'Longevity'),
(43, 3030, '2023-10-18', 'Employee Satisfaction'),
(44, 6219, '2023-10-21', 'Industry Competitiveness'),
(45, 9534, '2023-10-23', 'Performance Recognition'),
(46, 8467, '2023-10-26', 'Meeting Targets'),
(47, 5794, '2023-10-29', 'Company Profits'),
(48, 6231, '2023-10-31', 'Retention'),
(49, 5280, '2023-09-02', 'Special Achievements'),
(50, 1260, '2023-09-04', 'Employee Referrals'),
(51, 2058, '2023-09-07', 'Holiday or Year-End Bonuses'),
(52, 7865, '2023-09-10', 'Longevity'),
(53, 934, '2023-09-12', 'Employee Satisfaction'),
(54, 3527, '2023-09-15', 'Industry Competitiveness'),
(55, 1913, '2023-09-17', 'Industry Competitiveness'),
(56, 2555, '2023-09-20', 'Performance Recognition'),
(57, 4776, '2023-09-23', 'Meeting Targets'),
(58, 7503, '2023-09-25', 'Company Profits'),
(59, 6337, '2023-09-28', 'Retention'),
(60, 784, '2023-09-30', 'Special Achievements'),
(61, 5033, '2023-10-01', 'Employee Referrals'),
(62, 9950, '2023-10-04', 'Performance Recognition'),
(63, 4311, '2023-10-06', 'Meeting Targets'),
(64, 7633, '2023-10-09', 'Company Profits'),
(65, 9216, '2023-10-12', 'Retention'),
(66, 3575, '2023-10-14', 'Special Achievements'),
(67, 6350, '2023-10-17', 'Employee Referrals'),
(68, 3461, '2023-10-20', 'Employee Referrals'),
(69, 5800, '2023-10-22', 'Employee Referrals'),
(70, 4145, '2023-10-25', 'Employee Referrals'),
(71, 6634, '2023-10-28', 'Employee Referrals'),
(72, 439, '2023-10-30', 'Employee Referrals'),
(73, 6583, '2023-10-31', 'Employee Referrals'),
(74, 9592, '2023-10-31', 'Employee Referrals'),
(75, 9198, '2023-10-31', 'Employee Referrals'),
(76, 1988, '2023-10-31', 'Employee Referrals'),
(77, 9013, '2023-10-31', 'Employee Referrals'),
(78, 4399, '2023-10-31', 'Employee Referrals'),
(79, 5678, '2023-10-31', 'Employee Referrals'),
(80, 3871, '2023-10-31', 'Employee Referrals'),
(81, 1911, '2023-10-31', 'Employee Referrals');

CREATE TABLE IF NOT EXISTS Salary(
SalaryId BIGINT AUTO_INCREMENT PRIMARY KEY,
employeeId bigint NOT NULL,
baseSalary decimal(10,2),
deductions decimal(10,2),
totalSalary decimal(10,2),
FOREIGN KEY (EmployeeID) REFERENCES employees(employeeId)
);


CREATE TABLE IF NOT EXISTS payroll(
paymentId  bigint auto_increment primary key,
employeeId bigint,
salarygradeID int,
payperiodId int,
datePaid Date,
amountPaid DECIMAL(10,2),
paymentMethod ENUM('Bank Transfer','Check','Cash','Direct Deposit'),
foreign key (employeeId) references employees(employeeId),
foreign key (salarygradeID) references salarygrade(salarygradeID),
foreign key (payperiodId) references payperiod(payperiodId));

INSERT INTO payroll(employeeId, payperiodId, datePaid, amountPaid, paymentMethod) VALUES
(1, 1, '2023-10-31', 83065, 'Check'),
(2, 2, '2023-10-15', 47288, 'Cash'),
(3, 1, '2023-10-31', 86342, 'Direct Deposit'),
(4, 1, '2023-10-31', 120866, 'Check'),
(5, 1, '2023-10-31', 93910, 'Cash'),
(6, 1, '2023-10-31', 91864, 'Direct Deposit'),
(7, 1, '2023-10-31', 99688, 'Check'),
(8, 1, '2023-10-31', 133659, 'Cash'),
(9, 1, '2023-10-31', 138992, 'Direct Deposit'),
(10, 1, '2023-10-31', 67479, 'Check'),
(11, 1, '2023-10-31', 79864, 'Cash'),
(12, 2, '2023-10-15', 84729, 'Direct Deposit'),
(13, 2, '2023-10-15', 130685, 'Check'),
(14, 2, '2023-10-15', 73093, 'Cash'),
(15, 2, '2023-10-15', 47226, 'Direct Deposit'),
(16, 2, '2023-10-15', 119826, 'Check'),
(17, 2, '2023-10-15', 90203, 'Cash'),
(18, 2, '2023-10-15', 87088, 'Direct Deposit'),
(19, 2, '2023-10-15', 96024, 'Check'),
(20, 2, '2023-10-15', 97642, 'Cash'),
(21, 2, '2023-10-15', 46587, 'Direct Deposit'),
(22, 2, '2023-10-15', 74804, 'Check'),
(23, 2, '2023-10-15', 91913, 'Check'),
(24, 2, '2023-10-15', 139009, 'Check'),
(25, 2, '2023-10-15', 106979, 'Check'),
(26, 2, '2023-10-15', 106838, 'Check'),
(27, 2, '2023-10-15', 122137, 'Check'),
(28, 1, '2023-10-31', 44093, 'Check'),
(29, 2, '2023-10-15', 73056, 'Cash'),
(30, 1, '2023-10-31', 91388, 'Direct Deposit'),
(31, 2, '2023-10-15', 49607, 'Check'),
(32, 2, '2023-10-15', 109852, 'Cash'),
(33, 2, '2023-10-15', 92639, 'Cash'),
(34, 2, '2023-10-15', 44803, 'Cash'),
(35, 2, '2023-10-15', 55854, 'Cash'),
(36, 2, '2023-10-15', 113900, 'Cash'),
(37, 2, '2023-10-15', 50136, 'Cash'),
(38, 2, '2023-10-15', 48939, 'Cash'),
(39, 2, '2023-10-15', 114815, 'Direct Deposit'),
(40, 2, '2023-10-15', 56042, 'Check'),
(41, 2, '2023-10-15', 135167, 'Cash'),
(42, 2, '2023-10-15', 124196, 'Direct Deposit'),
(43, 1, '2023-10-31', 99727, 'Check'),
(44, 1, '2023-10-31', 126667, 'Cash'),
(45, 1, '2023-10-31', 95171, 'Direct Deposit'),
(46, 1, '2023-10-31', 98677, 'Direct Deposit'),
(47, 1, '2023-10-31', 131672, 'Direct Deposit'),
(48, 1, '2023-10-31', 60052, 'Direct Deposit'),
(49, 1, '2023-10-31', 78939, 'Direct Deposit'),
(50, 1, '2023-10-31', 122558, 'Direct Deposit'),
(51, 1, '2023-10-31', 54143, 'Direct Deposit'),
(52, 1, '2023-10-31', 63072, 'Direct Deposit'),
(53, 1, '2023-10-31', 118543, 'Direct Deposit'),
(54, 1, '2023-10-31', 65767, 'Direct Deposit'),
(55, 1, '2023-10-31', 101267, 'Check'),
(56, 1, '2023-10-31', 104573, 'Cash'),
(57, 1, '2023-10-31', 102699, 'Direct Deposit'),
(58, 1, '2023-10-31', 117812, 'Check'),
(59, 1, '2023-10-31', 118664, 'Cash'),
(60, 1, '2023-10-31', 116575, 'Direct Deposit'),
(61, 1, '2023-10-31', 105663, 'Check'),
(62, 1, '2023-10-31', 132280, 'Cash'),
(63, 1, '2023-10-31', 59499, 'Direct Deposit'),
(64, 1, '2023-10-31', 96185, 'Direct Deposit'),
(65, 1, '2023-10-31', 40080, 'Direct Deposit'),
(66, 1, '2023-10-31', 50982, 'Direct Deposit'),
(67, 1, '2023-10-31', 69698, 'Direct Deposit'),
(68, 1, '2023-10-31', 112267, 'Direct Deposit'),
(69, 1, '2023-10-31', 87799, 'Direct Deposit'),
(70, 1, '2023-10-31', 80739, 'Direct Deposit'),
(71, 1, '2023-10-31', 92059, 'Direct Deposit'),
(72, 1, '2023-10-31', 48314, 'Direct Deposit'),
(73, 1, '2023-10-31', 49599, 'Check'),
(74, 1, '2023-10-31', 86794, 'Check'),
(75, 1, '2023-10-31', 134724, 'Check'),
(76, 6, '2023-10-15', 49893, 'Check'),
(77, 6, '2023-10-15', 77957, 'Check'),
(78, 1, '2023-10-31', 47311, 'Direct Deposit'),
(79, 1, '2023-10-31', 96320, 'Check'),
(80, 1, '2023-10-31', 138054, 'Cash'),
(81, 1, '2023-10-31', 101746, 'Cash'),
(82, 1, '2023-10-31', 119465, 'Cash'),
(83, 1, '2023-10-31', 43042, 'Cash'),
(84, 1, '2023-10-31', 50612, 'Cash'),
(85, 1, '2023-10-31', 98570, 'Cash'),
(86, 1, '2023-10-31', 67658, 'Cash'),
(87, 2, '2023-10-15', 121846, 'Cash'),
(88, 2, '2023-10-15', 133975, 'Cash'),
(89, 2, '2023-10-15', 53672, 'Cash'),
(90, 2, '2023-10-15', 58905, 'Direct Deposit'),
(91, 2, '2023-10-15', 126526, 'Direct Deposit'),
(92, 2, '2023-10-15', 94345, 'Direct Deposit'),
(93, 2, '2023-10-15', 94655, 'Direct Deposit'),
(94, 2, '2023-10-15', 78262, 'Direct Deposit'),
(95, 2, '2023-10-15', 69215, 'Direct Deposit'),
(96, 2, '2023-10-15', 99501, 'Direct Deposit'),
(97, 2, '2023-10-15', 86896, 'Direct Deposit'),
(98, 2, '2023-10-15', 132998, 'Direct Deposit'),
(99, 2, '2023-10-15', 70511, 'Direct Deposit'),
(100, 2, '2023-10-15', 59507, 'Check');

/* 
complex queries 
*/

-- query view provides a summary of each department, including the count of employees and the average salary.
CREATE VIEW view_department_employee_count AS
SELECT d.departmentName, COUNT(e.employeeId) AS EmployeeCount, AVG(s.totalSalary) AS AverageSalary -- Counts the number of employees and calculates the average salary per department.
FROM employees e
INNER JOIN department d ON e.departmentId = d.departmentId   -- Inner join between employee and department, and a left join with salary.
LEFT JOIN salary s ON e.employeeId = s.employeeId
GROUP BY d.departmentName                                     -- Groups the results by department name.
HAVING COUNT(e.employeeId) > 5;                               -- Filters departments having more than 5 employees.

-- in second query view details the employee compensation for each employee.
CREATE VIEW view_employee_compensation AS
SELECT 
  e.employeeId,
  s.baseSalary,
  d.departmentName,
  CASE 
    WHEN s.baseSalary >= 100000 THEN 'Executive'
    WHEN s.baseSalary BETWEEN 75000 AND 99999 THEN 'Senior'
    WHEN s.baseSalary BETWEEN 50000 AND 74999 THEN 'Mid-Level'
    ELSE 'Entry-Level'
  END AS salaryTier,
  IF(s.baseSalary > (SELECT AVG(baseSalary) FROM salary), 'Above Average', 'Below Average') AS salaryComparison
FROM employees e
LEFT JOIN salary s ON e.employeeId = s.employeeId
LEFT JOIN department d ON e.departmentId = d.departmentId
WHERE s.baseSalary > 50000
ORDER BY s.baseSalary DESC, d.departmentName;


-- in the third query this view focuses on We're joining the employees table with the department table to get department details and with the salary table to include salary information..
CREATE VIEW view_department_employee_details AS
SELECT 
  e.employeeId,
  e.departmentId AS DepartmentID,
  d.departmentName AS DepartmentName,
  s.baseSalary AS Salary
FROM employees e
JOIN department d ON e.departmentId = d.departmentId
LEFT JOIN salary s ON e.employeeId = s.employeeId
WHERE e.locationId = 'HQ';


-- the fourth query
CREATE VIEW view_person_state_tax_details AS
SELECT 
    pd.firstName,
    pd.street,
    pd.city,
    pd.state AS StateName,
    st.name,
    stx.percentage
    
FROM persondetail pd
INNER JOIN state st ON pd.state = st.name
INNER JOIN statetax stx ON st.stateId = stx.stateId;


-- in fifth query view explores the relationship between employees, their departments, and states.
CREATE VIEW view_employee_state_department AS
SELECT e.employeeId, s.name, d.departmentName
FROM employees e
CROSS JOIN state s                                       -- Cross join between employee and state, and an inner join with department.
INNER JOIN department d ON e.departmentId = d.departmentId
WHERE s.name IN ('California', 'Texas');
-- Filters for employees who started within a specific year (2020) and limits the states to 'California' and 'Texas'.

-- Employee Details View: This view can combine data from the Employees, PersonDetail, EmployementDetail, salarygrade, department, positions, and worklocations tables
-- to provide a comprehensive view of each employee’s personal details, employment details, position, department, and work location.

CREATE VIEW EmployeeDetails AS
SELECT 
    e.employeeId, 
    pd.firstName, 
    pd.lastName, 
    pd.birthDate, 
    pd.street, 
    pd.city, 
    pd.county, 
    pd.state, 
    pd.zipcode,
    ed.employementstartdate, 
    ed.employementenddate, 
    sg.salaryMax, 
    sg.salaryMin, 
    d.departmentName, 
    p.positionName, 
    wl.locationName
FROM Employees e
JOIN PersonDetail pd ON e.employeeId = pd.employeeId
JOIN EmployementDetail ed ON e.employeeId = ed.employeeId
JOIN salarygrade sg ON ed.salarygradeId = sg.salarygradeId
JOIN department d ON e.departmentId = d.departmentId
JOIN positions p ON e.positionId = p.positionId
JOIN worklocations wl ON e.locationId = wl.locationId;


-- Leave and Attendance View: This view can link Employees, Attendance, and leaves tables to provide a detailed view of each employee's attendance and leave records.
CREATE VIEW LeaveAttendanceDetails AS
SELECT 
    e.employeeId, 
    pd.firstName, 
    pd.lastName, 
    att.Date, 
    att.TimeIn, 
    att.TimeOut, 
    att.TotalHoursWorked,
    l.StartDate, 
    l.EndDate, 
    l.LeaveType, 
    l.Status AS LeaveStatus
FROM Employees e
JOIN PersonDetail pd ON e.employeeId = pd.employeeId
JOIN Attendance att ON e.employeeId = att.EmployeeID
JOIN leaves l ON e.employeeId = l.EmployeeID;


-- Overtime Details View: This view can present data from the overtime and Employees tables to track overtime hours and rates for each employee.
CREATE VIEW OvertimeDetails AS
SELECT 
    e.employeeId, 
    pd.firstName, 
    pd.lastName,
    o.Date, 
    o.startTime, 
    o.endTime, 
    o.overtimeRate,
    o.Status AS OvertimeStatus
FROM Employees e
JOIN PersonDetail pd ON e.employeeId = pd.employeeId
JOIN overtime o ON e.employeeId = o.employeeId;

-- Monthly Payroll Report View: This view calculates the monthly salary for each employee, including deductions, taxes, and net pay.
CREATE VIEW MonthlyPayrollReport AS
SELECT e.employeeId, pd.firstName, pd.lastName, 
       sg.salaryMax AS GrossSalary, 
       (sg.salaryMax * ft.percentage / 100) AS FederalTax,
       (sg.salaryMax * st.percentage / 100) AS StateTax,
       (sg.salaryMax - (sg.salaryMax * ft.percentage / 100) - (sg.salaryMax * st.percentage / 100)) AS NetPay
FROM Employees e
JOIN PersonDetail pd ON e.employeeId = pd.employeeId
JOIN EmployementDetail ed ON e.employeeId = ed.employeeId
JOIN salarygrade sg ON ed.salarygradeId = sg.salarygradeId
JOIN federaltax ft, statetax st WHERE st.stateId = pd.state;


-- Yearly Attendance and Leave Report View:
CREATE VIEW YearlyAttendanceLeaveReport AS
SELECT e.employeeId, pd.firstName, pd.lastName,
       SUM(a.TotalHoursWorked) AS TotalHoursWorked,
       COUNT(l.leaveId) AS TotalLeaves
FROM Employees e
JOIN Attendance a ON e.employeeId = a.EmployeeID
JOIN leaves l ON e.employeeId = l.EmployeeID
JOIN PersonDetail pd ON e.employeeId = pd.employeeId
WHERE YEAR(a.Date) = YEAR(CURDATE()) AND YEAR(l.startDate) = YEAR(CURDATE())
GROUP BY e.employeeId;


-- Summarize salary information of each department
CREATE VIEW DepartmentalExpenseSummary AS
SELECT d.departmentId, d.departmentName,
       AVG(sg.salaryMax) AS AverageSalary,
       COUNT(e.employeeId) AS TotalEmployees,
       MAX(sg.salaryMax) AS HighestSalary
FROM department d
JOIN Employees e ON d.departmentId = e.departmentId
JOIN EmployementDetail ed ON e.employeeId = ed.employeeId
JOIN salarygrade sg ON ed.salarygradeId = sg.salarygradeId
GROUP BY d.departmentId;



/* 
Functions
*/

##Get Employee's Total Salary
DELIMITER //
CREATE FUNCTION GetEmployeeTotalSalary(employeeId_param BIGINT) RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE totalSalary DECIMAL(10,2);

    SELECT SUM(totalSalary)
    INTO totalSalary
    FROM salary
    WHERE employeeId = employeeId_param;

    RETURN totalSalary;
END //
DELIMITER ;


##Get Employee's Work Location
DELIMITER //
CREATE FUNCTION GetEmployeeWorkLocation(employeeId_param BIGINT) RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
    DECLARE workLocation VARCHAR(100);

    SELECT wl.locationName
    INTO workLocation
    FROM employees e
    JOIN worklocations wl ON e.locationId = wl.locationId
    WHERE e.employeeId = employeeId_param;

    RETURN workLocation;
END //
DELIMITER ;

##Get Average Overtime Hours
DELIMITER //
CREATE FUNCTION GetAverageOvertimeHours() RETURNS DECIMAL(5,2)
READS SQL DATA
BEGIN
    DECLARE avgOvertime DECIMAL(5,2);

    SELECT AVG(TIME_TO_SEC(TIMEDIFF(endTime, startTime)) / 3600)
    INTO avgOvertime
    FROM overtime;

    RETURN avgOvertime;
END //
DELIMITER ;

##Get Deductions Total Amount
DELIMITER //
CREATE FUNCTION GetDeductionsTotalAmount(employeeId_param BIGINT) RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE totalDeductions DECIMAL(10,2);

    SELECT SUM(deductionAmount)
    INTO totalDeductions
    FROM deduction;

    RETURN totalDeductions;
END //
DELIMITER ;


###Stored Procedures###
##Generate salary Data

DELIMITER //

CREATE PROCEDURE GenerateSalaryData()
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE baseSalary DECIMAL(10,2);
    DECLARE totalDeductions DECIMAL(10,2);
    DECLARE totalSalary DECIMAL(10,2);

    -- Loop to insert 50 rows of salary data
    WHILE counter < 50 DO
        -- Generate random base salary between 3000 and 12500
        SET baseSalary = ROUND(RAND() * (9500) + 3000, 2);

        -- Calculate total deductions based on the given deduction rates
        SET totalDeductions = (baseSalary * 0.10) + (baseSalary * 0.03) + (baseSalary * 0.02) + (baseSalary * 0.01) + (baseSalary * 0.04);

        -- Calculate total salary after deductions
        SET totalSalary = baseSalary - totalDeductions;

        -- Insert data into the salary table
        INSERT INTO salary (employeeId, baseSalary, deductions, totalSalary)
        VALUES (counter + 5, baseSalary, totalDeductions, totalSalary);

        SET counter = counter + 1;
    END WHILE;
END //

DELIMITER ;

-- Call the procedure to generate data
CALL GenerateSalaryData();

##Insert Salary Information

DELIMITER //
CREATE PROCEDURE InsertSalaryInformation(
    IN employeeId_param BIGINT,
    IN baseSalary_param DECIMAL(10,2),
    IN deductions_param DECIMAL(10,2),
    IN totalSalary_param DECIMAL(10,2)
)
BEGIN
    -- Insert into salary table using a temporary table
    CREATE TEMPORARY TABLE tempSalary AS
    SELECT NULL AS SalaryId, employeeId_param, baseSalary_param, deductions_param, totalSalary_param
    FROM DUAL;

    -- Insert into salary table
    INSERT INTO salary
    SELECT * FROM tempSalary;

    -- Drop the temporary table
    DROP TEMPORARY TABLE IF EXISTS tempSalary;
END //
DELIMITER ;


##Get Leaves Information for an Employee

DELIMITER //
CREATE PROCEDURE GetLeavesForEmployee(IN employeeId_param bigint)
BEGIN
    SELECT
        e.employeeId,
        p.firstName,
        p.lastName,
        l.StartDate,
        l.EndDate,
        l.LeaveType,
        l.Status
    FROM employees e
    JOIN persondetail p ON e.employeeId = p.employeeId
    JOIN leaves l ON e.employeeId = l.EmployeeID
    WHERE e.employeeId = employeeId_param;
END //
DELIMITER ;

##Get Employee Payroll Information

DELIMITER //
CREATE PROCEDURE GetEmployeePayroll(IN employeeId_param bigint, IN payperiodId_param int)
BEGIN
    SELECT
        e.employeeId,
        p.firstName,
        p.lastName,
        pr.payperiodName,
        pr.datePaid,
        pr.amountPaid,
        pr.paymentMethod
    FROM employees e
    JOIN persondetail p ON e.employeeId = p.employeeId
    JOIN payroll pr ON e.employeeId = pr.employeeId
    WHERE e.employeeId = employeeId_param AND pr.payperiodId = payperiodId_param;
END //
DELIMITER ;

##Insert Employee and Person Details
DELIMITER //
CREATE PROCEDURE InsertEmployeeAndPersonDetails(
    IN email_param VARCHAR(100),
    IN firstName_param VARCHAR(50),
    IN lastName_param VARCHAR(50),
    IN locationId_param INT,
    IN phoneOffice_param VARCHAR(20),
    IN positionId_param INT,
    IN departmentId_param INT
)
BEGIN
    DECLARE newEmployeeId BIGINT;

    -- Insert into persondetail table using a temporary table
    CREATE TEMPORARY TABLE tempPersonDetails AS
    SELECT NULL AS employeeId, firstName_param, lastName_param, NULL AS birthDate, NULL AS street, NULL AS city, NULL AS county, NULL AS state, NULL AS zipcode
    FROM DUAL;

    -- Insert into employees table
    INSERT INTO employees (locationId, email, phoneOffice, positionId, departmentId)
    VALUES (locationId_param, email_param, phoneOffice_param, positionId_param, departmentId_param);

    -- Get the last inserted employeeId
    SET newEmployeeId = LAST_INSERT_ID();

    -- Update the temporary table with the employeeId
    UPDATE tempPersonDetails SET employeeId = newEmployeeId;

    -- Insert into persondetail using the data from the temporary table
    INSERT INTO persondetail
    SELECT * FROM tempPersonDetails;

    -- Drop the temporary table
    DROP TEMPORARY TABLE IF EXISTS tempPersonDetails;
END //
DELIMITER ;


###Stored Procedure using function###
##GetEmployeeDetailsWithSalary
DELIMITER //
CREATE PROCEDURE GetEmployeeDetailsWithSalaryAndTotalSalary(IN employeeId_param bigint)
BEGIN
    DECLARE totalSalary DECIMAL(10,2);

    -- Call the GetEmployeeTotalSalary function to calculate total salary
    SET totalSalary = GetEmployeeTotalSalary(employeeId_param);

    -- Retrieve employee details along with total salary
    SELECT
        p.PersonDetailId,
        p.firstName,
        p.lastName,
        e.email,
        s.baseSalary,
        s.deductions,
        s.totalSalary,
        totalSalary AS calculatedTotalSalary
    FROM employees e
    JOIN persondetail p ON e.employeeId = p.employeeId
    JOIN salary s ON e.employeeId = s.employeeId
    WHERE e.employeeId = employeeId_param;
END //
DELIMITER ;


-- TRIGGERS -- 
##Update Salary Trigger
DELIMITER //
CREATE TRIGGER UpdateTotalSalary
AFTER UPDATE ON salary
FOR EACH ROW
BEGIN
    UPDATE salary
    SET totalSalary = NEW.baseSalary - NEW.deductions
    WHERE employeeId = NEW.employeeId;
END //
DELIMITER ;

##Check Leave Dates Trigger
DELIMITER //
CREATE TRIGGER CheckLeaveDates
BEFORE INSERT ON leaves
FOR EACH ROW
BEGIN
    IF NEW.EndDate < NEW.StartDate THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Leave end date cannot be earlier than start date';
    END IF;
END //
DELIMITER ;

-- Trigger for New Employee Registration: This trigger can be used to automatically create an entry in the EmployementDetail table when a new employee is added to the Employees table.


##Before Insert Employee Trigger
DELIMITER //
CREATE TRIGGER BeforeInsertEmployee
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    DECLARE personDetailCount INT;

    SELECT COUNT(*)
    INTO personDetailCount
    FROM persondetail
    WHERE employeeId = NEW.employeeId;

    IF personDetailCount = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot insert employee without persondetail entry';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER after_employee_insert
AFTER INSERT ON Employees FOR EACH ROW
BEGIN
   INSERT INTO EmployementDetail(employeeId, employeetypeId, salarygradeId, employementstartdate) 
   VALUES (NEW.employeeId, DEFAULT, DEFAULT, CURDATE());
END;
//
DELIMITER ;

-- Trigger for Employee Termination: When an employee is removed from the Employees table, this trigger can clean up related data in other tables.

DELIMITER //
CREATE TRIGGER before_employee_delete
BEFORE DELETE ON Employees FOR EACH ROW
BEGIN
   DELETE FROM EmployementDetail WHERE employeeId = OLD.employeeId;
   DELETE FROM Account WHERE employeeId = OLD.employeeId;
   DELETE FROM leaves WHERE employeeId = OLD.employeeId;
   DELETE FROM Attendance WHERE employeeId = OLD.employeeId;
   DELETE FROM overtime WHERE employeeId = OLD.employeeId;
END;
//
DELIMITER ;

-- Trigger for Overtime Approval: This trigger can update the total hours worked in the Attendance table when an overtime request is approved.

DELIMITER //
CREATE TRIGGER after_overtime_approval
AFTER UPDATE ON overtime FOR EACH ROW
BEGIN
   IF NEW.Status = 'Approved' THEN
      UPDATE Attendance SET TotalHoursWorked = TotalHoursWorked + TIMESTAMPDIFF(HOUR, NEW.startTime, NEW.endTime)
      WHERE employeeId = NEW.employeeId AND Date = NEW.Date;
   END IF;
END;
//
DELIMITER ;

-- Trigger for Leave Application: This trigger prevents an employee from applying for leave if they have an unapproved leave application.

DELIMITER //
CREATE TRIGGER before_leave_insert
BEFORE INSERT ON leaves FOR EACH ROW
BEGIN
   IF EXISTS (SELECT 1 FROM leaves WHERE employeeId = NEW.employeeId AND Status = 'Pending') THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot apply for new leave when previous application is pending.';
   END IF;
END;
//
DELIMITER ;

-- Trigger for Automatic Leave Approval: Automatically approves leave if applied within certain criteria, e.g., duration is less than 3 days.
DELIMITER //
CREATE TRIGGER after_leave_insert
AFTER INSERT ON leaves FOR EACH ROW
BEGIN
   IF DATEDIFF(NEW.EndDate, NEW.StartDate) < 3 THEN
      UPDATE leaves SET Status = 'Approved' WHERE LeaveID = NEW.LeaveID;
   END IF;
END;
//
DELIMITER ;