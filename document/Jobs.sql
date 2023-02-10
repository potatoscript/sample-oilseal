--
-- Name: Employees; Type: TABLE; Schema: public;
--
create table public.Jobs  (
  JobId bigserial not null
  , EmployeeName varchar(30)  not null
  , EmployeeDepartment varchar(30) not null
  , JobContent varchar(30) not null
  , DueDate varchar(30) null
  , Status varchar(30) null
  , primary key (EmployeeId)
);

--
-- Name: TABLE Jobs; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON TABLE public.Jobs
    IS '業務ﾃﾞｰﾀテーブル';

--
-- Name: COLUMN Jobs.EmployeeId; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Jobs.JobsId
    IS '業務ID';

--
-- Name: COLUMN Jobs.EmployeeName; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Jobs.EmployeeName
    IS '従業員名称';
	
--
-- Name: COLUMN Jobs.EmployeeDepartment; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Jobs.EmployeeDepartment
    IS '部署';

--
-- Name: COLUMN Jobs.JobContent; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Jobs.JobContent
    IS '業務内容';

--
-- Name: COLUMN Jobs.DueDate; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Jobs.DueDate
    IS '納期';
	
--
-- Name: COLUMN Jobs.Status; Type: COMMENT; Schema: public; Owner: lim
--
COMMENT ON COLUMN public.Jobs.Status
    IS '進捗状況';	
	
	
	
	