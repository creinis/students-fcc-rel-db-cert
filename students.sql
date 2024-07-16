--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--
CREATE DATABASE students WITH 
    TEMPLATE = template0 
    ENCODING = 'UTF8' 
    LC_COLLATE = 'C.UTF-8' 
    LC_CTYPE = 'C.UTF-8';

ALTER DATABASE students OWNER TO freecodecamp;

\connect students


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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;

--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);

ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);

ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--


--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--


--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (23, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (24, 'Web Programming');
INSERT INTO public.courses VALUES (25, 'Database Systems');
INSERT INTO public.courses VALUES (26, 'Computer Networks');
INSERT INTO public.courses VALUES (27, 'SQL');
INSERT INTO public.courses VALUES (28, 'Machine Learning');
INSERT INTO public.courses VALUES (29, 'Computer Systems');
INSERT INTO public.courses VALUES (30, 'Web Applications');
INSERT INTO public.courses VALUES (31, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (32, 'Python');
INSERT INTO public.courses VALUES (33, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (34, 'Calculus');
INSERT INTO public.courses VALUES (35, 'Game Architecture');
INSERT INTO public.courses VALUES (36, 'Algorithms');
INSERT INTO public.courses VALUES (37, 'UNIX');
INSERT INTO public.courses VALUES (38, 'Server Administration');
INSERT INTO public.courses VALUES (39, 'Network Security');

--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (36, 'Database Administration');
INSERT INTO public.majors VALUES (37, 'Web Development');
INSERT INTO public.majors VALUES (38, 'Data Science');
INSERT INTO public.majors VALUES (39, 'Network Engineering');
INSERT INTO public.majors VALUES (40, 'Computer Programming');
INSERT INTO public.majors VALUES (41, 'Game Design');
INSERT INTO public.majors VALUES (42, 'System Administration');

--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (36, 23);
INSERT INTO public.majors_courses VALUES (37, 24);
INSERT INTO public.majors_courses VALUES (36, 25);
INSERT INTO public.majors_courses VALUES (38, 23);
INSERT INTO public.majors_courses VALUES (39, 26);
INSERT INTO public.majors_courses VALUES (36, 27);
INSERT INTO public.majors_courses VALUES (38, 28);
INSERT INTO public.majors_courses VALUES (39, 29);
INSERT INTO public.majors_courses VALUES (40, 26);
INSERT INTO public.majors_courses VALUES (36, 30);
INSERT INTO public.majors_courses VALUES (41, 31);
INSERT INTO public.majors_courses VALUES (38, 32);
INSERT INTO public.majors_courses VALUES (40, 33);
INSERT INTO public.majors_courses VALUES (42, 29);
INSERT INTO public.majors_courses VALUES (41, 34);
INSERT INTO public.majors_courses VALUES (37, 23);
INSERT INTO public.majors_courses VALUES (38, 34);
INSERT INTO public.majors_courses VALUES (37, 33);
INSERT INTO public.majors_courses VALUES (41, 35);
INSERT INTO public.majors_courses VALUES (42, 26);
INSERT INTO public.majors_courses VALUES (41, 36);
INSERT INTO public.majors_courses VALUES (42, 37);
INSERT INTO public.majors_courses VALUES (42, 38);
INSERT INTO public.majors_courses VALUES (40, 29);
INSERT INTO public.majors_courses VALUES (40, 32);
INSERT INTO public.majors_courses VALUES (39, 39);
INSERT INTO public.majors_courses VALUES (37, 30);
INSERT INTO public.majors_courses VALUES (39, 36);

--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (7, 'Rhea', 'Kellems', 36, 2.5);
INSERT INTO public.students VALUES (8, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (9, 'Kimberly', 'Whitley', 37, 3.8);
INSERT INTO public.students VALUES (10, 'Jimmy', 'Felipe', 36, 3.7);
INSERT INTO public.students VALUES (11, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (12, 'Casares', 'Hijo', 41, 4.0);
INSERT INTO public.students VALUES (13, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (14, 'Sterling', 'Boss', 41, 3.9);
INSERT INTO public.students VALUES (15, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (16, 'Kaija', 'Uronen', 41, 3.7);
INSERT INTO public.students VALUES (17, 'Faye', 'Conn', 41, 2.1);
INSERT INTO public.students VALUES (18, 'Efren', 'Reilly', 37, 3.9);
INSERT INTO public.students VALUES (19, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (20, 'Maxine', 'Hagenes', 36, 2.9);
INSERT INTO public.students VALUES (21, 'Larry', 'Saunders', 38, 2.2);
INSERT INTO public.students VALUES (22, 'Karl', 'Kuhar', 37, NULL);
INSERT INTO public.students VALUES (23, 'Lieke', 'Hazenveld', 41, 3.5);
INSERT INTO public.students VALUES (24, 'Obie', 'Hilpert', 37, NULL);
INSERT INTO public.students VALUES (25, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (26, 'Nathan', 'Turner', 36, 3.3);
INSERT INTO public.students VALUES (27, 'Gerald', 'Osiki', 38, 2.2);
INSERT INTO public.students VALUES (28, 'Vanya', 'Hassanah', 41, 4.0);
INSERT INTO public.students VALUES (29, 'Roxelana', 'Florescu', 36, 3.2);
INSERT INTO public.students VALUES (30, 'Helene', 'Parker', 38, 3.4);
INSERT INTO public.students VALUES (31, 'Mariana', 'Russel', 37, 1.8);
INSERT INTO public.students VALUES (32, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (33, 'Mehdi', 'Vandenberghe', 36, 1.9);
INSERT INTO public.students VALUES (34, 'Dejon', 'Howell', 37, 4.0);
INSERT INTO public.students VALUES (35, 'Aliya', 'Gulgowski', 42, 2.6);
INSERT INTO public.students VALUES (36, 'Ana', 'Tupajic', 38, 3.1);
INSERT INTO public.students VALUES (37, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--


--
-- PostgreSQL database dump complete
--