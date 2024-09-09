--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


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

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (53, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (54, 'Web Programming');
INSERT INTO public.courses VALUES (55, 'Database Systems');
INSERT INTO public.courses VALUES (56, 'Computer Networks');
INSERT INTO public.courses VALUES (57, 'SQL');
INSERT INTO public.courses VALUES (58, 'Machine Learning');
INSERT INTO public.courses VALUES (59, 'Computer Systems');
INSERT INTO public.courses VALUES (60, 'Web Applications');
INSERT INTO public.courses VALUES (61, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (62, 'Python');
INSERT INTO public.courses VALUES (63, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (64, 'Calculus');
INSERT INTO public.courses VALUES (65, 'Game Architecture');
INSERT INTO public.courses VALUES (66, 'Algorithms');
INSERT INTO public.courses VALUES (67, 'UNIX');
INSERT INTO public.courses VALUES (68, 'Server Administration');
INSERT INTO public.courses VALUES (69, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (69, 'Database Administration');
INSERT INTO public.majors VALUES (70, 'Web Development');
INSERT INTO public.majors VALUES (71, 'Data Science');
INSERT INTO public.majors VALUES (72, 'Network Engineering');
INSERT INTO public.majors VALUES (73, 'Computer Programming');
INSERT INTO public.majors VALUES (74, 'Game Design');
INSERT INTO public.majors VALUES (75, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (69, 53);
INSERT INTO public.majors_courses VALUES (70, 54);
INSERT INTO public.majors_courses VALUES (69, 55);
INSERT INTO public.majors_courses VALUES (71, 53);
INSERT INTO public.majors_courses VALUES (72, 56);
INSERT INTO public.majors_courses VALUES (69, 57);
INSERT INTO public.majors_courses VALUES (71, 58);
INSERT INTO public.majors_courses VALUES (72, 59);
INSERT INTO public.majors_courses VALUES (73, 56);
INSERT INTO public.majors_courses VALUES (69, 60);
INSERT INTO public.majors_courses VALUES (74, 61);
INSERT INTO public.majors_courses VALUES (71, 62);
INSERT INTO public.majors_courses VALUES (73, 63);
INSERT INTO public.majors_courses VALUES (75, 59);
INSERT INTO public.majors_courses VALUES (74, 64);
INSERT INTO public.majors_courses VALUES (70, 53);
INSERT INTO public.majors_courses VALUES (71, 64);
INSERT INTO public.majors_courses VALUES (70, 63);
INSERT INTO public.majors_courses VALUES (74, 65);
INSERT INTO public.majors_courses VALUES (75, 56);
INSERT INTO public.majors_courses VALUES (74, 66);
INSERT INTO public.majors_courses VALUES (75, 67);
INSERT INTO public.majors_courses VALUES (75, 68);
INSERT INTO public.majors_courses VALUES (73, 59);
INSERT INTO public.majors_courses VALUES (73, 62);
INSERT INTO public.majors_courses VALUES (72, 69);
INSERT INTO public.majors_courses VALUES (70, 60);
INSERT INTO public.majors_courses VALUES (72, 66);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (269, 'Rhea', 'Kellems', 69, 2.5);
INSERT INTO public.students VALUES (270, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (271, 'Kimberly', 'Whitley', 70, 3.8);
INSERT INTO public.students VALUES (272, 'Jimmy', 'Felipe', 69, 3.7);
INSERT INTO public.students VALUES (273, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (274, 'Casares', 'Hijo', 74, 4.0);
INSERT INTO public.students VALUES (275, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (276, 'Sterling', 'Boss', 74, 3.9);
INSERT INTO public.students VALUES (277, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (278, 'Kaija', 'Uronen', 74, 3.7);
INSERT INTO public.students VALUES (279, 'Faye', 'Conn', 74, 2.1);
INSERT INTO public.students VALUES (280, 'Efren', 'Reilly', 70, 3.9);
INSERT INTO public.students VALUES (281, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (282, 'Maxine', 'Hagenes', 69, 2.9);
INSERT INTO public.students VALUES (283, 'Larry', 'Saunders', 71, 2.2);
INSERT INTO public.students VALUES (284, 'Karl', 'Kuhar', 70, NULL);
INSERT INTO public.students VALUES (285, 'Lieke', 'Hazenveld', 74, 3.5);
INSERT INTO public.students VALUES (286, 'Obie', 'Hilpert', 70, NULL);
INSERT INTO public.students VALUES (287, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (288, 'Nathan', 'Turner', 69, 3.3);
INSERT INTO public.students VALUES (289, 'Gerald', 'Osiki', 71, 2.2);
INSERT INTO public.students VALUES (290, 'Vanya', 'Hassanah', 74, 4.0);
INSERT INTO public.students VALUES (291, 'Roxelana', 'Florescu', 69, 3.2);
INSERT INTO public.students VALUES (292, 'Helene', 'Parker', 71, 3.4);
INSERT INTO public.students VALUES (293, 'Mariana', 'Russel', 70, 1.8);
INSERT INTO public.students VALUES (294, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (295, 'Mehdi', 'Vandenberghe', 69, 1.9);
INSERT INTO public.students VALUES (296, 'Dejon', 'Howell', 70, 4.0);
INSERT INTO public.students VALUES (297, 'Aliya', 'Gulgowski', 75, 2.6);
INSERT INTO public.students VALUES (298, 'Ana', 'Tupajic', 71, 3.1);
INSERT INTO public.students VALUES (299, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 69, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 75, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 299, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

