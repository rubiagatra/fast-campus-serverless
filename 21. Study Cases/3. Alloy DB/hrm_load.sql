
CREATE TABLE countries (
    country_id char(2) NOT NULL,
    country_name varchar(40),
    region_id bigint
) ;
ALTER TABLE countries ADD PRIMARY KEY (country_id);

CREATE TABLE departments (
    department_id smallint NOT NULL,
    department_name varchar(30),
    manager_id integer,
    location_id smallint
) ;
ALTER TABLE departments ADD PRIMARY KEY (department_id);

CREATE TABLE jobs (
    job_id varchar(10) NOT NULL,
    job_title varchar(35),
    min_salary integer,
    max_salary integer
) ;
ALTER TABLE jobs ADD PRIMARY KEY (job_id);


INSERT INTO countries VALUES 
        ( 'IT'
        , 'Italy'
        , 1 
        );
INSERT INTO countries VALUES 
        ( 'JP'
        , 'Japan'
    , 3 
        );
INSERT INTO countries VALUES 
        ( 'US'
        , 'United States of America'
        , 2 
        );
INSERT INTO countries VALUES 
        ( 'CA'
        , 'Canada'
        , 2 
        );
INSERT INTO countries VALUES 
        ( 'CN'
        , 'China'
        , 3 
        );
INSERT INTO countries VALUES 
        ( 'IN'
        , 'India'
        , 3 
        );
INSERT INTO countries VALUES 
        ( 'AU'
        , 'Australia'
        , 3 
        );
INSERT INTO countries VALUES 
        ( 'ZW'
        , 'Zimbabwe'
        , 4 
        );
INSERT INTO countries VALUES 
        ( 'SG'
        , 'Singapore'
        , 3 
        );
INSERT INTO countries VALUES 
        ( 'UK'
        , 'United Kingdom'
        , 1 
        );
INSERT INTO countries VALUES 
        ( 'FR'
        , 'France'
        , 1 
        );
INSERT INTO countries VALUES 
        ( 'DE'
        , 'Germany'
        , 1 
        );
INSERT INTO countries VALUES 
        ( 'ZM'
        , 'Zambia'
        , 4 
        );
INSERT INTO countries VALUES 
        ( 'EG'
        , 'Egypt'
        , 4 
        );
INSERT INTO countries VALUES 
        ( 'BR'
        , 'Brazil'
        , 2 
        );
INSERT INTO countries VALUES 
        ( 'CH'
        , 'Switzerland'
        , 1 
        );
INSERT INTO countries VALUES 
        ( 'NL'
        , 'Netherlands'
        , 1 
        );
INSERT INTO countries VALUES 
        ( 'MX'
        , 'Mexico'
        , 2 
        );
INSERT INTO countries VALUES 
        ( 'KW'
        , 'Kuwait'
        , 4 
        );
INSERT INTO countries VALUES 
        ( 'IL'
        , 'Israel'
        , 4 
        );
INSERT INTO countries VALUES 
        ( 'DK'
        , 'Denmark'
        , 1 
        );
INSERT INTO countries VALUES 
        ( 'ML'
        , 'Malaysia'
        , 3 
        );
INSERT INTO countries VALUES 
        ( 'NG'
        , 'Nigeria'
        , 4 
        );
INSERT INTO countries VALUES 
        ( 'AR'
        , 'Argentina'
        , 2 
        );
INSERT INTO countries VALUES 
        ( 'BE'
        , 'Belgium'
        , 1 
        );



INSERT INTO departments VALUES 
        ( 10
        , 'Administration'
        , 200
        , 1700
        );
INSERT INTO departments VALUES 
        ( 20
        , 'Marketing'
        , 201
        , 1800
        );
                                
INSERT INTO departments VALUES 
        ( 30
        , 'Purchasing'
        , 114
        , 1700
    );
                
INSERT INTO departments VALUES 
        ( 40
        , 'Human Resources'
        , 203
        , 2400
        );
INSERT INTO departments VALUES 
        ( 50
        , 'Shipping'
        , 121
        , 1500
        );
                
INSERT INTO departments VALUES 
        ( 60 
        , 'IT'
        , 103
        , 1400
        );
                
