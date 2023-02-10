--
-- Name: Employees; Type: TABLE; Schema: public;
--
create table public.Employees  (
  EmployeeId bigserial not null
  , Name varchar(30)  not null
  , Position varchar(30) null
  , Department varchar(30) not null
  , Email varchar(30) null
  , primary key (EmployeeId)
);

--
-- Name: TABLE Employees; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON TABLE public.Employees
    IS '従業員ﾃﾞｰﾀテーブル';

--
-- Name: COLUMN Employees.EmployeeId; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Employees.EmployeeId
    IS '従業員ID';

--
-- Name: COLUMN Employees.Name; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Employees.Name
    IS '従業員名称';
	
--
-- Name: COLUMN Employees.Position; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Employees.Position
    IS '役';

--
-- Name: COLUMN Employees.Department; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Employees.Department
    IS '部署';

--
-- Name: COLUMN Employees.Email; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Employees.Email
    IS 'メール';
	
	
	
	