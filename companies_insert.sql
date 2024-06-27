--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

DELETE FROM public.employee;
DELETE FROM public.companies;

INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (1, 'Apple', '1980-05-17', 123456789012.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (2, 'Microsoft', '1995-11-20', 234567890123.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (3, 'Amazon', '1999-12-01', 345678901234.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (4, 'Google', '2004-09-27', 456789012345.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (5, 'Facebook', '2004-02-04', 567890123456.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (6, 'Tesla', '2010-06-29', 678901234567.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (7, 'Berkshire Hathaway', '1970-01-01', 789012345678.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (8, 'Johnson & Johnson', '1970-02-04', 890123456789.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (9, 'Visa', '1970-03-06', 901234567890.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (10, 'NVIDIA', '1993-04-09', 912345678901.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (11, 'Company 1', '1995-08-25', 12345678.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (12, 'Company 2', '2001-07-13', 23456789.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (13, 'Company 3', '2008-04-05', 34567890.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (14, 'Company 4', '2012-09-14', 45678901.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (15, 'Company 5', '1985-03-22', 56789012.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (16, 'Company 6', '1999-06-30', 67890123.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (17, 'Company 7', '2002-08-17', 78901234.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (18, 'Company 8', '2011-05-28', 89012345.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (19, 'Company 9', '1996-12-14', 90123456.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (20, 'Company 10', '2007-04-10', 123456789.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (21, 'Company 11', '1984-02-02', 234567890.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (22, 'Company 12', '1998-07-09', 345678901.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (23, 'Company 13', '2010-01-05', 456789012.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (24, 'Company 14', '2004-11-12', 567890123.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (25, 'Company 15', '1987-06-06', 678901234.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (26, 'Company 16', '1993-10-28', 789012345.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (27, 'Company 17', '2006-05-15', 890123456.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (28, 'Company 18', '2015-09-19', 901234567.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (29, 'Company 19', '1989-08-21', 1234567890.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (30, 'Company 20', '1997-11-30', 2345678901.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (31, 'Company 21', '2003-03-08', 3456789012.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (32, 'Company 22', '2009-12-25', 4567890123.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (33, 'Company 23', '1980-01-17', 5678901234.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (34, 'Company 24', '1992-04-14', 6789012345.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (35, 'Company 25', '2000-06-09', 7890123456.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (36, 'Company 26', '2013-11-03', 8901234567.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (37, 'Company 27', '1982-08-16', 9012345678.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (38, 'Company 28', '1990-05-12', 12345678901.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (39, 'Company 29', '2005-01-07', 23456789012.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (40, 'Company 30', '2014-02-18', 34567890123.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (41, 'Company 31', '1981-03-25', 45678901234.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (42, 'Company 32', '1991-06-04', 56789012345.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (43, 'Company 33', '2008-09-14', 67890123456.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (44, 'Company 34', '2016-12-20', 78901234567.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (45, 'Company 35', '1983-07-02', 89012345678.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (46, 'Company 36', '1994-08-26', 90123456789.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (47, 'Company 37', '2001-10-15', 123456789012.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (48, 'Company 38', '2007-02-19', 234567890123.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (49, 'Company 39', '2018-11-22', 345678901234.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (50, 'Company 40', '1988-04-28', 456789012345.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (51, 'Company 41', '1990-06-06', 567890123456.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (52, 'Company 42', '2000-11-01', 678901234567.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (53, 'Company 43', '2019-01-10', 789012345678.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (54, 'Company 44', '1992-05-07', 890123456789.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (55, 'Company 45', '2004-03-13', 901234567890.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (56, 'Company 46', '1986-11-18', 123456789012.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (57, 'Company 47', '1997-12-20', 234567890123.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (58, 'Company 48', '2006-04-07', 345678901234.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (59, 'Company 49', '2011-10-30', 456789012345.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (60, 'Company 50', '1985-01-03', 567890123456.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (61, 'Company 51', '1994-12-11', 678901234567.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (62, 'Company 52', '2002-06-28', 789012345678.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (63, 'Company 53', '2009-09-03', 890123456789.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (64, 'Company 54', '2017-04-25', 901234567890.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (65, 'Company 55', '1989-02-22', 123456789012.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (66, 'Company 56', '1996-07-30', 234567890123.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (67, 'Company 57', '2001-05-14', 345678901234.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (68, 'Company 58', '2006-08-29', 456789012345.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (69, 'Company 59', '2013-03-22', 567890123456.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (70, 'Company 60', '1984-04-08', 678901234567.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (71, 'Company 61', '1999-09-27', 789012345678.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (72, 'Company 62', '2005-01-01', 890123456789.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (73, 'Company 63', '2010-06-18', 901234567890.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (74, 'Company 64', '1981-08-14', 123456789012.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (75, 'Company 65', '1991-10-17', 234567890123.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (76, 'Company 66', '2003-11-11', 345678901234.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (77, 'Company 67', '2018-02-23', 456789012345.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (78, 'Company 68', '1993-04-13', 567890123456.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (79, 'Company 69', '2000-07-25', 678901234567.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (80, 'Company 70', '2007-03-29', 789012345678.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (81, 'Company 71', '2015-09-15', 890123456789.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (82, 'Company 72', '1980-01-07', 901234567890.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (83, 'Company 73', '1995-04-19', 123456789012.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (84, 'Company 74', '2003-10-01', 234567890123.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (85, 'Company 75', '2010-12-21', 345678901234.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (86, 'Company 76', '1986-11-04', 456789012345.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (87, 'Company 77', '1999-08-17', 567890123456.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (88, 'Company 78', '2004-07-30', 678901234567.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (89, 'Company 79', '2009-02-25', 789012345678.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (90, 'Company 80', '2013-09-16', 890123456789.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (91, 'Company 81', '1988-12-09', 901234567890.89);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (92, 'Company 82', '1992-11-14', 123456789012.9);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (93, 'Company 83', '2002-06-06', 234567890123.01);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (94, 'Company 84', '2010-01-21', 345678901234.12);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (95, 'Company 85', '2018-05-03', 456789012345.23);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (96, 'Company 86', '1987-07-18', 567890123456.34);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (97, 'Company 87', '1998-02-26', 678901234567.45);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (98, 'Company 88', '2005-03-20', 789012345678.56);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (99, 'Company 89', '2011-06-02', 890123456789.67);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (100, 'Company 90', '1983-10-13', 901234567890.78);
INSERT INTO public.companies (id, name, founded_date, market_value) VALUES (104, 'TestAdd3', '2000-05-17', 123456789000);


INSERT INTO public.employee (name, position, company_id) VALUES ('John Doe', 'Software Engineer', 3);
INSERT INTO public.employee (name, position, company_id) VALUES ('Jane Smith', 'Project Manager', 1);
INSERT INTO public.employee (name, position, company_id) VALUES ('Alice Johnson', 'Data Scientist', 4);
INSERT INTO public.employee (name, position, company_id) VALUES ('Bob Brown', 'UX Designer', 2);
INSERT INTO public.employee (name, position, company_id) VALUES ('Charlie Davis', 'Marketing Specialist', 5);
INSERT INTO public.employee (name, position, company_id) VALUES ('David Wilson', 'Product Manager', 1);
INSERT INTO public.employee (name, position, company_id) VALUES ('Eva Miller', 'Backend Developer', 3);
INSERT INTO public.employee (name, position, company_id) VALUES ('Frank Thomas', 'HR Manager', 2);
INSERT INTO public.employee (name, position, company_id) VALUES ('Grace Lee', 'QA Engineer', 4);
INSERT INTO public.employee (name, position, company_id) VALUES ('Hannah Walker', 'Sales Executive', 5);

--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 104, true);


--
-- PostgreSQL database dump complete
--