INSERT INTO departments VALUES 
        ( 70 
        , 'Public Relations'
        , 204
        , 2700
        );
                
INSERT INTO departments VALUES 
        ( 80 
        , 'Sales'
        , 145
        , 2500
        );
                
INSERT INTO departments VALUES 
        ( 90 
        , 'Executive'
        , 100
        , 1700
        );
INSERT INTO departments VALUES 
        ( 100 
        , 'Finance'
        , 108
        , 1700
        );
                
INSERT INTO departments VALUES 
        ( 110 
        , 'Accounting'
        , 205
        , 1700
        );
INSERT INTO departments VALUES 
        ( 120 
        , 'Treasury'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 130 
        , 'Corporate Tax'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 140 
        , 'Control And Credit'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 150 
        , 'Shareholder Services'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 160 
        , 'Benefits'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 170 
        , 'Manufacturing'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 180 
        , 'Construction'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 190 
        , 'Contracting'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 200 
        , 'Operations'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 210 
        , 'IT Support'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 220 
        , 'NOC'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 230 
        , 'IT Helpdesk'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 240 
        , 'Government Sales'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 250 
        , 'Retail Sales'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 260 
        , 'Recruiting'
        , NULL
        , 1700
        );
INSERT INTO departments VALUES 
        ( 270 
        , 'Payroll'
        , NULL
        , 1700
        );


INSERT INTO jobs VALUES 
        ( 'AD_PRES'
        , 'President'
        , 20080
        , 40000
        );
INSERT INTO jobs VALUES 
        ( 'AD_VP'
        , 'Administration Vice President'
        , 15000
        , 30000
        );
INSERT INTO jobs VALUES 
        ( 'AD_ASST'
        , 'Administration Assistant'
        , 3000
        , 6000
        );
INSERT INTO jobs VALUES 
        ( 'FI_MGR'
        , 'Finance Manager'
        , 8200
        , 16000
        );
INSERT INTO jobs VALUES 
        ( 'FI_ACCOUNT'
        , 'Accountant'
        , 4200
        , 9000
        );
INSERT INTO jobs VALUES 
        ( 'AC_MGR'
        , 'Accounting Manager'
        , 8200
        , 16000
        );
INSERT INTO jobs VALUES 
        ( 'AC_ACCOUNT'
        , 'Public Accountant'
        , 4200
        , 9000
        );
INSERT INTO jobs VALUES 
        ( 'SA_MAN'
        , 'Sales Manager'
        , 10000
        , 20080
        );
INSERT INTO jobs VALUES 
        ( 'SA_REP'
        , 'Sales Representative'
        , 6000
        , 12008
        );
INSERT INTO jobs VALUES 
        ( 'PU_MAN'
        , 'Purchasing Manager'
        , 8000
        , 15000
        );
INSERT INTO jobs VALUES 
        ( 'PU_CLERK'
        , 'Purchasing Clerk'
        , 2500
        , 5500
        );
INSERT INTO jobs VALUES 
        ( 'ST_MAN'
        , 'Stock Manager'
        , 5500
        , 8500
        );
INSERT INTO jobs VALUES 
        ( 'ST_CLERK'
        , 'Stock Clerk'
        , 2008
        , 5000
        );
INSERT INTO jobs VALUES 
        ( 'SH_CLERK'
        , 'Shipping Clerk'
        , 2500
        , 5500
        );
INSERT INTO jobs VALUES 
        ( 'IT_PROG'
        , 'Programmer'
        , 4000
        , 10000
        );
INSERT INTO jobs VALUES 
        ( 'MK_MAN'
        , 'Marketing Manager'
        , 9000
        , 15000
        );
INSERT INTO jobs VALUES 
        ( 'MK_REP'
        , 'Marketing Representative'
        , 4000
        , 9000
        );
INSERT INTO jobs VALUES 
        ( 'HR_REP'
        , 'Human Resources Representative'
        , 4000
        , 9000
        );
INSERT INTO jobs VALUES 
        ( 'PR_REP'
        , 'Public Relations Representative'
        , 4500
        , 10500
        );
