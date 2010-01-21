DROP SCHEMA public CASCADE;
CREATE SCHEMA public AUTHORIZATION postgres;
--
-- PostgreSQL database dump
--

-- Started on 2010-01-06 14:02:51 BRST

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1844 (class 1259 OID 5289956)
-- Dependencies: 5
-- Name: account_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE account_ (
    accountid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    parentaccountid bigint,
    name character varying(75),
    legalname character varying(75),
    legalid character varying(75),
    legaltype character varying(75),
    siccode character varying(75),
    tickersymbol character varying(75),
    industry character varying(75),
    type_ character varying(75),
    size_ character varying(75)
);


ALTER TABLE public.account_ OWNER TO postgres;

--
-- TOC entry 1845 (class 1259 OID 5289964)
-- Dependencies: 5
-- Name: address; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE address (
    addressid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    street1 character varying(75),
    street2 character varying(75),
    street3 character varying(75),
    city character varying(75),
    zip character varying(75),
    regionid bigint,
    countryid bigint,
    typeid integer,
    mailing boolean,
    primary_ boolean
);


ALTER TABLE public.address OWNER TO postgres;

--
-- TOC entry 1846 (class 1259 OID 5289969)
-- Dependencies: 5
-- Name: announcementsdelivery; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE announcementsdelivery (
    deliveryid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    type_ character varying(75),
    email boolean,
    sms boolean,
    website boolean
);


ALTER TABLE public.announcementsdelivery OWNER TO postgres;

--
-- TOC entry 1847 (class 1259 OID 5289974)
-- Dependencies: 5
-- Name: announcementsentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE announcementsentry (
    uuid_ character varying(75),
    entryid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    title character varying(75),
    content text,
    url text,
    type_ character varying(75),
    displaydate timestamp without time zone,
    expirationdate timestamp without time zone,
    priority integer,
    alert boolean
);


ALTER TABLE public.announcementsentry OWNER TO postgres;

--
-- TOC entry 1848 (class 1259 OID 5289982)
-- Dependencies: 5
-- Name: announcementsflag; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE announcementsflag (
    flagid bigint NOT NULL,
    userid bigint,
    createdate timestamp without time zone,
    entryid bigint,
    value integer
);


ALTER TABLE public.announcementsflag OWNER TO postgres;

--
-- TOC entry 1849 (class 1259 OID 5289987)
-- Dependencies: 5
-- Name: blogsentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blogsentry (
    uuid_ character varying(75),
    entryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    title character varying(150),
    urltitle character varying(150),
    content text,
    displaydate timestamp without time zone,
    draft boolean,
    allowtrackbacks boolean,
    trackbacks text
);


ALTER TABLE public.blogsentry OWNER TO postgres;

--
-- TOC entry 1850 (class 1259 OID 5289995)
-- Dependencies: 5
-- Name: blogsstatsuser; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blogsstatsuser (
    statsuserid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    entrycount integer,
    lastpostdate timestamp without time zone,
    ratingstotalentries integer,
    ratingstotalscore double precision,
    ratingsaveragescore double precision
);


ALTER TABLE public.blogsstatsuser OWNER TO postgres;

--
-- TOC entry 1851 (class 1259 OID 5290000)
-- Dependencies: 5
-- Name: bookmarksentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bookmarksentry (
    uuid_ character varying(75),
    entryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    folderid bigint,
    name character varying(255),
    url text,
    comments text,
    visits integer,
    priority integer
);


ALTER TABLE public.bookmarksentry OWNER TO postgres;

--
-- TOC entry 1852 (class 1259 OID 5290008)
-- Dependencies: 5
-- Name: bookmarksfolder; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bookmarksfolder (
    uuid_ character varying(75),
    folderid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    parentfolderid bigint,
    name character varying(75),
    description text
);


ALTER TABLE public.bookmarksfolder OWNER TO postgres;

--
-- TOC entry 1853 (class 1259 OID 5290016)
-- Dependencies: 5
-- Name: browsertracker; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE browsertracker (
    browsertrackerid bigint NOT NULL,
    userid bigint,
    browserkey bigint
);


ALTER TABLE public.browsertracker OWNER TO postgres;

--
-- TOC entry 1854 (class 1259 OID 5290021)
-- Dependencies: 5
-- Name: calevent; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE calevent (
    uuid_ character varying(75),
    eventid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    title character varying(75),
    description text,
    startdate timestamp without time zone,
    enddate timestamp without time zone,
    durationhour integer,
    durationminute integer,
    allday boolean,
    timezonesensitive boolean,
    type_ character varying(75),
    repeating boolean,
    recurrence text,
    remindby integer,
    firstreminder integer,
    secondreminder integer
);


ALTER TABLE public.calevent OWNER TO postgres;

--
-- TOC entry 1971 (class 1259 OID 5291222)
-- Dependencies: 5
-- Name: chat_entry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE chat_entry (
    entryid bigint NOT NULL,
    createdate bigint,
    fromuserid bigint,
    touserid bigint,
    content text
);


ALTER TABLE public.chat_entry OWNER TO postgres;

--
-- TOC entry 1972 (class 1259 OID 5291230)
-- Dependencies: 5
-- Name: chat_status; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE chat_status (
    statusid bigint NOT NULL,
    userid bigint,
    modifieddate bigint,
    online_ boolean,
    awake boolean,
    activepanelid character varying(75),
    message text,
    playsound boolean
);


ALTER TABLE public.chat_status OWNER TO postgres;

--
-- TOC entry 1855 (class 1259 OID 5290029)
-- Dependencies: 5
-- Name: classname_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE classname_ (
    classnameid bigint NOT NULL,
    value character varying(200)
);


ALTER TABLE public.classname_ OWNER TO postgres;

--
-- TOC entry 1856 (class 1259 OID 5290034)
-- Dependencies: 5
-- Name: company; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE company (
    companyid bigint NOT NULL,
    accountid bigint,
    webid character varying(75),
    key_ text,
    virtualhost character varying(75),
    mx character varying(75),
    homeurl text,
    logoid bigint,
    system boolean
);


ALTER TABLE public.company OWNER TO postgres;

--
-- TOC entry 1857 (class 1259 OID 5290042)
-- Dependencies: 5
-- Name: contact_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact_ (
    contactid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    accountid bigint,
    parentcontactid bigint,
    firstname character varying(75),
    middlename character varying(75),
    lastname character varying(75),
    prefixid integer,
    suffixid integer,
    male boolean,
    birthday timestamp without time zone,
    smssn character varying(75),
    aimsn character varying(75),
    facebooksn character varying(75),
    icqsn character varying(75),
    jabbersn character varying(75),
    msnsn character varying(75),
    myspacesn character varying(75),
    skypesn character varying(75),
    twittersn character varying(75),
    ymsn character varying(75),
    employeestatusid character varying(75),
    employeenumber character varying(75),
    jobtitle character varying(100),
    jobclass character varying(75),
    hoursofoperation character varying(75)
);


ALTER TABLE public.contact_ OWNER TO postgres;

--
-- TOC entry 1858 (class 1259 OID 5290050)
-- Dependencies: 5
-- Name: counter; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE counter (
    name character varying(75) NOT NULL,
    currentid bigint
);


ALTER TABLE public.counter OWNER TO postgres;

--
-- TOC entry 1859 (class 1259 OID 5290055)
-- Dependencies: 5
-- Name: country; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE country (
    countryid bigint NOT NULL,
    name character varying(75),
    a2 character varying(75),
    a3 character varying(75),
    number_ character varying(75),
    idd_ character varying(75),
    active_ boolean
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 1860 (class 1259 OID 5290060)
-- Dependencies: 5
-- Name: cyrususer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cyrususer (
    userid character varying(75) NOT NULL,
    password_ character varying(75) NOT NULL
);


ALTER TABLE public.cyrususer OWNER TO postgres;

--
-- TOC entry 1861 (class 1259 OID 5290065)
-- Dependencies: 5
-- Name: cyrusvirtual; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cyrusvirtual (
    emailaddress character varying(75) NOT NULL,
    userid character varying(75) NOT NULL
);


ALTER TABLE public.cyrusvirtual OWNER TO postgres;

--
-- TOC entry 1862 (class 1259 OID 5290070)
-- Dependencies: 5
-- Name: dlfileentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dlfileentry (
    uuid_ character varying(75),
    fileentryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    versionuserid bigint,
    versionusername character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    folderid bigint,
    name character varying(255),
    title character varying(255),
    description text,
    version double precision,
    size_ integer,
    readcount integer,
    extrasettings text
);


ALTER TABLE public.dlfileentry OWNER TO postgres;

--
-- TOC entry 1863 (class 1259 OID 5290078)
-- Dependencies: 5
-- Name: dlfilerank; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dlfilerank (
    filerankid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    folderid bigint,
    name character varying(255)
);


ALTER TABLE public.dlfilerank OWNER TO postgres;

--
-- TOC entry 1864 (class 1259 OID 5290083)
-- Dependencies: 5
-- Name: dlfileshortcut; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dlfileshortcut (
    uuid_ character varying(75),
    fileshortcutid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    folderid bigint,
    tofolderid bigint,
    toname character varying(255)
);


ALTER TABLE public.dlfileshortcut OWNER TO postgres;

--
-- TOC entry 1865 (class 1259 OID 5290088)
-- Dependencies: 5
-- Name: dlfileversion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dlfileversion (
    fileversionid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    folderid bigint,
    name character varying(255),
    version double precision,
    size_ integer
);


ALTER TABLE public.dlfileversion OWNER TO postgres;

--
-- TOC entry 1866 (class 1259 OID 5290093)
-- Dependencies: 5
-- Name: dlfolder; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dlfolder (
    uuid_ character varying(75),
    folderid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    parentfolderid bigint,
    name character varying(100),
    description text,
    lastpostdate timestamp without time zone
);


ALTER TABLE public.dlfolder OWNER TO postgres;

--
-- TOC entry 1867 (class 1259 OID 5290101)
-- Dependencies: 5
-- Name: emailaddress; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emailaddress (
    emailaddressid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    address character varying(75),
    typeid integer,
    primary_ boolean
);


ALTER TABLE public.emailaddress OWNER TO postgres;

--
-- TOC entry 1868 (class 1259 OID 5290106)
-- Dependencies: 5
-- Name: expandocolumn; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE expandocolumn (
    columnid bigint NOT NULL,
    companyid bigint,
    tableid bigint,
    name character varying(75),
    type_ integer,
    defaultdata text,
    typesettings text
);


ALTER TABLE public.expandocolumn OWNER TO postgres;

--
-- TOC entry 1869 (class 1259 OID 5290114)
-- Dependencies: 5
-- Name: expandorow; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE expandorow (
    rowid_ bigint NOT NULL,
    companyid bigint,
    tableid bigint,
    classpk bigint
);


ALTER TABLE public.expandorow OWNER TO postgres;

--
-- TOC entry 1870 (class 1259 OID 5290119)
-- Dependencies: 5
-- Name: expandotable; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE expandotable (
    tableid bigint NOT NULL,
    companyid bigint,
    classnameid bigint,
    name character varying(75)
);


ALTER TABLE public.expandotable OWNER TO postgres;

--
-- TOC entry 1871 (class 1259 OID 5290124)
-- Dependencies: 5
-- Name: expandovalue; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE expandovalue (
    valueid bigint NOT NULL,
    companyid bigint,
    tableid bigint,
    columnid bigint,
    rowid_ bigint,
    classnameid bigint,
    classpk bigint,
    data_ text
);


ALTER TABLE public.expandovalue OWNER TO postgres;

--
-- TOC entry 1872 (class 1259 OID 5290132)
-- Dependencies: 5
-- Name: group_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE group_ (
    groupid bigint NOT NULL,
    companyid bigint,
    creatoruserid bigint,
    classnameid bigint,
    classpk bigint,
    parentgroupid bigint,
    livegroupid bigint,
    name character varying(75),
    description text,
    type_ integer,
    typesettings text,
    friendlyurl character varying(100),
    active_ boolean
);


ALTER TABLE public.group_ OWNER TO postgres;

--
-- TOC entry 1873 (class 1259 OID 5290140)
-- Dependencies: 5
-- Name: groups_orgs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE groups_orgs (
    groupid bigint NOT NULL,
    organizationid bigint NOT NULL
);


ALTER TABLE public.groups_orgs OWNER TO postgres;

--
-- TOC entry 1874 (class 1259 OID 5290145)
-- Dependencies: 5
-- Name: groups_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE groups_permissions (
    groupid bigint NOT NULL,
    permissionid bigint NOT NULL
);


ALTER TABLE public.groups_permissions OWNER TO postgres;

--
-- TOC entry 1875 (class 1259 OID 5290150)
-- Dependencies: 5
-- Name: groups_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE groups_roles (
    groupid bigint NOT NULL,
    roleid bigint NOT NULL
);


ALTER TABLE public.groups_roles OWNER TO postgres;

--
-- TOC entry 1876 (class 1259 OID 5290155)
-- Dependencies: 5
-- Name: groups_usergroups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE groups_usergroups (
    groupid bigint NOT NULL,
    usergroupid bigint NOT NULL
);


ALTER TABLE public.groups_usergroups OWNER TO postgres;

--
-- TOC entry 1877 (class 1259 OID 5290160)
-- Dependencies: 5
-- Name: igfolder; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE igfolder (
    uuid_ character varying(75),
    folderid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    parentfolderid bigint,
    name character varying(75),
    description text
);


ALTER TABLE public.igfolder OWNER TO postgres;

--
-- TOC entry 1878 (class 1259 OID 5290168)
-- Dependencies: 5
-- Name: igimage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE igimage (
    uuid_ character varying(75),
    imageid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    folderid bigint,
    name character varying(75),
    description text,
    smallimageid bigint,
    largeimageid bigint,
    custom1imageid bigint,
    custom2imageid bigint
);


ALTER TABLE public.igimage OWNER TO postgres;

--
-- TOC entry 1879 (class 1259 OID 5290176)
-- Dependencies: 5
-- Name: image; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE image (
    imageid bigint NOT NULL,
    modifieddate timestamp without time zone,
    text_ text,
    type_ character varying(75),
    height integer,
    width integer,
    size_ integer
);


ALTER TABLE public.image OWNER TO postgres;

--
-- TOC entry 1880 (class 1259 OID 5290184)
-- Dependencies: 5
-- Name: journalarticle; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE journalarticle (
    uuid_ character varying(75),
    id_ bigint NOT NULL,
    resourceprimkey bigint,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    articleid character varying(75),
    version double precision,
    title character varying(100),
    urltitle character varying(150),
    description text,
    content text,
    type_ character varying(75),
    structureid character varying(75),
    templateid character varying(75),
    displaydate timestamp without time zone,
    approved boolean,
    approvedbyuserid bigint,
    approvedbyusername character varying(75),
    approveddate timestamp without time zone,
    expired boolean,
    expirationdate timestamp without time zone,
    reviewdate timestamp without time zone,
    indexable boolean,
    smallimage boolean,
    smallimageid bigint,
    smallimageurl character varying(75)
);


ALTER TABLE public.journalarticle OWNER TO postgres;

--
-- TOC entry 1881 (class 1259 OID 5290192)
-- Dependencies: 5
-- Name: journalarticleimage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE journalarticleimage (
    articleimageid bigint NOT NULL,
    groupid bigint,
    articleid character varying(75),
    version double precision,
    elinstanceid character varying(75),
    elname character varying(75),
    languageid character varying(75),
    tempimage boolean
);


ALTER TABLE public.journalarticleimage OWNER TO postgres;

--
-- TOC entry 1882 (class 1259 OID 5290197)
-- Dependencies: 5
-- Name: journalarticleresource; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE journalarticleresource (
    resourceprimkey bigint NOT NULL,
    groupid bigint,
    articleid character varying(75)
);


ALTER TABLE public.journalarticleresource OWNER TO postgres;

--
-- TOC entry 1883 (class 1259 OID 5290202)
-- Dependencies: 5
-- Name: journalcontentsearch; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE journalcontentsearch (
    contentsearchid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    privatelayout boolean,
    layoutid bigint,
    portletid character varying(200),
    articleid character varying(75)
);


ALTER TABLE public.journalcontentsearch OWNER TO postgres;

--
-- TOC entry 1884 (class 1259 OID 5290207)
-- Dependencies: 5
-- Name: journalfeed; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE journalfeed (
    uuid_ character varying(75),
    id_ bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    feedid character varying(75),
    name character varying(75),
    description text,
    type_ character varying(75),
    structureid character varying(75),
    templateid character varying(75),
    renderertemplateid character varying(75),
    delta integer,
    orderbycol character varying(75),
    orderbytype character varying(75),
    targetlayoutfriendlyurl character varying(75),
    targetportletid character varying(75),
    contentfield character varying(75),
    feedtype character varying(75),
    feedversion double precision
);


ALTER TABLE public.journalfeed OWNER TO postgres;

--
-- TOC entry 1885 (class 1259 OID 5290215)
-- Dependencies: 5
-- Name: journalstructure; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE journalstructure (
    uuid_ character varying(75),
    id_ bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    structureid character varying(75),
    parentstructureid character varying(75),
    name character varying(75),
    description text,
    xsd text
);


ALTER TABLE public.journalstructure OWNER TO postgres;

--
-- TOC entry 1886 (class 1259 OID 5290223)
-- Dependencies: 5
-- Name: journaltemplate; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE journaltemplate (
    uuid_ character varying(75),
    id_ bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    templateid character varying(75),
    structureid character varying(75),
    name character varying(75),
    description text,
    xsl text,
    langtype character varying(75),
    cacheable boolean,
    smallimage boolean,
    smallimageid bigint,
    smallimageurl character varying(75)
);


ALTER TABLE public.journaltemplate OWNER TO postgres;

--
-- TOC entry 1887 (class 1259 OID 5290231)
-- Dependencies: 5
-- Name: layout; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE layout (
    plid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    privatelayout boolean,
    layoutid bigint,
    parentlayoutid bigint,
    name text,
    title text,
    description text,
    type_ character varying(75),
    typesettings text,
    hidden_ boolean,
    friendlyurl character varying(100),
    iconimage boolean,
    iconimageid bigint,
    themeid character varying(75),
    colorschemeid character varying(75),
    wapthemeid character varying(75),
    wapcolorschemeid character varying(75),
    css text,
    priority integer,
    dlfolderid bigint
);


ALTER TABLE public.layout OWNER TO postgres;

--
-- TOC entry 1888 (class 1259 OID 5290239)
-- Dependencies: 5
-- Name: layoutset; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE layoutset (
    layoutsetid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    privatelayout boolean,
    logo boolean,
    logoid bigint,
    themeid character varying(75),
    colorschemeid character varying(75),
    wapthemeid character varying(75),
    wapcolorschemeid character varying(75),
    css text,
    pagecount integer,
    virtualhost character varying(75)
);


ALTER TABLE public.layoutset OWNER TO postgres;

--
-- TOC entry 1889 (class 1259 OID 5290247)
-- Dependencies: 5
-- Name: listtype; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE listtype (
    listtypeid integer NOT NULL,
    name character varying(75),
    type_ character varying(75)
);


ALTER TABLE public.listtype OWNER TO postgres;

--
-- TOC entry 1890 (class 1259 OID 5290252)
-- Dependencies: 5
-- Name: mbban; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbban (
    banid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    banuserid bigint
);


ALTER TABLE public.mbban OWNER TO postgres;

--
-- TOC entry 1891 (class 1259 OID 5290257)
-- Dependencies: 5
-- Name: mbcategory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbcategory (
    uuid_ character varying(75),
    categoryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    parentcategoryid bigint,
    name character varying(75),
    description text,
    threadcount integer,
    messagecount integer,
    lastpostdate timestamp without time zone
);


ALTER TABLE public.mbcategory OWNER TO postgres;

--
-- TOC entry 1892 (class 1259 OID 5290265)
-- Dependencies: 5
-- Name: mbdiscussion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbdiscussion (
    discussionid bigint NOT NULL,
    classnameid bigint,
    classpk bigint,
    threadid bigint
);


ALTER TABLE public.mbdiscussion OWNER TO postgres;

--
-- TOC entry 1893 (class 1259 OID 5290270)
-- Dependencies: 5
-- Name: mbmailinglist; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbmailinglist (
    uuid_ character varying(75),
    mailinglistid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    categoryid bigint,
    emailaddress character varying(75),
    inprotocol character varying(75),
    inservername character varying(75),
    inserverport integer,
    inusessl boolean,
    inusername character varying(75),
    inpassword character varying(75),
    inreadinterval integer,
    outemailaddress character varying(75),
    outcustom boolean,
    outservername character varying(75),
    outserverport integer,
    outusessl boolean,
    outusername character varying(75),
    outpassword character varying(75),
    active_ boolean
);


ALTER TABLE public.mbmailinglist OWNER TO postgres;

--
-- TOC entry 1894 (class 1259 OID 5290278)
-- Dependencies: 5
-- Name: mbmessage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbmessage (
    uuid_ character varying(75),
    messageid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    categoryid bigint,
    threadid bigint,
    parentmessageid bigint,
    subject character varying(75),
    body text,
    attachments boolean,
    anonymous boolean,
    priority double precision
);


ALTER TABLE public.mbmessage OWNER TO postgres;

--
-- TOC entry 1895 (class 1259 OID 5290286)
-- Dependencies: 5
-- Name: mbmessageflag; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbmessageflag (
    messageflagid bigint NOT NULL,
    userid bigint,
    modifieddate timestamp without time zone,
    threadid bigint,
    messageid bigint,
    flag integer
);


ALTER TABLE public.mbmessageflag OWNER TO postgres;

--
-- TOC entry 1896 (class 1259 OID 5290291)
-- Dependencies: 5
-- Name: mbstatsuser; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbstatsuser (
    statsuserid bigint NOT NULL,
    groupid bigint,
    userid bigint,
    messagecount integer,
    lastpostdate timestamp without time zone
);


ALTER TABLE public.mbstatsuser OWNER TO postgres;

--
-- TOC entry 1897 (class 1259 OID 5290296)
-- Dependencies: 5
-- Name: mbthread; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mbthread (
    threadid bigint NOT NULL,
    groupid bigint,
    categoryid bigint,
    rootmessageid bigint,
    messagecount integer,
    viewcount integer,
    lastpostbyuserid bigint,
    lastpostdate timestamp without time zone,
    priority double precision
);


ALTER TABLE public.mbthread OWNER TO postgres;

--
-- TOC entry 1898 (class 1259 OID 5290301)
-- Dependencies: 5
-- Name: membershiprequest; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE membershiprequest (
    membershiprequestid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    groupid bigint,
    comments text,
    replycomments text,
    replydate timestamp without time zone,
    replieruserid bigint,
    statusid integer
);


ALTER TABLE public.membershiprequest OWNER TO postgres;

--
-- TOC entry 1899 (class 1259 OID 5290309)
-- Dependencies: 5
-- Name: organization_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE organization_ (
    organizationid bigint NOT NULL,
    companyid bigint,
    parentorganizationid bigint,
    leftorganizationid bigint,
    rightorganizationid bigint,
    name character varying(100),
    type_ character varying(75),
    recursable boolean,
    regionid bigint,
    countryid bigint,
    statusid integer,
    comments text
);


ALTER TABLE public.organization_ OWNER TO postgres;

--
-- TOC entry 1900 (class 1259 OID 5290317)
-- Dependencies: 5
-- Name: orggrouppermission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orggrouppermission (
    organizationid bigint NOT NULL,
    groupid bigint NOT NULL,
    permissionid bigint NOT NULL
);


ALTER TABLE public.orggrouppermission OWNER TO postgres;

--
-- TOC entry 1901 (class 1259 OID 5290322)
-- Dependencies: 5
-- Name: orggrouprole; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orggrouprole (
    organizationid bigint NOT NULL,
    groupid bigint NOT NULL,
    roleid bigint NOT NULL
);


ALTER TABLE public.orggrouprole OWNER TO postgres;

--
-- TOC entry 1902 (class 1259 OID 5290327)
-- Dependencies: 5
-- Name: orglabor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orglabor (
    orglaborid bigint NOT NULL,
    organizationid bigint,
    typeid integer,
    sunopen integer,
    sunclose integer,
    monopen integer,
    monclose integer,
    tueopen integer,
    tueclose integer,
    wedopen integer,
    wedclose integer,
    thuopen integer,
    thuclose integer,
    friopen integer,
    friclose integer,
    satopen integer,
    satclose integer
);


ALTER TABLE public.orglabor OWNER TO postgres;

--
-- TOC entry 1903 (class 1259 OID 5290332)
-- Dependencies: 5
-- Name: passwordpolicy; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE passwordpolicy (
    passwordpolicyid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    defaultpolicy boolean,
    name character varying(75),
    description text,
    changeable boolean,
    changerequired boolean,
    minage bigint,
    checksyntax boolean,
    allowdictionarywords boolean,
    minlength integer,
    history boolean,
    historycount integer,
    expireable boolean,
    maxage bigint,
    warningtime bigint,
    gracelimit integer,
    lockout boolean,
    maxfailure integer,
    lockoutduration bigint,
    requireunlock boolean,
    resetfailurecount bigint
);


ALTER TABLE public.passwordpolicy OWNER TO postgres;

--
-- TOC entry 1904 (class 1259 OID 5290340)
-- Dependencies: 5
-- Name: passwordpolicyrel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE passwordpolicyrel (
    passwordpolicyrelid bigint NOT NULL,
    passwordpolicyid bigint,
    classnameid bigint,
    classpk bigint
);


ALTER TABLE public.passwordpolicyrel OWNER TO postgres;

--
-- TOC entry 1905 (class 1259 OID 5290345)
-- Dependencies: 5
-- Name: passwordtracker; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE passwordtracker (
    passwordtrackerid bigint NOT NULL,
    userid bigint,
    createdate timestamp without time zone,
    password_ character varying(75)
);


ALTER TABLE public.passwordtracker OWNER TO postgres;

--
-- TOC entry 1906 (class 1259 OID 5290350)
-- Dependencies: 5
-- Name: permission_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE permission_ (
    permissionid bigint NOT NULL,
    companyid bigint,
    actionid character varying(75),
    resourceid bigint
);


ALTER TABLE public.permission_ OWNER TO postgres;

--
-- TOC entry 1907 (class 1259 OID 5290355)
-- Dependencies: 5
-- Name: phone; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE phone (
    phoneid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    number_ character varying(75),
    extension character varying(75),
    typeid integer,
    primary_ boolean
);


ALTER TABLE public.phone OWNER TO postgres;

--
-- TOC entry 1908 (class 1259 OID 5290360)
-- Dependencies: 5
-- Name: pluginsetting; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pluginsetting (
    pluginsettingid bigint NOT NULL,
    companyid bigint,
    pluginid character varying(75),
    plugintype character varying(75),
    roles text,
    active_ boolean
);


ALTER TABLE public.pluginsetting OWNER TO postgres;

--
-- TOC entry 1909 (class 1259 OID 5290368)
-- Dependencies: 5
-- Name: pollschoice; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pollschoice (
    uuid_ character varying(75),
    choiceid bigint NOT NULL,
    questionid bigint,
    name character varying(75),
    description character varying(1000)
);


ALTER TABLE public.pollschoice OWNER TO postgres;

--
-- TOC entry 1910 (class 1259 OID 5290376)
-- Dependencies: 5
-- Name: pollsquestion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pollsquestion (
    uuid_ character varying(75),
    questionid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    title character varying(500),
    description text,
    expirationdate timestamp without time zone,
    lastvotedate timestamp without time zone
);


ALTER TABLE public.pollsquestion OWNER TO postgres;

--
-- TOC entry 1911 (class 1259 OID 5290384)
-- Dependencies: 5
-- Name: pollsvote; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pollsvote (
    voteid bigint NOT NULL,
    userid bigint,
    questionid bigint,
    choiceid bigint,
    votedate timestamp without time zone
);


ALTER TABLE public.pollsvote OWNER TO postgres;

--
-- TOC entry 1912 (class 1259 OID 5290389)
-- Dependencies: 5
-- Name: portlet; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE portlet (
    id_ bigint NOT NULL,
    companyid bigint,
    portletid character varying(200),
    roles text,
    active_ boolean
);


ALTER TABLE public.portlet OWNER TO postgres;

--
-- TOC entry 1913 (class 1259 OID 5290397)
-- Dependencies: 5
-- Name: portletitem; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE portletitem (
    portletitemid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    name character varying(75),
    portletid character varying(75),
    classnameid bigint
);


ALTER TABLE public.portletitem OWNER TO postgres;

--
-- TOC entry 1914 (class 1259 OID 5290402)
-- Dependencies: 5
-- Name: portletpreferences; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE portletpreferences (
    portletpreferencesid bigint NOT NULL,
    ownerid bigint,
    ownertype integer,
    plid bigint,
    portletid character varying(200),
    preferences text
);


ALTER TABLE public.portletpreferences OWNER TO postgres;

--
-- TOC entry 1837 (class 1259 OID 5289903)
-- Dependencies: 5
-- Name: quartz_blob_triggers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_blob_triggers (
    trigger_name character varying(80) NOT NULL,
    trigger_group character varying(80) NOT NULL,
    blob_data bytea
);


ALTER TABLE public.quartz_blob_triggers OWNER TO postgres;

--
-- TOC entry 1839 (class 1259 OID 5289916)
-- Dependencies: 5
-- Name: quartz_calendars; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_calendars (
    calendar_name character varying(80) NOT NULL,
    calendar bytea NOT NULL
);


ALTER TABLE public.quartz_calendars OWNER TO postgres;

--
-- TOC entry 1836 (class 1259 OID 5289898)
-- Dependencies: 5
-- Name: quartz_cron_triggers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_cron_triggers (
    trigger_name character varying(80) NOT NULL,
    trigger_group character varying(80) NOT NULL,
    cron_expression character varying(80) NOT NULL,
    time_zone_id character varying(80)
);


ALTER TABLE public.quartz_cron_triggers OWNER TO postgres;

--
-- TOC entry 1841 (class 1259 OID 5289929)
-- Dependencies: 5
-- Name: quartz_fired_triggers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_fired_triggers (
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(80) NOT NULL,
    trigger_group character varying(80) NOT NULL,
    is_volatile boolean NOT NULL,
    instance_name character varying(80) NOT NULL,
    fired_time bigint NOT NULL,
    priority integer NOT NULL,
    state character varying(16) NOT NULL,
    job_name character varying(80),
    job_group character varying(80),
    is_stateful boolean,
    requests_recovery boolean
);


ALTER TABLE public.quartz_fired_triggers OWNER TO postgres;

--
-- TOC entry 1832 (class 1259 OID 5289872)
-- Dependencies: 5
-- Name: quartz_job_details; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_job_details (
    job_name character varying(80) NOT NULL,
    job_group character varying(80) NOT NULL,
    description character varying(120),
    job_class_name character varying(128) NOT NULL,
    is_durable boolean NOT NULL,
    is_volatile boolean NOT NULL,
    is_stateful boolean NOT NULL,
    requests_recovery boolean NOT NULL,
    job_data bytea
);


ALTER TABLE public.quartz_job_details OWNER TO postgres;

--
-- TOC entry 1833 (class 1259 OID 5289880)
-- Dependencies: 5
-- Name: quartz_job_listeners; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_job_listeners (
    job_name character varying(80) NOT NULL,
    job_group character varying(80) NOT NULL,
    job_listener character varying(80) NOT NULL
);


ALTER TABLE public.quartz_job_listeners OWNER TO postgres;

--
-- TOC entry 1843 (class 1259 OID 5289942)
-- Dependencies: 5
-- Name: quartz_locks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_locks (
    lock_name character varying(40) NOT NULL
);


ALTER TABLE public.quartz_locks OWNER TO postgres;

--
-- TOC entry 1840 (class 1259 OID 5289924)
-- Dependencies: 5
-- Name: quartz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_paused_trigger_grps (
    trigger_group character varying(80) NOT NULL
);


ALTER TABLE public.quartz_paused_trigger_grps OWNER TO postgres;

--
-- TOC entry 1842 (class 1259 OID 5289937)
-- Dependencies: 5
-- Name: quartz_scheduler_state; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_scheduler_state (
    instance_name character varying(80) NOT NULL,
    last_checkin_time bigint NOT NULL,
    checkin_interval bigint NOT NULL
);


ALTER TABLE public.quartz_scheduler_state OWNER TO postgres;

--
-- TOC entry 1835 (class 1259 OID 5289893)
-- Dependencies: 5
-- Name: quartz_simple_triggers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_simple_triggers (
    trigger_name character varying(80) NOT NULL,
    trigger_group character varying(80) NOT NULL,
    repeat_count bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL
);


ALTER TABLE public.quartz_simple_triggers OWNER TO postgres;

--
-- TOC entry 1838 (class 1259 OID 5289911)
-- Dependencies: 5
-- Name: quartz_trigger_listeners; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_trigger_listeners (
    trigger_name character varying(80) NOT NULL,
    trigger_group character varying(80) NOT NULL,
    trigger_listener character varying(80) NOT NULL
);


ALTER TABLE public.quartz_trigger_listeners OWNER TO postgres;

--
-- TOC entry 1834 (class 1259 OID 5289885)
-- Dependencies: 5
-- Name: quartz_triggers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE quartz_triggers (
    trigger_name character varying(80) NOT NULL,
    trigger_group character varying(80) NOT NULL,
    job_name character varying(80) NOT NULL,
    job_group character varying(80) NOT NULL,
    is_volatile boolean NOT NULL,
    description character varying(120),
    next_fire_time bigint,
    prev_fire_time bigint,
    priority integer,
    trigger_state character varying(16) NOT NULL,
    trigger_type character varying(8) NOT NULL,
    start_time bigint NOT NULL,
    end_time bigint,
    calendar_name character varying(80),
    misfire_instr integer,
    job_data bytea
);


ALTER TABLE public.quartz_triggers OWNER TO postgres;

--
-- TOC entry 1915 (class 1259 OID 5290410)
-- Dependencies: 5
-- Name: ratingsentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ratingsentry (
    entryid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    score double precision
);


ALTER TABLE public.ratingsentry OWNER TO postgres;

--
-- TOC entry 1916 (class 1259 OID 5290415)
-- Dependencies: 5
-- Name: ratingsstats; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ratingsstats (
    statsid bigint NOT NULL,
    classnameid bigint,
    classpk bigint,
    totalentries integer,
    totalscore double precision,
    averagescore double precision
);


ALTER TABLE public.ratingsstats OWNER TO postgres;

--
-- TOC entry 1917 (class 1259 OID 5290420)
-- Dependencies: 5
-- Name: region; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE region (
    regionid bigint NOT NULL,
    countryid bigint,
    regioncode character varying(75),
    name character varying(75),
    active_ boolean
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 1918 (class 1259 OID 5290425)
-- Dependencies: 5
-- Name: release_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE release_ (
    releaseid bigint NOT NULL,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    buildnumber integer,
    builddate timestamp without time zone,
    verified boolean,
    teststring character varying(1024)
);


ALTER TABLE public.release_ OWNER TO postgres;

--
-- TOC entry 1919 (class 1259 OID 5290433)
-- Dependencies: 5
-- Name: resource_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE resource_ (
    resourceid bigint NOT NULL,
    codeid bigint,
    primkey character varying(255)
);


ALTER TABLE public.resource_ OWNER TO postgres;

--
-- TOC entry 1920 (class 1259 OID 5290438)
-- Dependencies: 5
-- Name: resourceaction; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE resourceaction (
    resourceactionid bigint NOT NULL,
    name character varying(75),
    actionid character varying(75),
    bitwisevalue bigint
);


ALTER TABLE public.resourceaction OWNER TO postgres;

--
-- TOC entry 1921 (class 1259 OID 5290443)
-- Dependencies: 5
-- Name: resourcecode; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE resourcecode (
    codeid bigint NOT NULL,
    companyid bigint,
    name character varying(255),
    scope integer
);


ALTER TABLE public.resourcecode OWNER TO postgres;

--
-- TOC entry 1922 (class 1259 OID 5290448)
-- Dependencies: 5
-- Name: resourcepermission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE resourcepermission (
    resourcepermissionid bigint NOT NULL,
    companyid bigint,
    name character varying(255),
    scope integer,
    primkey character varying(255),
    roleid bigint,
    actionids bigint
);


ALTER TABLE public.resourcepermission OWNER TO postgres;

--
-- TOC entry 1923 (class 1259 OID 5290456)
-- Dependencies: 5
-- Name: role_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE role_ (
    roleid bigint NOT NULL,
    companyid bigint,
    classnameid bigint,
    classpk bigint,
    name character varying(75),
    title text,
    description text,
    type_ integer,
    subtype character varying(75)
);


ALTER TABLE public.role_ OWNER TO postgres;

--
-- TOC entry 1924 (class 1259 OID 5290464)
-- Dependencies: 5
-- Name: roles_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles_permissions (
    roleid bigint NOT NULL,
    permissionid bigint NOT NULL
);


ALTER TABLE public.roles_permissions OWNER TO postgres;

--
-- TOC entry 1925 (class 1259 OID 5290469)
-- Dependencies: 5
-- Name: scframeworkversi_scproductvers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE scframeworkversi_scproductvers (
    frameworkversionid bigint NOT NULL,
    productversionid bigint NOT NULL
);


ALTER TABLE public.scframeworkversi_scproductvers OWNER TO postgres;

--
-- TOC entry 1926 (class 1259 OID 5290474)
-- Dependencies: 5
-- Name: scframeworkversion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE scframeworkversion (
    frameworkversionid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    name character varying(75),
    url text,
    active_ boolean,
    priority integer
);


ALTER TABLE public.scframeworkversion OWNER TO postgres;

--
-- TOC entry 1978 (class 1259 OID 5291585)
-- Dependencies: 5
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- TOC entry 1927 (class 1259 OID 5290482)
-- Dependencies: 5
-- Name: sclicense; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sclicense (
    licenseid bigint NOT NULL,
    name character varying(75),
    url text,
    opensource boolean,
    active_ boolean,
    recommended boolean
);


ALTER TABLE public.sclicense OWNER TO postgres;

--
-- TOC entry 1928 (class 1259 OID 5290490)
-- Dependencies: 5
-- Name: sclicenses_scproductentries; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sclicenses_scproductentries (
    licenseid bigint NOT NULL,
    productentryid bigint NOT NULL
);


ALTER TABLE public.sclicenses_scproductentries OWNER TO postgres;

--
-- TOC entry 1929 (class 1259 OID 5290495)
-- Dependencies: 5
-- Name: scproductentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE scproductentry (
    productentryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    name character varying(75),
    type_ character varying(75),
    tags character varying(255),
    shortdescription text,
    longdescription text,
    pageurl text,
    author character varying(75),
    repogroupid character varying(75),
    repoartifactid character varying(75)
);


ALTER TABLE public.scproductentry OWNER TO postgres;

--
-- TOC entry 1930 (class 1259 OID 5290503)
-- Dependencies: 5
-- Name: scproductscreenshot; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE scproductscreenshot (
    productscreenshotid bigint NOT NULL,
    companyid bigint,
    groupid bigint,
    productentryid bigint,
    thumbnailid bigint,
    fullimageid bigint,
    priority integer
);


ALTER TABLE public.scproductscreenshot OWNER TO postgres;

--
-- TOC entry 1931 (class 1259 OID 5290508)
-- Dependencies: 5
-- Name: scproductversion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE scproductversion (
    productversionid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    productentryid bigint,
    version character varying(75),
    changelog text,
    downloadpageurl text,
    directdownloadurl character varying(2000),
    repostoreartifact boolean
);


ALTER TABLE public.scproductversion OWNER TO postgres;

--
-- TOC entry 1932 (class 1259 OID 5290516)
-- Dependencies: 5
-- Name: servicecomponent; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE servicecomponent (
    servicecomponentid bigint NOT NULL,
    buildnamespace character varying(75),
    buildnumber bigint,
    builddate bigint,
    data_ text
);


ALTER TABLE public.servicecomponent OWNER TO postgres;

--
-- TOC entry 1933 (class 1259 OID 5290524)
-- Dependencies: 5
-- Name: shard; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shard (
    shardid bigint NOT NULL,
    classnameid bigint,
    classpk bigint,
    name character varying(75)
);


ALTER TABLE public.shard OWNER TO postgres;

--
-- TOC entry 1934 (class 1259 OID 5290529)
-- Dependencies: 5
-- Name: shoppingcart; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingcart (
    cartid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    itemids text,
    couponcodes character varying(75),
    altshipping integer,
    insure boolean
);


ALTER TABLE public.shoppingcart OWNER TO postgres;

--
-- TOC entry 1935 (class 1259 OID 5290537)
-- Dependencies: 5
-- Name: shoppingcategory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingcategory (
    categoryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    parentcategoryid bigint,
    name character varying(75),
    description text
);


ALTER TABLE public.shoppingcategory OWNER TO postgres;

--
-- TOC entry 1936 (class 1259 OID 5290545)
-- Dependencies: 5
-- Name: shoppingcoupon; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingcoupon (
    couponid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    code_ character varying(75),
    name character varying(75),
    description text,
    startdate timestamp without time zone,
    enddate timestamp without time zone,
    active_ boolean,
    limitcategories text,
    limitskus text,
    minorder double precision,
    discount double precision,
    discounttype character varying(75)
);


ALTER TABLE public.shoppingcoupon OWNER TO postgres;

--
-- TOC entry 1937 (class 1259 OID 5290553)
-- Dependencies: 5
-- Name: shoppingitem; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingitem (
    itemid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    categoryid bigint,
    sku character varying(75),
    name character varying(200),
    description text,
    properties text,
    fields_ boolean,
    fieldsquantities text,
    minquantity integer,
    maxquantity integer,
    price double precision,
    discount double precision,
    taxable boolean,
    shipping double precision,
    useshippingformula boolean,
    requiresshipping boolean,
    stockquantity integer,
    featured_ boolean,
    sale_ boolean,
    smallimage boolean,
    smallimageid bigint,
    smallimageurl character varying(75),
    mediumimage boolean,
    mediumimageid bigint,
    mediumimageurl character varying(75),
    largeimage boolean,
    largeimageid bigint,
    largeimageurl character varying(75)
);


ALTER TABLE public.shoppingitem OWNER TO postgres;

--
-- TOC entry 1938 (class 1259 OID 5290561)
-- Dependencies: 5
-- Name: shoppingitemfield; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingitemfield (
    itemfieldid bigint NOT NULL,
    itemid bigint,
    name character varying(75),
    values_ text,
    description text
);


ALTER TABLE public.shoppingitemfield OWNER TO postgres;

--
-- TOC entry 1939 (class 1259 OID 5290569)
-- Dependencies: 5
-- Name: shoppingitemprice; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingitemprice (
    itempriceid bigint NOT NULL,
    itemid bigint,
    minquantity integer,
    maxquantity integer,
    price double precision,
    discount double precision,
    taxable boolean,
    shipping double precision,
    useshippingformula boolean,
    status integer
);


ALTER TABLE public.shoppingitemprice OWNER TO postgres;

--
-- TOC entry 1940 (class 1259 OID 5290574)
-- Dependencies: 5
-- Name: shoppingorder; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingorder (
    orderid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    number_ character varying(75),
    tax double precision,
    shipping double precision,
    altshipping character varying(75),
    requiresshipping boolean,
    insure boolean,
    insurance double precision,
    couponcodes character varying(75),
    coupondiscount double precision,
    billingfirstname character varying(75),
    billinglastname character varying(75),
    billingemailaddress character varying(75),
    billingcompany character varying(75),
    billingstreet character varying(75),
    billingcity character varying(75),
    billingstate character varying(75),
    billingzip character varying(75),
    billingcountry character varying(75),
    billingphone character varying(75),
    shiptobilling boolean,
    shippingfirstname character varying(75),
    shippinglastname character varying(75),
    shippingemailaddress character varying(75),
    shippingcompany character varying(75),
    shippingstreet character varying(75),
    shippingcity character varying(75),
    shippingstate character varying(75),
    shippingzip character varying(75),
    shippingcountry character varying(75),
    shippingphone character varying(75),
    ccname character varying(75),
    cctype character varying(75),
    ccnumber character varying(75),
    ccexpmonth integer,
    ccexpyear integer,
    ccvernumber character varying(75),
    comments text,
    pptxnid character varying(75),
    pppaymentstatus character varying(75),
    pppaymentgross double precision,
    ppreceiveremail character varying(75),
    pppayeremail character varying(75),
    sendorderemail boolean,
    sendshippingemail boolean
);


ALTER TABLE public.shoppingorder OWNER TO postgres;

--
-- TOC entry 1941 (class 1259 OID 5290582)
-- Dependencies: 5
-- Name: shoppingorderitem; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shoppingorderitem (
    orderitemid bigint NOT NULL,
    orderid bigint,
    itemid character varying(75),
    sku character varying(75),
    name character varying(200),
    description text,
    properties text,
    price double precision,
    quantity integer,
    shippeddate timestamp without time zone
);


ALTER TABLE public.shoppingorderitem OWNER TO postgres;

--
-- TOC entry 1942 (class 1259 OID 5290590)
-- Dependencies: 5
-- Name: socialactivity; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE socialactivity (
    activityid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    mirroractivityid bigint,
    classnameid bigint,
    classpk bigint,
    type_ integer,
    extradata text,
    receiveruserid bigint
);


ALTER TABLE public.socialactivity OWNER TO postgres;

--
-- TOC entry 1943 (class 1259 OID 5290598)
-- Dependencies: 5
-- Name: socialrelation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE socialrelation (
    uuid_ character varying(75),
    relationid bigint NOT NULL,
    companyid bigint,
    createdate timestamp without time zone,
    userid1 bigint,
    userid2 bigint,
    type_ integer
);


ALTER TABLE public.socialrelation OWNER TO postgres;

--
-- TOC entry 1944 (class 1259 OID 5290603)
-- Dependencies: 5
-- Name: socialrequest; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE socialrequest (
    uuid_ character varying(75),
    requestid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    type_ integer,
    extradata text,
    receiveruserid bigint,
    status integer
);


ALTER TABLE public.socialrequest OWNER TO postgres;

--
-- TOC entry 1945 (class 1259 OID 5290611)
-- Dependencies: 5
-- Name: subscription; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE subscription (
    subscriptionid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    frequency character varying(75)
);


ALTER TABLE public.subscription OWNER TO postgres;

--
-- TOC entry 1946 (class 1259 OID 5290616)
-- Dependencies: 5
-- Name: tagsasset; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tagsasset (
    assetid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    visible boolean,
    startdate timestamp without time zone,
    enddate timestamp without time zone,
    publishdate timestamp without time zone,
    expirationdate timestamp without time zone,
    mimetype character varying(75),
    title character varying(255),
    description text,
    summary text,
    url text,
    height integer,
    width integer,
    priority double precision,
    viewcount integer
);


ALTER TABLE public.tagsasset OWNER TO postgres;

--
-- TOC entry 1947 (class 1259 OID 5290624)
-- Dependencies: 5
-- Name: tagsassets_tagsentries; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tagsassets_tagsentries (
    assetid bigint NOT NULL,
    entryid bigint NOT NULL
);


ALTER TABLE public.tagsassets_tagsentries OWNER TO postgres;

--
-- TOC entry 1948 (class 1259 OID 5290629)
-- Dependencies: 5
-- Name: tagsentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tagsentry (
    entryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    parententryid bigint,
    name character varying(75),
    vocabularyid bigint
);


ALTER TABLE public.tagsentry OWNER TO postgres;

--
-- TOC entry 1949 (class 1259 OID 5290634)
-- Dependencies: 5
-- Name: tagsproperty; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tagsproperty (
    propertyid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    entryid bigint,
    key_ character varying(75),
    value character varying(255)
);


ALTER TABLE public.tagsproperty OWNER TO postgres;

--
-- TOC entry 1950 (class 1259 OID 5290639)
-- Dependencies: 5
-- Name: tagssource; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tagssource (
    sourceid bigint NOT NULL,
    parentsourceid bigint,
    name character varying(75),
    acronym character varying(75)
);


ALTER TABLE public.tagssource OWNER TO postgres;

--
-- TOC entry 1951 (class 1259 OID 5290644)
-- Dependencies: 5
-- Name: tagsvocabulary; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tagsvocabulary (
    vocabularyid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    name character varying(75),
    description character varying(75),
    folksonomy boolean
);


ALTER TABLE public.tagsvocabulary OWNER TO postgres;

--
-- TOC entry 1952 (class 1259 OID 5290649)
-- Dependencies: 5
-- Name: tasksproposal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tasksproposal (
    proposalid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk character varying(75),
    name character varying(75),
    description text,
    publishdate timestamp without time zone,
    duedate timestamp without time zone
);


ALTER TABLE public.tasksproposal OWNER TO postgres;

--
-- TOC entry 1953 (class 1259 OID 5290657)
-- Dependencies: 5
-- Name: tasksreview; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tasksreview (
    reviewid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    proposalid bigint,
    assignedbyuserid bigint,
    assignedbyusername character varying(75),
    stage integer,
    completed boolean,
    rejected boolean
);


ALTER TABLE public.tasksreview OWNER TO postgres;

--
-- TOC entry 1954 (class 1259 OID 5290662)
-- Dependencies: 5
-- Name: user_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_ (
    uuid_ character varying(75),
    userid bigint NOT NULL,
    companyid bigint,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    defaultuser boolean,
    contactid bigint,
    password_ character varying(75),
    passwordencrypted boolean,
    passwordreset boolean,
    passwordmodifieddate timestamp without time zone,
    reminderqueryquestion character varying(75),
    reminderqueryanswer character varying(75),
    gracelogincount integer,
    screenname character varying(75),
    emailaddress character varying(75),
    openid character varying(1024),
    portraitid bigint,
    languageid character varying(75),
    timezoneid character varying(75),
    greeting character varying(255),
    comments text,
    firstname character varying(75),
    middlename character varying(75),
    lastname character varying(75),
    jobtitle character varying(75),
    logindate timestamp without time zone,
    loginip character varying(75),
    lastlogindate timestamp without time zone,
    lastloginip character varying(75),
    lastfailedlogindate timestamp without time zone,
    failedloginattempts integer,
    lockout boolean,
    lockoutdate timestamp without time zone,
    agreedtotermsofuse boolean,
    active_ boolean
);


ALTER TABLE public.user_ OWNER TO postgres;

--
-- TOC entry 1955 (class 1259 OID 5290670)
-- Dependencies: 5
-- Name: usergroup; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usergroup (
    usergroupid bigint NOT NULL,
    companyid bigint,
    parentusergroupid bigint,
    name character varying(75),
    description text
);


ALTER TABLE public.usergroup OWNER TO postgres;

--
-- TOC entry 1956 (class 1259 OID 5290678)
-- Dependencies: 5
-- Name: usergrouprole; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usergrouprole (
    userid bigint NOT NULL,
    groupid bigint NOT NULL,
    roleid bigint NOT NULL
);


ALTER TABLE public.usergrouprole OWNER TO postgres;

--
-- TOC entry 1957 (class 1259 OID 5290683)
-- Dependencies: 5
-- Name: useridmapper; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE useridmapper (
    useridmapperid bigint NOT NULL,
    userid bigint,
    type_ character varying(75),
    description character varying(75),
    externaluserid character varying(75)
);


ALTER TABLE public.useridmapper OWNER TO postgres;

--
-- TOC entry 1958 (class 1259 OID 5290688)
-- Dependencies: 5
-- Name: users_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_groups (
    userid bigint NOT NULL,
    groupid bigint NOT NULL
);


ALTER TABLE public.users_groups OWNER TO postgres;

--
-- TOC entry 1959 (class 1259 OID 5290693)
-- Dependencies: 5
-- Name: users_orgs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_orgs (
    userid bigint NOT NULL,
    organizationid bigint NOT NULL
);


ALTER TABLE public.users_orgs OWNER TO postgres;

--
-- TOC entry 1960 (class 1259 OID 5290698)
-- Dependencies: 5
-- Name: users_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_permissions (
    userid bigint NOT NULL,
    permissionid bigint NOT NULL
);


ALTER TABLE public.users_permissions OWNER TO postgres;

--
-- TOC entry 1961 (class 1259 OID 5290703)
-- Dependencies: 5
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_roles (
    userid bigint NOT NULL,
    roleid bigint NOT NULL
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 1962 (class 1259 OID 5290708)
-- Dependencies: 5
-- Name: users_usergroups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_usergroups (
    usergroupid bigint NOT NULL,
    userid bigint NOT NULL
);


ALTER TABLE public.users_usergroups OWNER TO postgres;

--
-- TOC entry 1963 (class 1259 OID 5290713)
-- Dependencies: 5
-- Name: usertracker; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usertracker (
    usertrackerid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    modifieddate timestamp without time zone,
    sessionid character varying(200),
    remoteaddr character varying(75),
    remotehost character varying(75),
    useragent character varying(200)
);


ALTER TABLE public.usertracker OWNER TO postgres;

--
-- TOC entry 1964 (class 1259 OID 5290721)
-- Dependencies: 5
-- Name: usertrackerpath; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usertrackerpath (
    usertrackerpathid bigint NOT NULL,
    usertrackerid bigint,
    path_ text,
    pathdate timestamp without time zone
);


ALTER TABLE public.usertrackerpath OWNER TO postgres;

--
-- TOC entry 1965 (class 1259 OID 5290729)
-- Dependencies: 5
-- Name: vocabulary; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vocabulary (
    vocabularyid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    name character varying(75),
    description character varying(75),
    folksonomy boolean
);


ALTER TABLE public.vocabulary OWNER TO postgres;

--
-- TOC entry 1966 (class 1259 OID 5290734)
-- Dependencies: 5
-- Name: webdavprops; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE webdavprops (
    webdavpropsid bigint NOT NULL,
    companyid bigint,
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    props text
);


ALTER TABLE public.webdavprops OWNER TO postgres;

--
-- TOC entry 1967 (class 1259 OID 5290742)
-- Dependencies: 5
-- Name: website; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE website (
    websiteid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    classnameid bigint,
    classpk bigint,
    url text,
    typeid integer,
    primary_ boolean
);


ALTER TABLE public.website OWNER TO postgres;

--
-- TOC entry 1968 (class 1259 OID 5290750)
-- Dependencies: 5
-- Name: wikinode; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wikinode (
    uuid_ character varying(75),
    nodeid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    name character varying(75),
    description text,
    lastpostdate timestamp without time zone
);


ALTER TABLE public.wikinode OWNER TO postgres;

--
-- TOC entry 1969 (class 1259 OID 5290758)
-- Dependencies: 5
-- Name: wikipage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wikipage (
    uuid_ character varying(75),
    pageid bigint NOT NULL,
    resourceprimkey bigint,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    nodeid bigint,
    title character varying(255),
    version double precision,
    minoredit boolean,
    content text,
    summary text,
    format character varying(75),
    head boolean,
    parenttitle character varying(75),
    redirecttitle character varying(75)
);


ALTER TABLE public.wikipage OWNER TO postgres;

--
-- TOC entry 1970 (class 1259 OID 5290766)
-- Dependencies: 5
-- Name: wikipageresource; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wikipageresource (
    resourceprimkey bigint NOT NULL,
    nodeid bigint,
    title character varying(75)
);


ALTER TABLE public.wikipageresource OWNER TO postgres;

--
-- TOC entry 1973 (class 1259 OID 5291249)
-- Dependencies: 5
-- Name: wol_meetupsentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wol_meetupsentry (
    meetupsentryid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    title character varying(75),
    description text,
    startdate timestamp without time zone,
    enddate timestamp without time zone,
    totalattendees integer,
    maxattendees integer,
    price double precision,
    thumbnailid bigint
);


ALTER TABLE public.wol_meetupsentry OWNER TO postgres;

--
-- TOC entry 1974 (class 1259 OID 5291257)
-- Dependencies: 5
-- Name: wol_meetupsregistration; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wol_meetupsregistration (
    meetupsregistrationid bigint NOT NULL,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    meetupsentryid bigint,
    status integer,
    comments text
);


ALTER TABLE public.wol_meetupsregistration OWNER TO postgres;

--
-- TOC entry 1975 (class 1259 OID 5291265)
-- Dependencies: 5
-- Name: wol_svnrepository; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wol_svnrepository (
    svnrepositoryid bigint NOT NULL,
    url character varying(200),
    revisionnumber bigint
);


ALTER TABLE public.wol_svnrepository OWNER TO postgres;

--
-- TOC entry 1976 (class 1259 OID 5291270)
-- Dependencies: 5
-- Name: wol_svnrevision; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wol_svnrevision (
    svnrevisionid bigint NOT NULL,
    svnuserid character varying(75),
    createdate timestamp without time zone,
    svnrepositoryid bigint,
    revisionnumber bigint,
    comments text
);


ALTER TABLE public.wol_svnrevision OWNER TO postgres;

--
-- TOC entry 1977 (class 1259 OID 5291278)
-- Dependencies: 5
-- Name: wol_wallentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wol_wallentry (
    wallentryid bigint NOT NULL,
    groupid bigint,
    companyid bigint,
    userid bigint,
    username character varying(75),
    createdate timestamp without time zone,
    modifieddate timestamp without time zone,
    comments text
);


ALTER TABLE public.wol_wallentry OWNER TO postgres;

--
-- TOC entry 2285 (class 2606 OID 5289963)
-- Dependencies: 1844 1844
-- Name: account__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY account_
    ADD CONSTRAINT account__pkey PRIMARY KEY (accountid);


--
-- TOC entry 2287 (class 2606 OID 5289968)
-- Dependencies: 1845 1845
-- Name: address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY address
    ADD CONSTRAINT address_pkey PRIMARY KEY (addressid);


--
-- TOC entry 2295 (class 2606 OID 5289973)
-- Dependencies: 1846 1846
-- Name: announcementsdelivery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY announcementsdelivery
    ADD CONSTRAINT announcementsdelivery_pkey PRIMARY KEY (deliveryid);


--
-- TOC entry 2299 (class 2606 OID 5289981)
-- Dependencies: 1847 1847
-- Name: announcementsentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY announcementsentry
    ADD CONSTRAINT announcementsentry_pkey PRIMARY KEY (entryid);


--
-- TOC entry 2305 (class 2606 OID 5289986)
-- Dependencies: 1848 1848
-- Name: announcementsflag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY announcementsflag
    ADD CONSTRAINT announcementsflag_pkey PRIMARY KEY (flagid);


--
-- TOC entry 2309 (class 2606 OID 5289994)
-- Dependencies: 1849 1849
-- Name: blogsentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blogsentry
    ADD CONSTRAINT blogsentry_pkey PRIMARY KEY (entryid);


--
-- TOC entry 2320 (class 2606 OID 5289999)
-- Dependencies: 1850 1850
-- Name: blogsstatsuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blogsstatsuser
    ADD CONSTRAINT blogsstatsuser_pkey PRIMARY KEY (statsuserid);


--
-- TOC entry 2327 (class 2606 OID 5290007)
-- Dependencies: 1851 1851
-- Name: bookmarksentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bookmarksentry
    ADD CONSTRAINT bookmarksentry_pkey PRIMARY KEY (entryid);


--
-- TOC entry 2334 (class 2606 OID 5290015)
-- Dependencies: 1852 1852
-- Name: bookmarksfolder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bookmarksfolder
    ADD CONSTRAINT bookmarksfolder_pkey PRIMARY KEY (folderid);


--
-- TOC entry 2341 (class 2606 OID 5290020)
-- Dependencies: 1853 1853
-- Name: browsertracker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY browsertracker
    ADD CONSTRAINT browsertracker_pkey PRIMARY KEY (browsertrackerid);


--
-- TOC entry 2344 (class 2606 OID 5290028)
-- Dependencies: 1854 1854
-- Name: calevent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY calevent
    ADD CONSTRAINT calevent_pkey PRIMARY KEY (eventid);


--
-- TOC entry 2990 (class 2606 OID 5291229)
-- Dependencies: 1971 1971
-- Name: chat_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY chat_entry
    ADD CONSTRAINT chat_entry_pkey PRIMARY KEY (entryid);


--
-- TOC entry 2999 (class 2606 OID 5291237)
-- Dependencies: 1972 1972
-- Name: chat_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY chat_status
    ADD CONSTRAINT chat_status_pkey PRIMARY KEY (statusid);


--
-- TOC entry 2353 (class 2606 OID 5290033)
-- Dependencies: 1855 1855
-- Name: classname__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY classname_
    ADD CONSTRAINT classname__pkey PRIMARY KEY (classnameid);


--
-- TOC entry 2356 (class 2606 OID 5290041)
-- Dependencies: 1856 1856
-- Name: company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY company
    ADD CONSTRAINT company_pkey PRIMARY KEY (companyid);


--
-- TOC entry 2363 (class 2606 OID 5290049)
-- Dependencies: 1857 1857
-- Name: contact__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact_
    ADD CONSTRAINT contact__pkey PRIMARY KEY (contactid);


--
-- TOC entry 2366 (class 2606 OID 5290054)
-- Dependencies: 1858 1858
-- Name: counter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY counter
    ADD CONSTRAINT counter_pkey PRIMARY KEY (name);


--
-- TOC entry 2368 (class 2606 OID 5290059)
-- Dependencies: 1859 1859
-- Name: country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (countryid);

--
-- TOC entry 2374 (class 2606 OID 5290064)
-- Dependencies: 1860 1860
-- Name: cyrususer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cyrususer
    ADD CONSTRAINT cyrususer_pkey PRIMARY KEY (userid);


--
-- TOC entry 2376 (class 2606 OID 5290069)
-- Dependencies: 1861 1861
-- Name: cyrusvirtual_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cyrusvirtual
    ADD CONSTRAINT cyrusvirtual_pkey PRIMARY KEY (emailaddress);


--
-- TOC entry 2378 (class 2606 OID 5290077)
-- Dependencies: 1862 1862
-- Name: dlfileentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dlfileentry
    ADD CONSTRAINT dlfileentry_pkey PRIMARY KEY (fileentryid);


--
-- TOC entry 2388 (class 2606 OID 5290082)
-- Dependencies: 1863 1863
-- Name: dlfilerank_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dlfilerank
    ADD CONSTRAINT dlfilerank_pkey PRIMARY KEY (filerankid);


--
-- TOC entry 2394 (class 2606 OID 5290087)
-- Dependencies: 1864 1864
-- Name: dlfileshortcut_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dlfileshortcut
    ADD CONSTRAINT dlfileshortcut_pkey PRIMARY KEY (fileshortcutid);


--
-- TOC entry 2400 (class 2606 OID 5290092)
-- Dependencies: 1865 1865
-- Name: dlfileversion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dlfileversion
    ADD CONSTRAINT dlfileversion_pkey PRIMARY KEY (fileversionid);


--
-- TOC entry 2404 (class 2606 OID 5290100)
-- Dependencies: 1866 1866
-- Name: dlfolder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dlfolder
    ADD CONSTRAINT dlfolder_pkey PRIMARY KEY (folderid);


--
-- TOC entry 2413 (class 2606 OID 5290105)
-- Dependencies: 1867 1867
-- Name: emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emailaddress
    ADD CONSTRAINT emailaddress_pkey PRIMARY KEY (emailaddressid);


--
-- TOC entry 2420 (class 2606 OID 5290113)
-- Dependencies: 1868 1868
-- Name: expandocolumn_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY expandocolumn
    ADD CONSTRAINT expandocolumn_pkey PRIMARY KEY (columnid);


--
-- TOC entry 2424 (class 2606 OID 5290118)
-- Dependencies: 1869 1869
-- Name: expandorow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY expandorow
    ADD CONSTRAINT expandorow_pkey PRIMARY KEY (rowid_);


--
-- TOC entry 2428 (class 2606 OID 5290123)
-- Dependencies: 1870 1870
-- Name: expandotable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY expandotable
    ADD CONSTRAINT expandotable_pkey PRIMARY KEY (tableid);


--
-- TOC entry 2432 (class 2606 OID 5290131)
-- Dependencies: 1871 1871
-- Name: expandovalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY expandovalue
    ADD CONSTRAINT expandovalue_pkey PRIMARY KEY (valueid);


--
-- TOC entry 2443 (class 2606 OID 5290139)
-- Dependencies: 1872 1872
-- Name: group__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY group_
    ADD CONSTRAINT group__pkey PRIMARY KEY (groupid);


--
-- TOC entry 2452 (class 2606 OID 5290144)
-- Dependencies: 1873 1873 1873
-- Name: groups_orgs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_orgs
    ADD CONSTRAINT groups_orgs_pkey PRIMARY KEY (groupid, organizationid);


--
-- TOC entry 2456 (class 2606 OID 5290149)
-- Dependencies: 1874 1874 1874
-- Name: groups_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_permissions
    ADD CONSTRAINT groups_permissions_pkey PRIMARY KEY (groupid, permissionid);


--
-- TOC entry 2460 (class 2606 OID 5290154)
-- Dependencies: 1875 1875 1875
-- Name: groups_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_roles
    ADD CONSTRAINT groups_roles_pkey PRIMARY KEY (groupid, roleid);


--
-- TOC entry 2464 (class 2606 OID 5290159)
-- Dependencies: 1876 1876 1876
-- Name: groups_usergroups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_usergroups
    ADD CONSTRAINT groups_usergroups_pkey PRIMARY KEY (groupid, usergroupid);


--
-- TOC entry 2468 (class 2606 OID 5290167)
-- Dependencies: 1877 1877
-- Name: igfolder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY igfolder
    ADD CONSTRAINT igfolder_pkey PRIMARY KEY (folderid);


--
-- TOC entry 2476 (class 2606 OID 5290175)
-- Dependencies: 1878 1878
-- Name: igimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY igimage
    ADD CONSTRAINT igimage_pkey PRIMARY KEY (imageid);


--
-- TOC entry 2488 (class 2606 OID 5290183)
-- Dependencies: 1879 1879
-- Name: image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY image
    ADD CONSTRAINT image_pkey PRIMARY KEY (imageid);


--
-- TOC entry 2503 (class 2606 OID 5290191)
-- Dependencies: 1880 1880
-- Name: journalarticle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY journalarticle
    ADD CONSTRAINT journalarticle_pkey PRIMARY KEY (id_);


--
-- TOC entry 2509 (class 2606 OID 5290196)
-- Dependencies: 1881 1881
-- Name: journalarticleimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY journalarticleimage
    ADD CONSTRAINT journalarticleimage_pkey PRIMARY KEY (articleimageid);


--
-- TOC entry 2513 (class 2606 OID 5290201)
-- Dependencies: 1882 1882
-- Name: journalarticleresource_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY journalarticleresource
    ADD CONSTRAINT journalarticleresource_pkey PRIMARY KEY (resourceprimkey);


--
-- TOC entry 2521 (class 2606 OID 5290206)
-- Dependencies: 1883 1883
-- Name: journalcontentsearch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY journalcontentsearch
    ADD CONSTRAINT journalcontentsearch_pkey PRIMARY KEY (contentsearchid);


--
-- TOC entry 2527 (class 2606 OID 5290214)
-- Dependencies: 1884 1884
-- Name: journalfeed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY journalfeed
    ADD CONSTRAINT journalfeed_pkey PRIMARY KEY (id_);


--
-- TOC entry 2535 (class 2606 OID 5290222)
-- Dependencies: 1885 1885
-- Name: journalstructure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY journalstructure
    ADD CONSTRAINT journalstructure_pkey PRIMARY KEY (id_);


--
-- TOC entry 2544 (class 2606 OID 5290230)
-- Dependencies: 1886 1886
-- Name: journaltemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY journaltemplate
    ADD CONSTRAINT journaltemplate_pkey PRIMARY KEY (id_);


--
-- TOC entry 2555 (class 2606 OID 5290238)
-- Dependencies: 1887 1887
-- Name: layout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY layout
    ADD CONSTRAINT layout_pkey PRIMARY KEY (plid);


--
-- TOC entry 2560 (class 2606 OID 5290246)
-- Dependencies: 1888 1888
-- Name: layoutset_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY layoutset
    ADD CONSTRAINT layoutset_pkey PRIMARY KEY (layoutsetid);


--
-- TOC entry 2563 (class 2606 OID 5290251)
-- Dependencies: 1889 1889
-- Name: listtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY listtype
    ADD CONSTRAINT listtype_pkey PRIMARY KEY (listtypeid);


--
-- TOC entry 2569 (class 2606 OID 5290256)
-- Dependencies: 1890 1890
-- Name: mbban_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbban
    ADD CONSTRAINT mbban_pkey PRIMARY KEY (banid);


--
-- TOC entry 2576 (class 2606 OID 5290264)
-- Dependencies: 1891 1891
-- Name: mbcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbcategory
    ADD CONSTRAINT mbcategory_pkey PRIMARY KEY (categoryid);


--
-- TOC entry 2581 (class 2606 OID 5290269)
-- Dependencies: 1892 1892
-- Name: mbdiscussion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbdiscussion
    ADD CONSTRAINT mbdiscussion_pkey PRIMARY KEY (discussionid);


--
-- TOC entry 2587 (class 2606 OID 5290277)
-- Dependencies: 1893 1893
-- Name: mbmailinglist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbmailinglist
    ADD CONSTRAINT mbmailinglist_pkey PRIMARY KEY (mailinglistid);


--
-- TOC entry 2599 (class 2606 OID 5290285)
-- Dependencies: 1894 1894
-- Name: mbmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbmessage
    ADD CONSTRAINT mbmessage_pkey PRIMARY KEY (messageid);


--
-- TOC entry 2608 (class 2606 OID 5290290)
-- Dependencies: 1895 1895
-- Name: mbmessageflag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbmessageflag
    ADD CONSTRAINT mbmessageflag_pkey PRIMARY KEY (messageflagid);


--
-- TOC entry 2614 (class 2606 OID 5290295)
-- Dependencies: 1896 1896
-- Name: mbstatsuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbstatsuser
    ADD CONSTRAINT mbstatsuser_pkey PRIMARY KEY (statsuserid);


--
-- TOC entry 2619 (class 2606 OID 5290300)
-- Dependencies: 1897 1897
-- Name: mbthread_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mbthread
    ADD CONSTRAINT mbthread_pkey PRIMARY KEY (threadid);


--
-- TOC entry 2624 (class 2606 OID 5290308)
-- Dependencies: 1898 1898
-- Name: membershiprequest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY membershiprequest
    ADD CONSTRAINT membershiprequest_pkey PRIMARY KEY (membershiprequestid);


--
-- TOC entry 2629 (class 2606 OID 5290316)
-- Dependencies: 1899 1899
-- Name: organization__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY organization_
    ADD CONSTRAINT organization__pkey PRIMARY KEY (organizationid);


--
-- TOC entry 2633 (class 2606 OID 5290321)
-- Dependencies: 1900 1900 1900 1900
-- Name: orggrouppermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orggrouppermission
    ADD CONSTRAINT orggrouppermission_pkey PRIMARY KEY (organizationid, groupid, permissionid);


--
-- TOC entry 2637 (class 2606 OID 5290326)
-- Dependencies: 1901 1901 1901 1901
-- Name: orggrouprole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orggrouprole
    ADD CONSTRAINT orggrouprole_pkey PRIMARY KEY (organizationid, groupid, roleid);


--
-- TOC entry 2640 (class 2606 OID 5290331)
-- Dependencies: 1902 1902
-- Name: orglabor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orglabor
    ADD CONSTRAINT orglabor_pkey PRIMARY KEY (orglaborid);


--
-- TOC entry 2644 (class 2606 OID 5290339)
-- Dependencies: 1903 1903
-- Name: passwordpolicy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY passwordpolicy
    ADD CONSTRAINT passwordpolicy_pkey PRIMARY KEY (passwordpolicyid);


--
-- TOC entry 2648 (class 2606 OID 5290344)
-- Dependencies: 1904 1904
-- Name: passwordpolicyrel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY passwordpolicyrel
    ADD CONSTRAINT passwordpolicyrel_pkey PRIMARY KEY (passwordpolicyrelid);


--
-- TOC entry 2651 (class 2606 OID 5290349)
-- Dependencies: 1905 1905
-- Name: passwordtracker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY passwordtracker
    ADD CONSTRAINT passwordtracker_pkey PRIMARY KEY (passwordtrackerid);


--
-- TOC entry 2655 (class 2606 OID 5290354)
-- Dependencies: 1906 1906
-- Name: permission__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY permission_
    ADD CONSTRAINT permission__pkey PRIMARY KEY (permissionid);


--
-- TOC entry 2662 (class 2606 OID 5290359)
-- Dependencies: 1907 1907
-- Name: phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY phone
    ADD CONSTRAINT phone_pkey PRIMARY KEY (phoneid);


--
-- TOC entry 2666 (class 2606 OID 5290367)
-- Dependencies: 1908 1908
-- Name: pluginsetting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pluginsetting
    ADD CONSTRAINT pluginsetting_pkey PRIMARY KEY (pluginsettingid);


--
-- TOC entry 2671 (class 2606 OID 5290375)
-- Dependencies: 1909 1909
-- Name: pollschoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pollschoice
    ADD CONSTRAINT pollschoice_pkey PRIMARY KEY (choiceid);


--
-- TOC entry 2676 (class 2606 OID 5290383)
-- Dependencies: 1910 1910
-- Name: pollsquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pollsquestion
    ADD CONSTRAINT pollsquestion_pkey PRIMARY KEY (questionid);


--
-- TOC entry 2681 (class 2606 OID 5290388)
-- Dependencies: 1911 1911
-- Name: pollsvote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pollsvote
    ADD CONSTRAINT pollsvote_pkey PRIMARY KEY (voteid);


--
-- TOC entry 2685 (class 2606 OID 5290396)
-- Dependencies: 1912 1912
-- Name: portlet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY portlet
    ADD CONSTRAINT portlet_pkey PRIMARY KEY (id_);


--
-- TOC entry 2693 (class 2606 OID 5290401)
-- Dependencies: 1913 1913
-- Name: portletitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY portletitem
    ADD CONSTRAINT portletitem_pkey PRIMARY KEY (portletitemid);


--
-- TOC entry 2699 (class 2606 OID 5290409)
-- Dependencies: 1914 1914
-- Name: portletpreferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY portletpreferences
    ADD CONSTRAINT portletpreferences_pkey PRIMARY KEY (portletpreferencesid);


--
-- TOC entry 2265 (class 2606 OID 5289910)
-- Dependencies: 1837 1837 1837
-- Name: quartz_blob_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_blob_triggers
    ADD CONSTRAINT quartz_blob_triggers_pkey PRIMARY KEY (trigger_name, trigger_group);


--
-- TOC entry 2269 (class 2606 OID 5289923)
-- Dependencies: 1839 1839
-- Name: quartz_calendars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_calendars
    ADD CONSTRAINT quartz_calendars_pkey PRIMARY KEY (calendar_name);


--
-- TOC entry 2263 (class 2606 OID 5289902)
-- Dependencies: 1836 1836 1836
-- Name: quartz_cron_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_cron_triggers
    ADD CONSTRAINT quartz_cron_triggers_pkey PRIMARY KEY (trigger_name, trigger_group);


--
-- TOC entry 2279 (class 2606 OID 5289936)
-- Dependencies: 1841 1841
-- Name: quartz_fired_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_fired_triggers
    ADD CONSTRAINT quartz_fired_triggers_pkey PRIMARY KEY (entry_id);


--
-- TOC entry 2252 (class 2606 OID 5289879)
-- Dependencies: 1832 1832 1832
-- Name: quartz_job_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_job_details
    ADD CONSTRAINT quartz_job_details_pkey PRIMARY KEY (job_name, job_group);


--
-- TOC entry 2254 (class 2606 OID 5289884)
-- Dependencies: 1833 1833 1833 1833
-- Name: quartz_job_listeners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_job_listeners
    ADD CONSTRAINT quartz_job_listeners_pkey PRIMARY KEY (job_name, job_group, job_listener);


--
-- TOC entry 2283 (class 2606 OID 5289946)
-- Dependencies: 1843 1843
-- Name: quartz_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_locks
    ADD CONSTRAINT quartz_locks_pkey PRIMARY KEY (lock_name);


--
-- TOC entry 2271 (class 2606 OID 5289928)
-- Dependencies: 1840 1840
-- Name: quartz_paused_trigger_grps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_paused_trigger_grps
    ADD CONSTRAINT quartz_paused_trigger_grps_pkey PRIMARY KEY (trigger_group);


--
-- TOC entry 2281 (class 2606 OID 5289941)
-- Dependencies: 1842 1842
-- Name: quartz_scheduler_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_scheduler_state
    ADD CONSTRAINT quartz_scheduler_state_pkey PRIMARY KEY (instance_name);


--
-- TOC entry 2261 (class 2606 OID 5289897)
-- Dependencies: 1835 1835 1835
-- Name: quartz_simple_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_simple_triggers
    ADD CONSTRAINT quartz_simple_triggers_pkey PRIMARY KEY (trigger_name, trigger_group);


--
-- TOC entry 2267 (class 2606 OID 5289915)
-- Dependencies: 1838 1838 1838 1838
-- Name: quartz_trigger_listeners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_trigger_listeners
    ADD CONSTRAINT quartz_trigger_listeners_pkey PRIMARY KEY (trigger_name, trigger_group, trigger_listener);


--
-- TOC entry 2259 (class 2606 OID 5289892)
-- Dependencies: 1834 1834 1834
-- Name: quartz_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY quartz_triggers
    ADD CONSTRAINT quartz_triggers_pkey PRIMARY KEY (trigger_name, trigger_group);


--
-- TOC entry 2703 (class 2606 OID 5290414)
-- Dependencies: 1915 1915
-- Name: ratingsentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ratingsentry
    ADD CONSTRAINT ratingsentry_pkey PRIMARY KEY (entryid);


--
-- TOC entry 2706 (class 2606 OID 5290419)
-- Dependencies: 1916 1916
-- Name: ratingsstats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ratingsstats
    ADD CONSTRAINT ratingsstats_pkey PRIMARY KEY (statsid);


--
-- TOC entry 2711 (class 2606 OID 5290424)
-- Dependencies: 1917 1917
-- Name: region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY region
    ADD CONSTRAINT region_pkey PRIMARY KEY (regionid);


--
-- TOC entry 2713 (class 2606 OID 5290432)
-- Dependencies: 1918 1918
-- Name: release__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY release_
    ADD CONSTRAINT release__pkey PRIMARY KEY (releaseid);


--
-- TOC entry 2717 (class 2606 OID 5290437)
-- Dependencies: 1919 1919
-- Name: resource__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resource_
    ADD CONSTRAINT resource__pkey PRIMARY KEY (resourceid);


--
-- TOC entry 2721 (class 2606 OID 5290442)
-- Dependencies: 1920 1920
-- Name: resourceaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resourceaction
    ADD CONSTRAINT resourceaction_pkey PRIMARY KEY (resourceactionid);


--
-- TOC entry 2726 (class 2606 OID 5290447)
-- Dependencies: 1921 1921
-- Name: resourcecode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resourcecode
    ADD CONSTRAINT resourcecode_pkey PRIMARY KEY (codeid);


--
-- TOC entry 2732 (class 2606 OID 5290455)
-- Dependencies: 1922 1922
-- Name: resourcepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resourcepermission
    ADD CONSTRAINT resourcepermission_pkey PRIMARY KEY (resourcepermissionid);


--
-- TOC entry 2738 (class 2606 OID 5290463)
-- Dependencies: 1923 1923
-- Name: role__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY role_
    ADD CONSTRAINT role__pkey PRIMARY KEY (roleid);


--
-- TOC entry 2742 (class 2606 OID 5290468)
-- Dependencies: 1924 1924 1924
-- Name: roles_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles_permissions
    ADD CONSTRAINT roles_permissions_pkey PRIMARY KEY (roleid, permissionid);


--
-- TOC entry 2746 (class 2606 OID 5290473)
-- Dependencies: 1925 1925 1925
-- Name: scframeworkversi_scproductvers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY scframeworkversi_scproductvers
    ADD CONSTRAINT scframeworkversi_scproductvers_pkey PRIMARY KEY (frameworkversionid, productversionid);


--
-- TOC entry 2751 (class 2606 OID 5290481)
-- Dependencies: 1926 1926
-- Name: scframeworkversion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY scframeworkversion
    ADD CONSTRAINT scframeworkversion_pkey PRIMARY KEY (frameworkversionid);


--
-- TOC entry 2755 (class 2606 OID 5290489)
-- Dependencies: 1927 1927
-- Name: sclicense_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sclicense
    ADD CONSTRAINT sclicense_pkey PRIMARY KEY (licenseid);


--
-- TOC entry 2759 (class 2606 OID 5290494)
-- Dependencies: 1928 1928 1928
-- Name: sclicenses_scproductentries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sclicenses_scproductentries
    ADD CONSTRAINT sclicenses_scproductentries_pkey PRIMARY KEY (licenseid, productentryid);


--
-- TOC entry 2765 (class 2606 OID 5290502)
-- Dependencies: 1929 1929
-- Name: scproductentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY scproductentry
    ADD CONSTRAINT scproductentry_pkey PRIMARY KEY (productentryid);


--
-- TOC entry 2771 (class 2606 OID 5290507)
-- Dependencies: 1930 1930
-- Name: scproductscreenshot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY scproductscreenshot
    ADD CONSTRAINT scproductscreenshot_pkey PRIMARY KEY (productscreenshotid);


--
-- TOC entry 2775 (class 2606 OID 5290515)
-- Dependencies: 1931 1931
-- Name: scproductversion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY scproductversion
    ADD CONSTRAINT scproductversion_pkey PRIMARY KEY (productversionid);


--
-- TOC entry 2779 (class 2606 OID 5290523)
-- Dependencies: 1932 1932
-- Name: servicecomponent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servicecomponent
    ADD CONSTRAINT servicecomponent_pkey PRIMARY KEY (servicecomponentid);


--
-- TOC entry 2783 (class 2606 OID 5290528)
-- Dependencies: 1933 1933
-- Name: shard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shard
    ADD CONSTRAINT shard_pkey PRIMARY KEY (shardid);


--
-- TOC entry 2788 (class 2606 OID 5290536)
-- Dependencies: 1934 1934
-- Name: shoppingcart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingcart
    ADD CONSTRAINT shoppingcart_pkey PRIMARY KEY (cartid);


--
-- TOC entry 2792 (class 2606 OID 5290544)
-- Dependencies: 1935 1935
-- Name: shoppingcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingcategory
    ADD CONSTRAINT shoppingcategory_pkey PRIMARY KEY (categoryid);


--
-- TOC entry 2796 (class 2606 OID 5290552)
-- Dependencies: 1936 1936
-- Name: shoppingcoupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingcoupon
    ADD CONSTRAINT shoppingcoupon_pkey PRIMARY KEY (couponid);


--
-- TOC entry 2803 (class 2606 OID 5290560)
-- Dependencies: 1937 1937
-- Name: shoppingitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingitem
    ADD CONSTRAINT shoppingitem_pkey PRIMARY KEY (itemid);


--
-- TOC entry 2806 (class 2606 OID 5290568)
-- Dependencies: 1938 1938
-- Name: shoppingitemfield_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingitemfield
    ADD CONSTRAINT shoppingitemfield_pkey PRIMARY KEY (itemfieldid);


--
-- TOC entry 2809 (class 2606 OID 5290573)
-- Dependencies: 1939 1939
-- Name: shoppingitemprice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingitemprice
    ADD CONSTRAINT shoppingitemprice_pkey PRIMARY KEY (itempriceid);


--
-- TOC entry 2815 (class 2606 OID 5290581)
-- Dependencies: 1940 1940
-- Name: shoppingorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingorder
    ADD CONSTRAINT shoppingorder_pkey PRIMARY KEY (orderid);


--
-- TOC entry 2818 (class 2606 OID 5290589)
-- Dependencies: 1941 1941
-- Name: shoppingorderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shoppingorderitem
    ADD CONSTRAINT shoppingorderitem_pkey PRIMARY KEY (orderitemid);


--
-- TOC entry 2829 (class 2606 OID 5290597)
-- Dependencies: 1942 1942
-- Name: socialactivity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY socialactivity
    ADD CONSTRAINT socialactivity_pkey PRIMARY KEY (activityid);


--
-- TOC entry 2840 (class 2606 OID 5290602)
-- Dependencies: 1943 1943
-- Name: socialrelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY socialrelation
    ADD CONSTRAINT socialrelation_pkey PRIMARY KEY (relationid);


--
-- TOC entry 2852 (class 2606 OID 5290610)
-- Dependencies: 1944 1944
-- Name: socialrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY socialrequest
    ADD CONSTRAINT socialrequest_pkey PRIMARY KEY (requestid);


--
-- TOC entry 2858 (class 2606 OID 5290615)
-- Dependencies: 1945 1945
-- Name: subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY subscription
    ADD CONSTRAINT subscription_pkey PRIMARY KEY (subscriptionid);


--
-- TOC entry 2862 (class 2606 OID 5290623)
-- Dependencies: 1946 1946
-- Name: tagsasset_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tagsasset
    ADD CONSTRAINT tagsasset_pkey PRIMARY KEY (assetid);


--
-- TOC entry 2866 (class 2606 OID 5290628)
-- Dependencies: 1947 1947 1947
-- Name: tagsassets_tagsentries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tagsassets_tagsentries
    ADD CONSTRAINT tagsassets_tagsentries_pkey PRIMARY KEY (assetid, entryid);


--
-- TOC entry 2870 (class 2606 OID 5290633)
-- Dependencies: 1948 1948
-- Name: tagsentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tagsentry
    ADD CONSTRAINT tagsentry_pkey PRIMARY KEY (entryid);


--
-- TOC entry 2876 (class 2606 OID 5290638)
-- Dependencies: 1949 1949
-- Name: tagsproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tagsproperty
    ADD CONSTRAINT tagsproperty_pkey PRIMARY KEY (propertyid);


--
-- TOC entry 2878 (class 2606 OID 5290643)
-- Dependencies: 1950 1950
-- Name: tagssource_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tagssource
    ADD CONSTRAINT tagssource_pkey PRIMARY KEY (sourceid);


--
-- TOC entry 2883 (class 2606 OID 5290648)
-- Dependencies: 1951 1951
-- Name: tagsvocabulary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tagsvocabulary
    ADD CONSTRAINT tagsvocabulary_pkey PRIMARY KEY (vocabularyid);


--
-- TOC entry 2888 (class 2606 OID 5290656)
-- Dependencies: 1952 1952
-- Name: tasksproposal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tasksproposal
    ADD CONSTRAINT tasksproposal_pkey PRIMARY KEY (proposalid);


--
-- TOC entry 2896 (class 2606 OID 5290661)
-- Dependencies: 1953 1953
-- Name: tasksreview_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tasksreview
    ADD CONSTRAINT tasksreview_pkey PRIMARY KEY (reviewid);


--
-- TOC entry 2908 (class 2606 OID 5290669)
-- Dependencies: 1954 1954
-- Name: user__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_
    ADD CONSTRAINT user__pkey PRIMARY KEY (userid);


--
-- TOC entry 2913 (class 2606 OID 5290677)
-- Dependencies: 1955 1955
-- Name: usergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usergroup
    ADD CONSTRAINT usergroup_pkey PRIMARY KEY (usergroupid);


--
-- TOC entry 2920 (class 2606 OID 5290682)
-- Dependencies: 1956 1956 1956 1956
-- Name: usergrouprole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usergrouprole
    ADD CONSTRAINT usergrouprole_pkey PRIMARY KEY (userid, groupid, roleid);


--
-- TOC entry 2925 (class 2606 OID 5290687)
-- Dependencies: 1957 1957
-- Name: useridmapper_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY useridmapper
    ADD CONSTRAINT useridmapper_pkey PRIMARY KEY (useridmapperid);


--
-- TOC entry 2929 (class 2606 OID 5290692)
-- Dependencies: 1958 1958 1958
-- Name: users_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users_groups
    ADD CONSTRAINT users_groups_pkey PRIMARY KEY (userid, groupid);


--
-- TOC entry 2933 (class 2606 OID 5290697)
-- Dependencies: 1959 1959 1959
-- Name: users_orgs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users_orgs
    ADD CONSTRAINT users_orgs_pkey PRIMARY KEY (userid, organizationid);


--
-- TOC entry 2937 (class 2606 OID 5290702)
-- Dependencies: 1960 1960 1960
-- Name: users_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users_permissions
    ADD CONSTRAINT users_permissions_pkey PRIMARY KEY (userid, permissionid);


--
-- TOC entry 2941 (class 2606 OID 5290707)
-- Dependencies: 1961 1961 1961
-- Name: users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (userid, roleid);


--
-- TOC entry 2945 (class 2606 OID 5290712)
-- Dependencies: 1962 1962 1962
-- Name: users_usergroups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users_usergroups
    ADD CONSTRAINT users_usergroups_pkey PRIMARY KEY (usergroupid, userid);


--
-- TOC entry 2950 (class 2606 OID 5290720)
-- Dependencies: 1963 1963
-- Name: usertracker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usertracker
    ADD CONSTRAINT usertracker_pkey PRIMARY KEY (usertrackerid);


--
-- TOC entry 2953 (class 2606 OID 5290728)
-- Dependencies: 1964 1964
-- Name: usertrackerpath_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usertrackerpath
    ADD CONSTRAINT usertrackerpath_pkey PRIMARY KEY (usertrackerpathid);


--
-- TOC entry 2955 (class 2606 OID 5290733)
-- Dependencies: 1965 1965
-- Name: vocabulary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vocabulary
    ADD CONSTRAINT vocabulary_pkey PRIMARY KEY (vocabularyid);


--
-- TOC entry 2958 (class 2606 OID 5290741)
-- Dependencies: 1966 1966
-- Name: webdavprops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY webdavprops
    ADD CONSTRAINT webdavprops_pkey PRIMARY KEY (webdavpropsid);


--
-- TOC entry 2965 (class 2606 OID 5290749)
-- Dependencies: 1967 1967
-- Name: website_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY website
    ADD CONSTRAINT website_pkey PRIMARY KEY (websiteid);


--
-- TOC entry 2972 (class 2606 OID 5290757)
-- Dependencies: 1968 1968
-- Name: wikinode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wikinode
    ADD CONSTRAINT wikinode_pkey PRIMARY KEY (nodeid);


--
-- TOC entry 2985 (class 2606 OID 5290765)
-- Dependencies: 1969 1969
-- Name: wikipage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wikipage
    ADD CONSTRAINT wikipage_pkey PRIMARY KEY (pageid);


--
-- TOC entry 2988 (class 2606 OID 5290770)
-- Dependencies: 1970 1970
-- Name: wikipageresource_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wikipageresource
    ADD CONSTRAINT wikipageresource_pkey PRIMARY KEY (resourceprimkey);


--
-- TOC entry 3006 (class 2606 OID 5291256)
-- Dependencies: 1973 1973
-- Name: wol_meetupsentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wol_meetupsentry
    ADD CONSTRAINT wol_meetupsentry_pkey PRIMARY KEY (meetupsentryid);


--
-- TOC entry 3011 (class 2606 OID 5291264)
-- Dependencies: 1974 1974
-- Name: wol_meetupsregistration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wol_meetupsregistration
    ADD CONSTRAINT wol_meetupsregistration_pkey PRIMARY KEY (meetupsregistrationid);


--
-- TOC entry 3014 (class 2606 OID 5291269)
-- Dependencies: 1975 1975
-- Name: wol_svnrepository_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wol_svnrepository
    ADD CONSTRAINT wol_svnrepository_pkey PRIMARY KEY (svnrepositoryid);


--
-- TOC entry 3019 (class 2606 OID 5291277)
-- Dependencies: 1976 1976
-- Name: wol_svnrevision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wol_svnrevision
    ADD CONSTRAINT wol_svnrevision_pkey PRIMARY KEY (svnrevisionid);


--
-- TOC entry 3024 (class 2606 OID 5291285)
-- Dependencies: 1977 1977
-- Name: wol_wallentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wol_wallentry
    ADD CONSTRAINT wol_wallentry_pkey PRIMARY KEY (wallentryid);


--
-- TOC entry 2504 (class 1259 OID 5290919)
-- Dependencies: 1881 1881 1881 1881 1881 1881
-- Name: ix_103d6207; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_103d6207 ON journalarticleimage USING btree (groupid, articleid, version, elinstanceid, elname, languageid);


--
-- TOC entry 2810 (class 1259 OID 5291106)
-- Dependencies: 1940 1940 1940
-- Name: ix_119b5630; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_119b5630 ON shoppingorder USING btree (groupid, userid, pppaymentstatus);


--
-- TOC entry 2707 (class 1259 OID 5291050)
-- Dependencies: 1917 1917
-- Name: ix_11fb3e42; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_11fb3e42 ON region USING btree (countryid, active_);


--
-- TOC entry 2677 (class 1259 OID 5291031)
-- Dependencies: 1911
-- Name: ix_12112599; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_12112599 ON pollsvote USING btree (questionid);


--
-- TOC entry 2819 (class 1259 OID 5291117)
-- Dependencies: 1942
-- Name: ix_121ca3cb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_121ca3cb ON socialactivity USING btree (receiveruserid);


--
-- TOC entry 2357 (class 1259 OID 5290819)
-- Dependencies: 1856
-- Name: ix_12566ec2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_12566ec2 ON company USING btree (mx);


--
-- TOC entry 2820 (class 1259 OID 5291115)
-- Dependencies: 1942
-- Name: ix_1271f25f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1271f25f ON socialactivity USING btree (mirroractivityid);


--
-- TOC entry 2830 (class 1259 OID 5291124)
-- Dependencies: 1943 1943 1943
-- Name: ix_12a92145; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_12a92145 ON socialrelation USING btree (userid1, userid2, type_);


--
-- TOC entry 2682 (class 1259 OID 5291034)
-- Dependencies: 1912 1912
-- Name: ix_12b5e51d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_12b5e51d ON portlet USING btree (companyid, portletid);


--
-- TOC entry 2345 (class 1259 OID 5290811)
-- Dependencies: 1854
-- Name: ix_12ee4898; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_12ee4898 ON calevent USING btree (groupid);


--
-- TOC entry 2588 (class 1259 OID 5290976)
-- Dependencies: 1894 1894
-- Name: ix_138c7f1e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_138c7f1e ON mbmessage USING btree (categoryid, threadid);


--
-- TOC entry 2951 (class 1259 OID 5291178)
-- Dependencies: 1964
-- Name: ix_14d8bcc0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_14d8bcc0 ON usertrackerpath USING btree (usertrackerid);


--
-- TOC entry 2300 (class 1259 OID 5290780)
-- Dependencies: 1847 1847 1847
-- Name: ix_14f06a6b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_14f06a6b ON announcementsentry USING btree (classnameid, classpk, alert);


--
-- TOC entry 2505 (class 1259 OID 5290918)
-- Dependencies: 1881 1881 1881
-- Name: ix_158b526f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_158b526f ON journalarticleimage USING btree (groupid, articleid, version);


--
-- TOC entry 3000 (class 1259 OID 5291245)
-- Dependencies: 1972
-- Name: ix_15bd544a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_15bd544a ON chat_status USING btree (modifieddate);


--
-- TOC entry 2700 (class 1259 OID 5291045)
-- Dependencies: 1915 1915
-- Name: ix_16184d57; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_16184d57 ON ratingsentry USING btree (classnameid, classpk);


--
-- TOC entry 2444 (class 1259 OID 5290878)
-- Dependencies: 1872
-- Name: ix_16218a38; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_16218a38 ON group_ USING btree (livegroupid);


--
-- TOC entry 2991 (class 1259 OID 5291244)
-- Dependencies: 1971
-- Name: ix_16384be6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_16384be6 ON chat_entry USING btree (touserid);


--
-- TOC entry 2708 (class 1259 OID 5291049)
-- Dependencies: 1917
-- Name: ix_16d87ca7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_16d87ca7 ON region USING btree (countryid);


--
-- TOC entry 2536 (class 1259 OID 5290940)
-- Dependencies: 1886 1886
-- Name: ix_1701cb2b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1701cb2b ON journaltemplate USING btree (groupid, structureid);


--
-- TOC entry 2884 (class 1259 OID 5291155)
-- Dependencies: 1952 1952
-- Name: ix_181a4a1b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_181a4a1b ON tasksproposal USING btree (classnameid, classpk);


--
-- TOC entry 2889 (class 1259 OID 5291160)
-- Dependencies: 1953 1953 1953
-- Name: ix_1894b29a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1894b29a ON tasksreview USING btree (proposalid, stage, completed);


--
-- TOC entry 2615 (class 1259 OID 5290997)
-- Dependencies: 1897 1897
-- Name: ix_19d8b60a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_19d8b60a ON mbthread USING btree (categoryid, lastpostdate);


--
-- TOC entry 2369 (class 1259 OID 5290827)
-- Dependencies: 1859
-- Name: ix_19da007b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_19da007b ON country USING btree (name);


--
-- TOC entry 2545 (class 1259 OID 5290953)
-- Dependencies: 1887 1887 1887
-- Name: ix_1a1b61d2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1a1b61d2 ON layout USING btree (groupid, privatelayout, type_);


--
-- TOC entry 2469 (class 1259 OID 5290890)
-- Dependencies: 1877 1877
-- Name: ix_1a605e9f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1a605e9f ON igfolder USING btree (groupid, parentfolderid);


--
-- TOC entry 2959 (class 1259 OID 5291203)
-- Dependencies: 1967 1967 1967 1967
-- Name: ix_1aa07a6d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1aa07a6d ON website USING btree (companyid, classnameid, classpk, primary_);


--
-- TOC entry 2859 (class 1259 OID 5291142)
-- Dependencies: 1946 1946
-- Name: ix_1ab6d6d2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_1ab6d6d2 ON tagsasset USING btree (classnameid, classpk);


--
-- TOC entry 3015 (class 1259 OID 5291291)
-- Dependencies: 1976
-- Name: ix_1af89e5f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1af89e5f ON wol_svnrevision USING btree (svnrepositoryid);


--
-- TOC entry 2301 (class 1259 OID 5290782)
-- Dependencies: 1847
-- Name: ix_1afbde08; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1afbde08 ON announcementsentry USING btree (uuid_);


--
-- TOC entry 2310 (class 1259 OID 5290793)
-- Dependencies: 1849 1849
-- Name: ix_1b1040fd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_1b1040fd ON blogsentry USING btree (uuid_, groupid);


--
-- TOC entry 2537 (class 1259 OID 5290943)
-- Dependencies: 1886
-- Name: ix_1b12ca20; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1b12ca20 ON journaltemplate USING btree (templateid);


--
-- TOC entry 2914 (class 1259 OID 5291167)
-- Dependencies: 1956
-- Name: ix_1b988d7a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1b988d7a ON usergrouprole USING btree (groupid);


--
-- TOC entry 2414 (class 1259 OID 5290853)
-- Dependencies: 1867
-- Name: ix_1bb072ca; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1bb072ca ON emailaddress USING btree (companyid);


--
-- TOC entry 2678 (class 1259 OID 5291032)
-- Dependencies: 1911 1911
-- Name: ix_1bbfd4d3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_1bbfd4d3 ON pollsvote USING btree (questionid, userid);


--
-- TOC entry 2433 (class 1259 OID 5290869)
-- Dependencies: 1871 1871
-- Name: ix_1bd3f4c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1bd3f4c ON expandovalue USING btree (tableid, classpk);


--
-- TOC entry 2797 (class 1259 OID 5291099)
-- Dependencies: 1937 1937
-- Name: ix_1c717ca6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_1c717ca6 ON shoppingitem USING btree (companyid, sku);


--
-- TOC entry 2752 (class 1259 OID 5291073)
-- Dependencies: 1927
-- Name: ix_1c841592; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1c841592 ON sclicense USING btree (active_);


--
-- TOC entry 2811 (class 1259 OID 5291105)
-- Dependencies: 1940
-- Name: ix_1d15553e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1d15553e ON shoppingorder USING btree (groupid);


--
-- TOC entry 2789 (class 1259 OID 5291095)
-- Dependencies: 1935 1935
-- Name: ix_1e6464f5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1e6464f5 ON shoppingcategory USING btree (groupid, parentcategoryid);


--
-- TOC entry 2973 (class 1259 OID 5291215)
-- Dependencies: 1969 1969
-- Name: ix_1ecc7656; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1ecc7656 ON wikipage USING btree (nodeid, redirecttitle);


--
-- TOC entry 2821 (class 1259 OID 5291116)
-- Dependencies: 1942 1942 1942
-- Name: ix_1f00c374; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_1f00c374 ON socialactivity USING btree (mirroractivityid, classnameid, classpk);


--
-- TOC entry 2470 (class 1259 OID 5290889)
-- Dependencies: 1877
-- Name: ix_206498f8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_206498f8 ON igfolder USING btree (groupid);


--
-- TOC entry 2514 (class 1259 OID 5290924)
-- Dependencies: 1883 1883
-- Name: ix_20962903; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_20962903 ON journalcontentsearch USING btree (groupid, privatelayout);


--
-- TOC entry 2272 (class 1259 OID 5289955)
-- Dependencies: 1841 1841
-- Name: ix_20d8706c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_20d8706c ON quartz_fired_triggers USING btree (trigger_name, trigger_group);


--
-- TOC entry 2986 (class 1259 OID 5291221)
-- Dependencies: 1970 1970
-- Name: ix_21277664; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_21277664 ON wikipageresource USING btree (nodeid, title);


--
-- TOC entry 2727 (class 1259 OID 5291057)
-- Dependencies: 1922 1922 1922 1922
-- Name: ix_2200aa69; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2200aa69 ON resourcepermission USING btree (companyid, name, scope, primkey);


--
-- TOC entry 2490 (class 1259 OID 5290912)
-- Dependencies: 1880 1880
-- Name: ix_22882d02; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_22882d02 ON journalarticle USING btree (groupid, urltitle);


--
-- TOC entry 2546 (class 1259 OID 5290954)
-- Dependencies: 1887
-- Name: ix_23922f7d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_23922f7d ON layout USING btree (iconimageid);


--
-- TOC entry 2909 (class 1259 OID 5291165)
-- Dependencies: 1955 1955
-- Name: ix_23ead0d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_23ead0d ON usergroup USING btree (companyid, name);


--
-- TOC entry 2379 (class 1259 OID 5290829)
-- Dependencies: 1862
-- Name: ix_24a846d1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_24a846d1 ON dlfileentry USING btree (folderid);


--
-- TOC entry 2714 (class 1259 OID 5291060)
-- Dependencies: 1919
-- Name: ix_2578fbd3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2578fbd3 ON resource_ USING btree (codeid);


--
-- TOC entry 2370 (class 1259 OID 5290826)
-- Dependencies: 1859
-- Name: ix_25d734cd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_25d734cd ON country USING btree (active_);


--
-- TOC entry 3016 (class 1259 OID 5291293)
-- Dependencies: 1976 1976
-- Name: ix_25e1e8e0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_25e1e8e0 ON wol_svnrevision USING btree (svnuserid, svnrepositoryid);


--
-- TOC entry 2538 (class 1259 OID 5290942)
-- Dependencies: 1886
-- Name: ix_25ffb6fa; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_25ffb6fa ON journaltemplate USING btree (smallimageid);


--
-- TOC entry 2477 (class 1259 OID 5290902)
-- Dependencies: 1878
-- Name: ix_265bb0f1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_265bb0f1 ON igimage USING btree (uuid_);


--
-- TOC entry 2756 (class 1259 OID 5291075)
-- Dependencies: 1928
-- Name: ix_27006638; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_27006638 ON sclicenses_scproductentries USING btree (licenseid);


--
-- TOC entry 2747 (class 1259 OID 5291071)
-- Dependencies: 1926
-- Name: ix_272991fa; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_272991fa ON scframeworkversion USING btree (groupid);


--
-- TOC entry 2539 (class 1259 OID 5290944)
-- Dependencies: 1886
-- Name: ix_2857419d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2857419d ON journaltemplate USING btree (uuid_);


--
-- TOC entry 2321 (class 1259 OID 5290796)
-- Dependencies: 1850 1850
-- Name: ix_28c78d5c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_28c78d5c ON blogsstatsuser USING btree (groupid, entrycount);


--
-- TOC entry 2867 (class 1259 OID 5291147)
-- Dependencies: 1948
-- Name: ix_28e8954; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_28e8954 ON tagsentry USING btree (vocabularyid);


--
-- TOC entry 2561 (class 1259 OID 5290958)
-- Dependencies: 1889
-- Name: ix_2932dd37; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2932dd37 ON listtype USING btree (type_);


--
-- TOC entry 2946 (class 1259 OID 5291175)
-- Dependencies: 1963
-- Name: ix_29ba1cf5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_29ba1cf5 ON usertracker USING btree (companyid);


--
-- TOC entry 2992 (class 1259 OID 5291243)
-- Dependencies: 1971 1971 1971
-- Name: ix_2a17a23f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2a17a23f ON chat_entry USING btree (fromuserid, touserid, content);


--
-- TOC entry 2822 (class 1259 OID 5291113)
-- Dependencies: 1942
-- Name: ix_2a2468; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2a2468 ON socialactivity USING btree (groupid);


--
-- TOC entry 2415 (class 1259 OID 5290856)
-- Dependencies: 1867 1867 1867 1867
-- Name: ix_2a2cb130; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2a2cb130 ON emailaddress USING btree (companyid, classnameid, classpk, primary_);


--
-- TOC entry 2335 (class 1259 OID 5290804)
-- Dependencies: 1852
-- Name: ix_2aba25d7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2aba25d7 ON bookmarksfolder USING btree (companyid);


--
-- TOC entry 2641 (class 1259 OID 5291010)
-- Dependencies: 1903 1903
-- Name: ix_2c1142e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2c1142e ON passwordpolicy USING btree (companyid, defaultpolicy);


--
-- TOC entry 2686 (class 1259 OID 5291037)
-- Dependencies: 1913 1913
-- Name: ix_2c61314e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2c61314e ON portletitem USING btree (groupid, portletid);


--
-- TOC entry 2709 (class 1259 OID 5291048)
-- Dependencies: 1917
-- Name: ix_2d9a426f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2d9a426f ON region USING btree (active_);


--
-- TOC entry 2853 (class 1259 OID 5291139)
-- Dependencies: 1945 1945 1945 1945
-- Name: ix_2e1a92d4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_2e1a92d4 ON subscription USING btree (companyid, userid, classnameid, classpk);


--
-- TOC entry 2491 (class 1259 OID 5290910)
-- Dependencies: 1880 1880
-- Name: ix_2e207659; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2e207659 ON journalarticle USING btree (groupid, structureid);


--
-- TOC entry 2600 (class 1259 OID 5290991)
-- Dependencies: 1895 1895 1895
-- Name: ix_2ea537d7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_2ea537d7 ON mbmessageflag USING btree (userid, threadid, flag);


--
-- TOC entry 2461 (class 1259 OID 5290885)
-- Dependencies: 1875
-- Name: ix_3103ef3d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3103ef3d ON groups_roles USING btree (roleid);


--
-- TOC entry 2465 (class 1259 OID 5290886)
-- Dependencies: 1876
-- Name: ix_31fb749a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_31fb749a ON groups_usergroups USING btree (groupid);


--
-- TOC entry 2841 (class 1259 OID 5291130)
-- Dependencies: 1944
-- Name: ix_32292ed1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_32292ed1 ON socialrequest USING btree (receiveruserid);


--
-- TOC entry 2793 (class 1259 OID 5291097)
-- Dependencies: 1936
-- Name: ix_3251af16; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3251af16 ON shoppingcoupon USING btree (groupid);


--
-- TOC entry 3001 (class 1259 OID 5291247)
-- Dependencies: 1972
-- Name: ix_32531b3d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_32531b3d ON chat_status USING btree (online_);


--
-- TOC entry 2649 (class 1259 OID 5291014)
-- Dependencies: 1905
-- Name: ix_326f75bd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_326f75bd ON passwordtracker USING btree (userid);


--
-- TOC entry 2577 (class 1259 OID 5290969)
-- Dependencies: 1892 1892
-- Name: ix_33a4de38; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_33a4de38 ON mbdiscussion USING btree (classnameid, classpk);


--
-- TOC entry 2687 (class 1259 OID 5291040)
-- Dependencies: 1913 1913 1913
-- Name: ix_33b8ce8d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_33b8ce8d ON portletitem USING btree (groupid, portletid, name);


--
-- TOC entry 2492 (class 1259 OID 5290916)
-- Dependencies: 1880 1880
-- Name: ix_3463d95b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_3463d95b ON journalarticle USING btree (uuid_, groupid);


--
-- TOC entry 2823 (class 1259 OID 5291118)
-- Dependencies: 1942
-- Name: ix_3504b8bc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3504b8bc ON socialactivity USING btree (userid);


--
-- TOC entry 2522 (class 1259 OID 5290929)
-- Dependencies: 1884
-- Name: ix_35a2db2f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_35a2db2f ON journalfeed USING btree (groupid);


--
-- TOC entry 2358 (class 1259 OID 5290820)
-- Dependencies: 1856
-- Name: ix_35e3e7c6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_35e3e7c6 ON company USING btree (system);


--
-- TOC entry 2842 (class 1259 OID 5291133)
-- Dependencies: 1944 1944 1944 1944 1944
-- Name: ix_36a90ca7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_36a90ca7 ON socialrequest USING btree (userid, classnameid, classpk, type_, receiveruserid);


--
-- TOC entry 2890 (class 1259 OID 5291162)
-- Dependencies: 1953
-- Name: ix_36f512e6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_36f512e6 ON tasksreview USING btree (userid);


--
-- TOC entry 2429 (class 1259 OID 5290863)
-- Dependencies: 1870 1870 1870
-- Name: ix_37562284; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_37562284 ON expandotable USING btree (companyid, classnameid, name);


--
-- TOC entry 2359 (class 1259 OID 5290818)
-- Dependencies: 1856
-- Name: ix_38efe3fd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_38efe3fd ON company USING btree (logoid);


--
-- TOC entry 2523 (class 1259 OID 5290932)
-- Dependencies: 1884 1884
-- Name: ix_39031f51; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_39031f51 ON journalfeed USING btree (uuid_, groupid);


--
-- TOC entry 2897 (class 1259 OID 5291179)
-- Dependencies: 1954
-- Name: ix_3a1e834e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3a1e834e ON user_ USING btree (companyid);


--
-- TOC entry 2506 (class 1259 OID 5290917)
-- Dependencies: 1881
-- Name: ix_3b51bb68; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3b51bb68 ON journalarticleimage USING btree (groupid);


--
-- TOC entry 2466 (class 1259 OID 5290887)
-- Dependencies: 1876
-- Name: ix_3b69160f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3b69160f ON groups_usergroups USING btree (usergroupid);


--
-- TOC entry 2743 (class 1259 OID 5291068)
-- Dependencies: 1925
-- Name: ix_3bb93eca; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3bb93eca ON scframeworkversi_scproductvers USING btree (frameworkversionid);


--
-- TOC entry 2589 (class 1259 OID 5290975)
-- Dependencies: 1894
-- Name: ix_3c865ee5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3c865ee5 ON mbmessage USING btree (categoryid);


--
-- TOC entry 2405 (class 1259 OID 5290852)
-- Dependencies: 1866 1866
-- Name: ix_3cc1ded2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_3cc1ded2 ON dlfolder USING btree (uuid_, groupid);


--
-- TOC entry 2601 (class 1259 OID 5290988)
-- Dependencies: 1895 1895
-- Name: ix_3cfd579d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3cfd579d ON mbmessageflag USING btree (threadid, flag);


--
-- TOC entry 2974 (class 1259 OID 5291218)
-- Dependencies: 1969 1969 1969
-- Name: ix_3d4af476; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_3d4af476 ON wikipage USING btree (nodeid, title, version);


--
-- TOC entry 2831 (class 1259 OID 5291126)
-- Dependencies: 1943 1943
-- Name: ix_3f9c2fa8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_3f9c2fa8 ON socialrelation USING btree (userid2, type_);


--
-- TOC entry 2642 (class 1259 OID 5291011)
-- Dependencies: 1903 1903
-- Name: ix_3fbfa9f4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_3fbfa9f4 ON passwordpolicy USING btree (companyid, name);


--
-- TOC entry 2389 (class 1259 OID 5290837)
-- Dependencies: 1863 1863
-- Name: ix_40b56512; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_40b56512 ON dlfilerank USING btree (folderid, name);


--
-- TOC entry 2582 (class 1259 OID 5290973)
-- Dependencies: 1893
-- Name: ix_4115ec7a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4115ec7a ON mbmailinglist USING btree (uuid_);


--
-- TOC entry 2625 (class 1259 OID 5291009)
-- Dependencies: 1899 1899
-- Name: ix_418e4522; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_418e4522 ON organization_ USING btree (companyid, parentorganizationid);


--
-- TOC entry 2921 (class 1259 OID 5291172)
-- Dependencies: 1957 1957
-- Name: ix_41a32e0d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_41a32e0d ON useridmapper USING btree (type_, externaluserid);


--
-- TOC entry 2891 (class 1259 OID 5291161)
-- Dependencies: 1953 1953 1953 1953
-- Name: ix_41afc20c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_41afc20c ON tasksreview USING btree (proposalid, stage, completed, rejected);


--
-- TOC entry 3007 (class 1259 OID 5291289)
-- Dependencies: 1974 1974
-- Name: ix_4262ce8f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4262ce8f ON wol_meetupsregistration USING btree (userid, meetupsentryid);


--
-- TOC entry 2528 (class 1259 OID 5290938)
-- Dependencies: 1885 1885
-- Name: ix_42e86e58; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_42e86e58 ON journalstructure USING btree (uuid_, groupid);


--
-- TOC entry 2380 (class 1259 OID 5290833)
-- Dependencies: 1862 1862
-- Name: ix_43261870; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_43261870 ON dlfileentry USING btree (groupid, userid);


--
-- TOC entry 2322 (class 1259 OID 5290795)
-- Dependencies: 1850
-- Name: ix_43840eeb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_43840eeb ON blogsstatsuser USING btree (groupid);


--
-- TOC entry 2478 (class 1259 OID 5290896)
-- Dependencies: 1878
-- Name: ix_4438ca80; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4438ca80 ON igimage USING btree (folderid);


--
-- TOC entry 2328 (class 1259 OID 5290799)
-- Dependencies: 1851
-- Name: ix_443bdc38; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_443bdc38 ON bookmarksentry USING btree (folderid);


--
-- TOC entry 2733 (class 1259 OID 5291062)
-- Dependencies: 1923
-- Name: ix_449a10b9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_449a10b9 ON role_ USING btree (companyid);


--
-- TOC entry 2336 (class 1259 OID 5290807)
-- Dependencies: 1852
-- Name: ix_451e7ae3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_451e7ae3 ON bookmarksfolder USING btree (uuid_);


--
-- TOC entry 2306 (class 1259 OID 5290784)
-- Dependencies: 1848 1848 1848
-- Name: ix_4539a99c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_4539a99c ON announcementsflag USING btree (userid, entryid, value);


--
-- TOC entry 2766 (class 1259 OID 5291082)
-- Dependencies: 1930
-- Name: ix_467956fd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_467956fd ON scproductscreenshot USING btree (productentryid);


--
-- TOC entry 2947 (class 1259 OID 5291176)
-- Dependencies: 1963
-- Name: ix_46b0ae8e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_46b0ae8e ON usertracker USING btree (sessionid);


--
-- TOC entry 2975 (class 1259 OID 5291214)
-- Dependencies: 1969 1969
-- Name: ix_46eef3c8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_46eef3c8 ON wikipage USING btree (nodeid, parenttitle);


--
-- TOC entry 2395 (class 1259 OID 5290842)
-- Dependencies: 1864
-- Name: ix_4831ebe4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4831ebe4 ON dlfileshortcut USING btree (uuid_);


--
-- TOC entry 2556 (class 1259 OID 5290956)
-- Dependencies: 1888 1888
-- Name: ix_48550691; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_48550691 ON layoutset USING btree (groupid, privatelayout);


--
-- TOC entry 2564 (class 1259 OID 5290962)
-- Dependencies: 1890
-- Name: ix_48814bba; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_48814bba ON mbban USING btree (userid);


--
-- TOC entry 2406 (class 1259 OID 5290848)
-- Dependencies: 1866 1866
-- Name: ix_49c37475; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_49c37475 ON dlfolder USING btree (groupid, parentfolderid);


--
-- TOC entry 2416 (class 1259 OID 5290854)
-- Dependencies: 1867 1867
-- Name: ix_49d2dec4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_49d2dec4 ON emailaddress USING btree (companyid, classnameid);


--
-- TOC entry 2843 (class 1259 OID 5291136)
-- Dependencies: 1944
-- Name: ix_49d5872c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_49d5872c ON socialrequest USING btree (uuid_);


--
-- TOC entry 2634 (class 1259 OID 5291004)
-- Dependencies: 1901
-- Name: ix_4a527dd3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4a527dd3 ON orggrouprole USING btree (groupid);


--
-- TOC entry 2832 (class 1259 OID 5291123)
-- Dependencies: 1943 1943
-- Name: ix_4b52be89; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4b52be89 ON socialrelation USING btree (userid1, type_);


--
-- TOC entry 2381 (class 1259 OID 5290828)
-- Dependencies: 1862
-- Name: ix_4cb1b2b4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4cb1b2b4 ON dlfileentry USING btree (companyid);


--
-- TOC entry 2915 (class 1259 OID 5291171)
-- Dependencies: 1956 1956
-- Name: ix_4d040680; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4d040680 ON usergrouprole USING btree (userid, groupid);


--
-- TOC entry 2892 (class 1259 OID 5291158)
-- Dependencies: 1953
-- Name: ix_4d0c7f8d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4d0c7f8d ON tasksreview USING btree (proposalid);


--
-- TOC entry 2652 (class 1259 OID 5291015)
-- Dependencies: 1906 1906
-- Name: ix_4d19c2b8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_4d19c2b8 ON permission_ USING btree (actionid, resourceid);


--
-- TOC entry 2776 (class 1259 OID 5291088)
-- Dependencies: 1932 1932
-- Name: ix_4f0315b8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_4f0315b8 ON servicecomponent USING btree (buildnamespace, buildnumber);


--
-- TOC entry 2960 (class 1259 OID 5291201)
-- Dependencies: 1967 1967
-- Name: ix_4f0f0ca7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4f0f0ca7 ON website USING btree (companyid, classnameid);


--
-- TOC entry 2844 (class 1259 OID 5291137)
-- Dependencies: 1944 1944
-- Name: ix_4f973efe; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_4f973efe ON socialrequest USING btree (uuid_, groupid);


--
-- TOC entry 2346 (class 1259 OID 5290812)
-- Dependencies: 1854 1854
-- Name: ix_4fddd2bf; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_4fddd2bf ON calevent USING btree (groupid, repeating);


--
-- TOC entry 2524 (class 1259 OID 5290931)
-- Dependencies: 1884
-- Name: ix_50c36d79; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_50c36d79 ON journalfeed USING btree (uuid_);


--
-- TOC entry 2407 (class 1259 OID 5290850)
-- Dependencies: 1866 1866
-- Name: ix_51556082; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_51556082 ON dlfolder USING btree (parentfolderid, name);


--
-- TOC entry 2590 (class 1259 OID 5290977)
-- Dependencies: 1894 1894
-- Name: ix_51a8d44d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_51a8d44d ON mbmessage USING btree (classnameid, classpk);


--
-- TOC entry 2672 (class 1259 OID 5291028)
-- Dependencies: 1910
-- Name: ix_51f087f4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_51f087f4 ON pollsquestion USING btree (uuid_);


--
-- TOC entry 2871 (class 1259 OID 5291150)
-- Dependencies: 1949
-- Name: ix_5200a629; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5200a629 ON tagsproperty USING btree (entryid);


--
-- TOC entry 2910 (class 1259 OID 5291164)
-- Dependencies: 1955
-- Name: ix_524fefce; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_524fefce ON usergroup USING btree (companyid);


--
-- TOC entry 2753 (class 1259 OID 5291074)
-- Dependencies: 1927 1927
-- Name: ix_5327bb79; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5327bb79 ON sclicense USING btree (active_, recommended);


--
-- TOC entry 2784 (class 1259 OID 5291093)
-- Dependencies: 1934
-- Name: ix_54101cc8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_54101cc8 ON shoppingcart USING btree (userid);


--
-- TOC entry 2854 (class 1259 OID 5291140)
-- Dependencies: 1945
-- Name: ix_54243afd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_54243afd ON subscription USING btree (userid);


--
-- TOC entry 2417 (class 1259 OID 5290855)
-- Dependencies: 1867 1867 1867
-- Name: ix_551a519f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_551a519f ON emailaddress USING btree (companyid, classnameid, classpk);


--
-- TOC entry 2833 (class 1259 OID 5291122)
-- Dependencies: 1943
-- Name: ix_5a40cdcc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5a40cdcc ON socialrelation USING btree (userid1);


--
-- TOC entry 2834 (class 1259 OID 5291125)
-- Dependencies: 1943
-- Name: ix_5a40d18d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5a40d18d ON socialrelation USING btree (userid2);


--
-- TOC entry 2445 (class 1259 OID 5290877)
-- Dependencies: 1872 1872
-- Name: ix_5aa68501; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_5aa68501 ON group_ USING btree (companyid, name);


--
-- TOC entry 2557 (class 1259 OID 5290957)
-- Dependencies: 1888
-- Name: ix_5abc2905; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5abc2905 ON layoutset USING btree (virtualhost);


--
-- TOC entry 2898 (class 1259 OID 5291184)
-- Dependencies: 1954
-- Name: ix_5adbe171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_5adbe171 ON user_ USING btree (contactid);


--
-- TOC entry 2591 (class 1259 OID 5290979)
-- Dependencies: 1894
-- Name: ix_5b153fb2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5b153fb2 ON mbmessage USING btree (groupid);


--
-- TOC entry 2288 (class 1259 OID 5290776)
-- Dependencies: 1845
-- Name: ix_5bc8b0d4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5bc8b0d4 ON address USING btree (userid);


--
-- TOC entry 2446 (class 1259 OID 5290875)
-- Dependencies: 1872 1872
-- Name: ix_5bddb872; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_5bddb872 ON group_ USING btree (companyid, friendlyurl);


--
-- TOC entry 2565 (class 1259 OID 5290960)
-- Dependencies: 1890
-- Name: ix_5c3ff12a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5c3ff12a ON mbban USING btree (groupid);


--
-- TOC entry 2893 (class 1259 OID 5291163)
-- Dependencies: 1953 1953
-- Name: ix_5c6be4c7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_5c6be4c7 ON tasksreview USING btree (userid, proposalid);


--
-- TOC entry 2347 (class 1259 OID 5290816)
-- Dependencies: 1854 1854
-- Name: ix_5cce79c8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_5cce79c8 ON calevent USING btree (uuid_, groupid);


--
-- TOC entry 2760 (class 1259 OID 5291077)
-- Dependencies: 1929
-- Name: ix_5d25244f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5d25244f ON scproductentry USING btree (companyid);


--
-- TOC entry 2966 (class 1259 OID 5291205)
-- Dependencies: 1968
-- Name: ix_5d6fe3f0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5d6fe3f0 ON wikinode USING btree (companyid);


--
-- TOC entry 2447 (class 1259 OID 5290874)
-- Dependencies: 1872 1872 1872 1872
-- Name: ix_5de0be11; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_5de0be11 ON group_ USING btree (companyid, classnameid, livegroupid, name);


--
-- TOC entry 2790 (class 1259 OID 5291094)
-- Dependencies: 1935
-- Name: ix_5f615d3e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5f615d3e ON shoppingcategory USING btree (groupid);


--
-- TOC entry 2273 (class 1259 OID 5289954)
-- Dependencies: 1841
-- Name: ix_5feabbc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_5feabbc ON quartz_fired_triggers USING btree (trigger_name);


--
-- TOC entry 2471 (class 1259 OID 5290888)
-- Dependencies: 1877
-- Name: ix_60214cf6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_60214cf6 ON igfolder USING btree (companyid);


--
-- TOC entry 2728 (class 1259 OID 5291056)
-- Dependencies: 1922 1922 1922
-- Name: ix_60b99860; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_60b99860 ON resourcepermission USING btree (companyid, name, scope);


--
-- TOC entry 2835 (class 1259 OID 5291119)
-- Dependencies: 1943
-- Name: ix_61171e99; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_61171e99 ON socialrelation USING btree (companyid);


--
-- TOC entry 2899 (class 1259 OID 5291181)
-- Dependencies: 1954 1954
-- Name: ix_615e9f7a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_615e9f7a ON user_ USING btree (companyid, emailaddress);


--
-- TOC entry 2540 (class 1259 OID 5290945)
-- Dependencies: 1886 1886
-- Name: ix_62d1b3ad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_62d1b3ad ON journaltemplate USING btree (uuid_, groupid);


--
-- TOC entry 2479 (class 1259 OID 5290898)
-- Dependencies: 1878
-- Name: ix_63820a7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_63820a7 ON igimage USING btree (groupid);


--
-- TOC entry 2274 (class 1259 OID 5289953)
-- Dependencies: 1841
-- Name: ix_64b194f2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_64b194f2 ON quartz_fired_triggers USING btree (trigger_group);


--
-- TOC entry 2824 (class 1259 OID 5291112)
-- Dependencies: 1942
-- Name: ix_64b1bc66; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_64b1bc66 ON socialactivity USING btree (companyid);


--
-- TOC entry 2480 (class 1259 OID 5290900)
-- Dependencies: 1878
-- Name: ix_64f0b572; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_64f0b572 ON igimage USING btree (largeimageid);


--
-- TOC entry 2382 (class 1259 OID 5290834)
-- Dependencies: 1862
-- Name: ix_64f0fe40; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_64f0fe40 ON dlfileentry USING btree (uuid_);


--
-- TOC entry 2525 (class 1259 OID 5290930)
-- Dependencies: 1884 1884
-- Name: ix_65576cbc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_65576cbc ON journalfeed USING btree (groupid, feedid);


--
-- TOC entry 2976 (class 1259 OID 5291213)
-- Dependencies: 1969 1969 1969
-- Name: ix_65e84af4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_65e84af4 ON wikipage USING btree (nodeid, head, parenttitle);


--
-- TOC entry 2667 (class 1259 OID 5291026)
-- Dependencies: 1909
-- Name: ix_6660b399; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6660b399 ON pollschoice USING btree (uuid_);


--
-- TOC entry 2364 (class 1259 OID 5290823)
-- Dependencies: 1857
-- Name: ix_66d496a3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_66d496a3 ON contact_ USING btree (companyid);


--
-- TOC entry 2620 (class 1259 OID 5291001)
-- Dependencies: 1898
-- Name: ix_66d70879; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_66d70879 ON membershiprequest USING btree (userid);


--
-- TOC entry 2942 (class 1259 OID 5291197)
-- Dependencies: 1962
-- Name: ix_66ff2503; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_66ff2503 ON users_usergroups USING btree (usergroupid);


--
-- TOC entry 2529 (class 1259 OID 5290937)
-- Dependencies: 1885
-- Name: ix_6702ca92; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6702ca92 ON journalstructure USING btree (uuid_);


--
-- TOC entry 2715 (class 1259 OID 5291061)
-- Dependencies: 1919 1919
-- Name: ix_67de7856; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_67de7856 ON resource_ USING btree (codeid, primkey);


--
-- TOC entry 2515 (class 1259 OID 5290923)
-- Dependencies: 1883 1883
-- Name: ix_6838e427; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6838e427 ON journalcontentsearch USING btree (groupid, articleid);


--
-- TOC entry 2493 (class 1259 OID 5290907)
-- Dependencies: 1880 1880
-- Name: ix_68c0f69c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_68c0f69c ON journalarticle USING btree (groupid, articleid);


--
-- TOC entry 2311 (class 1259 OID 5290792)
-- Dependencies: 1849
-- Name: ix_69157a4d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_69157a4d ON blogsentry USING btree (uuid_);


--
-- TOC entry 2911 (class 1259 OID 5291166)
-- Dependencies: 1955 1955
-- Name: ix_69771487; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_69771487 ON usergroup USING btree (companyid, parentusergroupid);


--
-- TOC entry 2566 (class 1259 OID 5290959)
-- Dependencies: 1890
-- Name: ix_69951a25; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_69951a25 ON mbban USING btree (banuserid);


--
-- TOC entry 2489 (class 1259 OID 5290904)
-- Dependencies: 1879
-- Name: ix_6a925a4d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6a925a4d ON image USING btree (size_);


--
-- TOC entry 2638 (class 1259 OID 5291006)
-- Dependencies: 1902
-- Name: ix_6af0d434; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6af0d434 ON orglabor USING btree (organizationid);


--
-- TOC entry 2453 (class 1259 OID 5290881)
-- Dependencies: 1873
-- Name: ix_6bbb7682; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6bbb7682 ON groups_orgs USING btree (organizationid);


--
-- TOC entry 2967 (class 1259 OID 5291208)
-- Dependencies: 1968
-- Name: ix_6c112d7c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6c112d7c ON wikinode USING btree (uuid_);


--
-- TOC entry 2630 (class 1259 OID 5291003)
-- Dependencies: 1900
-- Name: ix_6c53da4e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6c53da4e ON orggrouppermission USING btree (permissionid);


--
-- TOC entry 2767 (class 1259 OID 5291084)
-- Dependencies: 1930
-- Name: ix_6c572dac; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6c572dac ON scproductscreenshot USING btree (thumbnailid);


--
-- TOC entry 2401 (class 1259 OID 5290845)
-- Dependencies: 1865 1865 1865
-- Name: ix_6c5e6512; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_6c5e6512 ON dlfileversion USING btree (folderid, name, version);


--
-- TOC entry 2804 (class 1259 OID 5291103)
-- Dependencies: 1938
-- Name: ix_6d5f9b87; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6d5f9b87 ON shoppingitemfield USING btree (itemid);


--
-- TOC entry 2547 (class 1259 OID 5290952)
-- Dependencies: 1887 1887 1887
-- Name: ix_6de88b06; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6de88b06 ON layout USING btree (groupid, privatelayout, parentlayoutid);


--
-- TOC entry 2748 (class 1259 OID 5291072)
-- Dependencies: 1926 1926
-- Name: ix_6e1764f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6e1764f ON scframeworkversion USING btree (groupid, active_);


--
-- TOC entry 2296 (class 1259 OID 5290777)
-- Dependencies: 1846
-- Name: ix_6edb9600; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6edb9600 ON announcementsdelivery USING btree (userid);


--
-- TOC entry 2885 (class 1259 OID 5291157)
-- Dependencies: 1952 1952
-- Name: ix_6eec675e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6eec675e ON tasksproposal USING btree (groupid, userid);


--
-- TOC entry 2900 (class 1259 OID 5291180)
-- Dependencies: 1954 1954
-- Name: ix_6ef03e4e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_6ef03e4e ON user_ USING btree (companyid, defaultuser);


--
-- TOC entry 2772 (class 1259 OID 5291085)
-- Dependencies: 1931
-- Name: ix_7020130f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7020130f ON scproductversion USING btree (directdownloadurl);


--
-- TOC entry 2548 (class 1259 OID 5290949)
-- Dependencies: 1887 1887
-- Name: ix_705f5aa3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_705f5aa3 ON layout USING btree (groupid, privatelayout);


--
-- TOC entry 2894 (class 1259 OID 5291159)
-- Dependencies: 1953 1953
-- Name: ix_70afea01; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_70afea01 ON tasksreview USING btree (proposalid, stage);


--
-- TOC entry 2549 (class 1259 OID 5290951)
-- Dependencies: 1887 1887 1887
-- Name: ix_7162c27c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_7162c27c ON layout USING btree (groupid, privatelayout, layoutid);


--
-- TOC entry 2663 (class 1259 OID 5291023)
-- Dependencies: 1908 1908 1908
-- Name: ix_7171b2e8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_7171b2e8 ON pluginsetting USING btree (companyid, pluginid, plugintype);


--
-- TOC entry 2371 (class 1259 OID 5290824)
-- Dependencies: 1859
-- Name: ix_717b97e1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_717b97e1 ON country USING btree (a2);


--
-- TOC entry 2372 (class 1259 OID 5290825)
-- Dependencies: 1859
-- Name: ix_717b9ba2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_717b9ba2 ON country USING btree (a3);


--
-- TOC entry 2722 (class 1259 OID 5291053)
-- Dependencies: 1921
-- Name: ix_717fdd47; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_717fdd47 ON resourcecode USING btree (companyid);


--
-- TOC entry 2289 (class 1259 OID 5290773)
-- Dependencies: 1845 1845 1845
-- Name: ix_71cb1123; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_71cb1123 ON address USING btree (companyid, classnameid, classpk);


--
-- TOC entry 2312 (class 1259 OID 5290785)
-- Dependencies: 1849
-- Name: ix_72ef6041; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_72ef6041 ON blogsentry USING btree (companyid);


--
-- TOC entry 2761 (class 1259 OID 5291078)
-- Dependencies: 1929
-- Name: ix_72f87291; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_72f87291 ON scproductentry USING btree (groupid);


--
-- TOC entry 2762 (class 1259 OID 5291080)
-- Dependencies: 1929 1929
-- Name: ix_7311e812; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7311e812 ON scproductentry USING btree (repogroupid, repoartifactid);


--
-- TOC entry 2777 (class 1259 OID 5291087)
-- Dependencies: 1932
-- Name: ix_7338606f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7338606f ON servicecomponent USING btree (buildnamespace);


--
-- TOC entry 2454 (class 1259 OID 5290880)
-- Dependencies: 1873
-- Name: ix_75267dca; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_75267dca ON groups_orgs USING btree (groupid);


--
-- TOC entry 2592 (class 1259 OID 5290981)
-- Dependencies: 1894
-- Name: ix_75b95071; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_75b95071 ON mbmessage USING btree (threadid);


--
-- TOC entry 3012 (class 1259 OID 5291290)
-- Dependencies: 1975
-- Name: ix_75c012f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_75c012f ON wol_svnrepository USING btree (url);


--
-- TOC entry 2968 (class 1259 OID 5291209)
-- Dependencies: 1968 1968
-- Name: ix_7609b2ae; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_7609b2ae ON wikinode USING btree (uuid_, groupid);


--
-- TOC entry 2494 (class 1259 OID 5290913)
-- Dependencies: 1880 1880
-- Name: ix_76186981; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_76186981 ON journalarticle USING btree (resourceprimkey, approved);


--
-- TOC entry 2901 (class 1259 OID 5291185)
-- Dependencies: 1954
-- Name: ix_762f63c6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_762f63c6 ON user_ USING btree (emailaddress);


--
-- TOC entry 2541 (class 1259 OID 5290939)
-- Dependencies: 1886
-- Name: ix_77923653; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_77923653 ON journaltemplate USING btree (groupid);


--
-- TOC entry 2855 (class 1259 OID 5291138)
-- Dependencies: 1945 1945 1945
-- Name: ix_786d171a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_786d171a ON subscription USING btree (companyid, classnameid, classpk);


--
-- TOC entry 3004 (class 1259 OID 5291286)
-- Dependencies: 1973
-- Name: ix_79aebab6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_79aebab6 ON wol_meetupsentry USING btree (companyid);


--
-- TOC entry 2578 (class 1259 OID 5290968)
-- Dependencies: 1892
-- Name: ix_79d0120b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_79d0120b ON mbdiscussion USING btree (classnameid);


--
-- TOC entry 2739 (class 1259 OID 5291066)
-- Dependencies: 1924
-- Name: ix_7a3619c6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7a3619c6 ON roles_permissions USING btree (permissionid);


--
-- TOC entry 2516 (class 1259 OID 5290927)
-- Dependencies: 1883 1883 1883 1883
-- Name: ix_7acc74c9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7acc74c9 ON journalcontentsearch USING btree (groupid, privatelayout, layoutid, portletid);


--
-- TOC entry 2602 (class 1259 OID 5290989)
-- Dependencies: 1895
-- Name: ix_7b2917be; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7b2917be ON mbmessageflag USING btree (userid);


--
-- TOC entry 2418 (class 1259 OID 5290857)
-- Dependencies: 1867
-- Name: ix_7b43cd8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7b43cd8 ON emailaddress USING btree (userid);


--
-- TOC entry 2448 (class 1259 OID 5290879)
-- Dependencies: 1872 1872
-- Name: ix_7b590a7a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7b590a7a ON group_ USING btree (type_, active_);


--
-- TOC entry 2517 (class 1259 OID 5290925)
-- Dependencies: 1883 1883 1883
-- Name: ix_7cc7d73e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7cc7d73e ON journalcontentsearch USING btree (groupid, privatelayout, articleid);


--
-- TOC entry 2930 (class 1259 OID 5291191)
-- Dependencies: 1959
-- Name: ix_7ef4ec0e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7ef4ec0e ON users_orgs USING btree (organizationid);


--
-- TOC entry 2337 (class 1259 OID 5290805)
-- Dependencies: 1852
-- Name: ix_7f703619; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7f703619 ON bookmarksfolder USING btree (groupid);


--
-- TOC entry 2886 (class 1259 OID 5291156)
-- Dependencies: 1952
-- Name: ix_7fb27324; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_7fb27324 ON tasksproposal USING btree (groupid);


--
-- TOC entry 2255 (class 1259 OID 5289949)
-- Dependencies: 1834 1834
-- Name: ix_8040c593; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8040c593 ON quartz_triggers USING btree (trigger_state, next_fire_time);


--
-- TOC entry 2275 (class 1259 OID 5289950)
-- Dependencies: 1841
-- Name: ix_804154af; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_804154af ON quartz_fired_triggers USING btree (instance_name);


--
-- TOC entry 2683 (class 1259 OID 5291033)
-- Dependencies: 1912
-- Name: ix_80cc9508; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_80cc9508 ON portlet USING btree (companyid);


--
-- TOC entry 2845 (class 1259 OID 5291132)
-- Dependencies: 1944
-- Name: ix_80f7a9c2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_80f7a9c2 ON socialrequest USING btree (userid);


--
-- TOC entry 2656 (class 1259 OID 5291020)
-- Dependencies: 1907 1907 1907 1907
-- Name: ix_812ce07a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_812ce07a ON phone USING btree (companyid, classnameid, classpk, primary_);


--
-- TOC entry 2313 (class 1259 OID 5290787)
-- Dependencies: 1849
-- Name: ix_81a50303; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_81a50303 ON blogsentry USING btree (groupid);


--
-- TOC entry 2425 (class 1259 OID 5290861)
-- Dependencies: 1869 1869
-- Name: ix_81efbff5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_81efbff5 ON expandorow USING btree (tableid, classpk);


--
-- TOC entry 2718 (class 1259 OID 5291051)
-- Dependencies: 1920
-- Name: ix_81f2db09; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_81f2db09 ON resourceaction USING btree (name);


--
-- TOC entry 2323 (class 1259 OID 5290797)
-- Dependencies: 1850 1850
-- Name: ix_82254c25; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_82254c25 ON blogsstatsuser USING btree (groupid, userid);


--
-- TOC entry 2825 (class 1259 OID 5291110)
-- Dependencies: 1942
-- Name: ix_82e39a0c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_82e39a0c ON socialactivity USING btree (classnameid);


--
-- TOC entry 2626 (class 1259 OID 5291007)
-- Dependencies: 1899
-- Name: ix_834bceb6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_834bceb6 ON organization_ USING btree (companyid);


--
-- TOC entry 2773 (class 1259 OID 5291086)
-- Dependencies: 1931
-- Name: ix_8377a211; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8377a211 ON scproductversion USING btree (productentryid);


--
-- TOC entry 3008 (class 1259 OID 5291287)
-- Dependencies: 1974
-- Name: ix_83877f55; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_83877f55 ON wol_meetupsregistration USING btree (meetupsentryid);


--
-- TOC entry 2462 (class 1259 OID 5290884)
-- Dependencies: 1875
-- Name: ix_84471fd2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_84471fd2 ON groups_roles USING btree (groupid);


--
-- TOC entry 2609 (class 1259 OID 5290995)
-- Dependencies: 1896
-- Name: ix_847f92b5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_847f92b5 ON mbstatsuser USING btree (userid);


--
-- TOC entry 2495 (class 1259 OID 5290909)
-- Dependencies: 1880 1880 1880
-- Name: ix_85c52eec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_85c52eec ON journalarticle USING btree (groupid, articleid, version);


--
-- TOC entry 3017 (class 1259 OID 5291292)
-- Dependencies: 1976
-- Name: ix_8645f460; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8645f460 ON wol_svnrevision USING btree (svnuserid);


--
-- TOC entry 2916 (class 1259 OID 5291168)
-- Dependencies: 1956 1956
-- Name: ix_871412df; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_871412df ON usergrouprole USING btree (groupid, roleid);


--
-- TOC entry 2530 (class 1259 OID 5290936)
-- Dependencies: 1885
-- Name: ix_8831e4fc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8831e4fc ON journalstructure USING btree (structureid);


--
-- TOC entry 2917 (class 1259 OID 5291169)
-- Dependencies: 1956
-- Name: ix_887a2c95; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_887a2c95 ON usergrouprole USING btree (roleid);


--
-- TOC entry 2918 (class 1259 OID 5291170)
-- Dependencies: 1956
-- Name: ix_887be56a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_887be56a ON usergrouprole USING btree (userid);


--
-- TOC entry 2510 (class 1259 OID 5290922)
-- Dependencies: 1882 1882
-- Name: ix_88df994a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_88df994a ON journalarticleresource USING btree (groupid, articleid);


--
-- TOC entry 2977 (class 1259 OID 5291220)
-- Dependencies: 1969 1969
-- Name: ix_899d3dfb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_899d3dfb ON wikipage USING btree (uuid_, groupid);


--
-- TOC entry 2621 (class 1259 OID 5290999)
-- Dependencies: 1898
-- Name: ix_8a1cc4b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8a1cc4b ON membershiprequest USING btree (groupid);


--
-- TOC entry 2567 (class 1259 OID 5290961)
-- Dependencies: 1890 1890
-- Name: ix_8abc4e3b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_8abc4e3b ON mbban USING btree (groupid, banuserid);


--
-- TOC entry 2934 (class 1259 OID 5291193)
-- Dependencies: 1960
-- Name: ix_8ae58a91; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8ae58a91 ON users_permissions USING btree (permissionid);


--
-- TOC entry 2993 (class 1259 OID 5291241)
-- Dependencies: 1971 1971
-- Name: ix_8be273a4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8be273a4 ON chat_entry USING btree (createdate, touserid);


--
-- TOC entry 2593 (class 1259 OID 5290984)
-- Dependencies: 1894 1894
-- Name: ix_8d12316e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_8d12316e ON mbmessage USING btree (uuid_, groupid);


--
-- TOC entry 2729 (class 1259 OID 5291058)
-- Dependencies: 1922 1922 1922 1922 1922
-- Name: ix_8d83d0ce; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_8d83d0ce ON resourcepermission USING btree (companyid, name, scope, primkey, roleid);


--
-- TOC entry 2496 (class 1259 OID 5290908)
-- Dependencies: 1880 1880 1880
-- Name: ix_8dbf1387; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8dbf1387 ON journalarticle USING btree (groupid, articleid, approved);


--
-- TOC entry 2497 (class 1259 OID 5290911)
-- Dependencies: 1880 1880
-- Name: ix_8deae14e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8deae14e ON journalarticle USING btree (groupid, templateid);


--
-- TOC entry 2688 (class 1259 OID 5291039)
-- Dependencies: 1913 1913 1913 1913
-- Name: ix_8e71167f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8e71167f ON portletitem USING btree (groupid, portletid, classnameid, name);


--
-- TOC entry 2594 (class 1259 OID 5290980)
-- Dependencies: 1894 1894
-- Name: ix_8eb8c5ec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_8eb8c5ec ON mbmessage USING btree (groupid, userid);


--
-- TOC entry 2826 (class 1259 OID 5291114)
-- Dependencies: 1942 1942 1942 1942 1942 1942 1942
-- Name: ix_8f32dec9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_8f32dec9 ON socialactivity USING btree (groupid, userid, createdate, classnameid, classpk, type_, receiveruserid);


--
-- TOC entry 2383 (class 1259 OID 5290830)
-- Dependencies: 1862 1862
-- Name: ix_8f6c75d0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_8f6c75d0 ON dlfileentry USING btree (folderid, name);


--
-- TOC entry 2408 (class 1259 OID 5290849)
-- Dependencies: 1866 1866 1866
-- Name: ix_902fd874; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_902fd874 ON dlfolder USING btree (groupid, parentfolderid, name);


--
-- TOC entry 2798 (class 1259 OID 5291100)
-- Dependencies: 1937
-- Name: ix_903dc750; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_903dc750 ON shoppingitem USING btree (largeimageid);


--
-- TOC entry 2324 (class 1259 OID 5290794)
-- Dependencies: 1850 1850
-- Name: ix_90cda39a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_90cda39a ON blogsstatsuser USING btree (companyid, entrycount);


--
-- TOC entry 2434 (class 1259 OID 5290867)
-- Dependencies: 1871
-- Name: ix_9112a7a0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9112a7a0 ON expandovalue USING btree (rowid_);


--
-- TOC entry 2610 (class 1259 OID 5290994)
-- Dependencies: 1896 1896
-- Name: ix_9168e2c9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_9168e2c9 ON mbstatsuser USING btree (groupid, userid);


--
-- TOC entry 2969 (class 1259 OID 5291207)
-- Dependencies: 1968 1968
-- Name: ix_920cd8b1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_920cd8b1 ON wikinode USING btree (groupid, name);


--
-- TOC entry 2290 (class 1259 OID 5290775)
-- Dependencies: 1845 1845 1845 1845
-- Name: ix_9226dbb4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9226dbb4 ON address USING btree (companyid, classnameid, classpk, primary_);


--
-- TOC entry 2291 (class 1259 OID 5290774)
-- Dependencies: 1845 1845 1845 1845
-- Name: ix_923bd178; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_923bd178 ON address USING btree (companyid, classnameid, classpk, mailing);


--
-- TOC entry 2498 (class 1259 OID 5290906)
-- Dependencies: 1880
-- Name: ix_9356f865; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9356f865 ON journalarticle USING btree (groupid);


--
-- TOC entry 2292 (class 1259 OID 5290771)
-- Dependencies: 1845
-- Name: ix_93d5ad4e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_93d5ad4e ON address USING btree (companyid);


--
-- TOC entry 2780 (class 1259 OID 5291090)
-- Dependencies: 1933
-- Name: ix_941ba8c3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_941ba8c3 ON shard USING btree (name);


--
-- TOC entry 2836 (class 1259 OID 5291120)
-- Dependencies: 1943 1943
-- Name: ix_95135d1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_95135d1c ON socialrelation USING btree (companyid, type_);


--
-- TOC entry 2616 (class 1259 OID 5290998)
-- Dependencies: 1897
-- Name: ix_95c0ea45; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_95c0ea45 ON mbthread USING btree (groupid);


--
-- TOC entry 2338 (class 1259 OID 5290806)
-- Dependencies: 1852 1852
-- Name: ix_967799c0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_967799c0 ON bookmarksfolder USING btree (groupid, parentfolderid);


--
-- TOC entry 2689 (class 1259 OID 5291035)
-- Dependencies: 1913 1913
-- Name: ix_96bdd537; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_96bdd537 ON portletitem USING btree (groupid, classnameid);


--
-- TOC entry 2961 (class 1259 OID 5291200)
-- Dependencies: 1967
-- Name: ix_96f07007; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_96f07007 ON website USING btree (companyid);


--
-- TOC entry 2360 (class 1259 OID 5290821)
-- Dependencies: 1856
-- Name: ix_975996c0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_975996c0 ON company USING btree (virtualhost);


--
-- TOC entry 2902 (class 1259 OID 5291183)
-- Dependencies: 1954 1954
-- Name: ix_9782ad88; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_9782ad88 ON user_ USING btree (companyid, userid);


--
-- TOC entry 2956 (class 1259 OID 5291199)
-- Dependencies: 1966 1966
-- Name: ix_97dfa146; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_97dfa146 ON webdavprops USING btree (classnameid, classpk);


--
-- TOC entry 2763 (class 1259 OID 5291079)
-- Dependencies: 1929 1929
-- Name: ix_98e6a9cb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_98e6a9cb ON scproductentry USING btree (groupid, userid);


--
-- TOC entry 2256 (class 1259 OID 5289948)
-- Dependencies: 1834
-- Name: ix_9955efb5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9955efb5 ON quartz_triggers USING btree (trigger_state);


--
-- TOC entry 2978 (class 1259 OID 5291216)
-- Dependencies: 1969 1969
-- Name: ix_997eedd2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_997eedd2 ON wikipage USING btree (nodeid, title);


--
-- TOC entry 2657 (class 1259 OID 5291019)
-- Dependencies: 1907 1907 1907
-- Name: ix_9a53569; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9a53569 ON phone USING btree (companyid, classnameid, classpk);


--
-- TOC entry 2472 (class 1259 OID 5290891)
-- Dependencies: 1877 1877 1877
-- Name: ix_9bbafb1e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_9bbafb1e ON igfolder USING btree (groupid, parentfolderid, name);


--
-- TOC entry 2979 (class 1259 OID 5291219)
-- Dependencies: 1969
-- Name: ix_9c0e478f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9c0e478f ON wikipage USING btree (uuid_);


--
-- TOC entry 2307 (class 1259 OID 5290783)
-- Dependencies: 1848
-- Name: ix_9c7eb9f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9c7eb9f ON announcementsflag USING btree (entryid);


--
-- TOC entry 2402 (class 1259 OID 5290844)
-- Dependencies: 1865 1865
-- Name: ix_9cd91db6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9cd91db6 ON dlfileversion USING btree (folderid, name);


--
-- TOC entry 2435 (class 1259 OID 5290866)
-- Dependencies: 1871 1871
-- Name: ix_9ddd21e5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_9ddd21e5 ON expandovalue USING btree (columnid, rowid_);


--
-- TOC entry 2879 (class 1259 OID 5291153)
-- Dependencies: 1951 1951
-- Name: ix_9f26308a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9f26308a ON tagsvocabulary USING btree (groupid, folksonomy);


--
-- TOC entry 2658 (class 1259 OID 5291017)
-- Dependencies: 1907
-- Name: ix_9f704a14; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9f704a14 ON phone USING btree (companyid);


--
-- TOC entry 2673 (class 1259 OID 5291027)
-- Dependencies: 1910
-- Name: ix_9ff342ea; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_9ff342ea ON pollsquestion USING btree (groupid);


--
-- TOC entry 2611 (class 1259 OID 5290992)
-- Dependencies: 1896
-- Name: ix_a00a898f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a00a898f ON mbstatsuser USING btree (groupid);


--
-- TOC entry 2863 (class 1259 OID 5291145)
-- Dependencies: 1947
-- Name: ix_a02a8023; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a02a8023 ON tagsassets_tagsentries USING btree (entryid);


--
-- TOC entry 2903 (class 1259 OID 5291187)
-- Dependencies: 1954
-- Name: ix_a18034a4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a18034a4 ON user_ USING btree (portraitid);


--
-- TOC entry 2980 (class 1259 OID 5291210)
-- Dependencies: 1969
-- Name: ix_a2001730; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a2001730 ON wikipage USING btree (format);


--
-- TOC entry 2659 (class 1259 OID 5291018)
-- Dependencies: 1907 1907
-- Name: ix_a2e4afba; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a2e4afba ON phone USING btree (companyid, classnameid);


--
-- TOC entry 2723 (class 1259 OID 5291054)
-- Dependencies: 1921 1921 1921
-- Name: ix_a32c097e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_a32c097e ON resourcecode USING btree (companyid, name, scope);


--
-- TOC entry 2730 (class 1259 OID 5291059)
-- Dependencies: 1922
-- Name: ix_a37a0588; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a37a0588 ON resourcepermission USING btree (roleid);


--
-- TOC entry 2558 (class 1259 OID 5290955)
-- Dependencies: 1888
-- Name: ix_a40b8bec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a40b8bec ON layoutset USING btree (groupid);


--
-- TOC entry 2631 (class 1259 OID 5291002)
-- Dependencies: 1900
-- Name: ix_a425f71a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a425f71a ON orggrouppermission USING btree (groupid);


--
-- TOC entry 2603 (class 1259 OID 5290986)
-- Dependencies: 1895 1895
-- Name: ix_a6973a8e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a6973a8e ON mbmessageflag USING btree (messageid, flag);


--
-- TOC entry 2704 (class 1259 OID 5291047)
-- Dependencies: 1916 1916
-- Name: ix_a6e99284; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_a6e99284 ON ratingsstats USING btree (classnameid, classpk);


--
-- TOC entry 2302 (class 1259 OID 5290779)
-- Dependencies: 1847 1847
-- Name: ix_a6ef0b81; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a6ef0b81 ON announcementsentry USING btree (classnameid, classpk);


--
-- TOC entry 2595 (class 1259 OID 5290982)
-- Dependencies: 1894 1894
-- Name: ix_a7038cd7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a7038cd7 ON mbmessage USING btree (threadid, parentmessageid);


--
-- TOC entry 2409 (class 1259 OID 5290846)
-- Dependencies: 1866
-- Name: ix_a74db14c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a74db14c ON dlfolder USING btree (companyid);


--
-- TOC entry 2827 (class 1259 OID 5291111)
-- Dependencies: 1942 1942
-- Name: ix_a853c757; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a853c757 ON socialactivity USING btree (classnameid, classpk);


--
-- TOC entry 2734 (class 1259 OID 5291063)
-- Dependencies: 1923 1923 1923
-- Name: ix_a88e424e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_a88e424e ON role_ USING btree (companyid, classnameid, classpk);


--
-- TOC entry 2421 (class 1259 OID 5290858)
-- Dependencies: 1868
-- Name: ix_a8c0cbe8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a8c0cbe8 ON expandocolumn USING btree (tableid);


--
-- TOC entry 2846 (class 1259 OID 5291129)
-- Dependencies: 1944
-- Name: ix_a90fe5a0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a90fe5a0 ON socialrequest USING btree (companyid);


--
-- TOC entry 2384 (class 1259 OID 5290831)
-- Dependencies: 1862 1862
-- Name: ix_a9951f17; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a9951f17 ON dlfileentry USING btree (folderid, title);


--
-- TOC entry 2904 (class 1259 OID 5291186)
-- Dependencies: 1954
-- Name: ix_a9ed7dd3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_a9ed7dd3 ON user_ USING btree (openid);


--
-- TOC entry 2724 (class 1259 OID 5291055)
-- Dependencies: 1921
-- Name: ix_aacaff40; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_aacaff40 ON resourcecode USING btree (name);


--
-- TOC entry 2635 (class 1259 OID 5291005)
-- Dependencies: 1901
-- Name: ix_ab044d1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ab044d1c ON orggrouprole USING btree (roleid);


--
-- TOC entry 2860 (class 1259 OID 5291143)
-- Dependencies: 1946
-- Name: ix_ab3d8bcb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ab3d8bcb ON tagsasset USING btree (companyid);


--
-- TOC entry 2847 (class 1259 OID 5291135)
-- Dependencies: 1944 1944
-- Name: ix_ab5906a8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ab5906a8 ON socialrequest USING btree (userid, status);


--
-- TOC entry 2531 (class 1259 OID 5290935)
-- Dependencies: 1885 1885
-- Name: ix_ab6e9996; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_ab6e9996 ON journalstructure USING btree (groupid, structureid);


--
-- TOC entry 2293 (class 1259 OID 5290772)
-- Dependencies: 1845 1845
-- Name: ix_abd7dac0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_abd7dac0 ON address USING btree (companyid, classnameid);


--
-- TOC entry 2994 (class 1259 OID 5291239)
-- Dependencies: 1971 1971
-- Name: ix_ad559d93; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ad559d93 ON chat_entry USING btree (createdate, fromuserid);


--
-- TOC entry 2583 (class 1259 OID 5290972)
-- Dependencies: 1893
-- Name: ix_ada16fe7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_ada16fe7 ON mbmailinglist USING btree (categoryid);


--
-- TOC entry 2276 (class 1259 OID 5289952)
-- Dependencies: 1841
-- Name: ix_adee6a17; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_adee6a17 ON quartz_fired_triggers USING btree (job_name);


--
-- TOC entry 2768 (class 1259 OID 5291081)
-- Dependencies: 1930
-- Name: ix_ae8224cc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ae8224cc ON scproductscreenshot USING btree (fullimageid);


--
-- TOC entry 2473 (class 1259 OID 5290893)
-- Dependencies: 1877 1877
-- Name: ix_b10efd68; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_b10efd68 ON igfolder USING btree (uuid_, groupid);


--
-- TOC entry 2596 (class 1259 OID 5290978)
-- Dependencies: 1894
-- Name: ix_b1432d30; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b1432d30 ON mbmessage USING btree (companyid);


--
-- TOC entry 2864 (class 1259 OID 5291144)
-- Dependencies: 1947
-- Name: ix_b22f3a1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b22f3a1 ON tagsassets_tagsentries USING btree (assetid);


--
-- TOC entry 2354 (class 1259 OID 5290817)
-- Dependencies: 1855
-- Name: ix_b27a301f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_b27a301f ON classname_ USING btree (value);


--
-- TOC entry 2436 (class 1259 OID 5290864)
-- Dependencies: 1871 1871
-- Name: ix_b29fef17; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b29fef17 ON expandovalue USING btree (classnameid, classpk);


--
-- TOC entry 2518 (class 1259 OID 5290926)
-- Dependencies: 1883 1883 1883
-- Name: ix_b3b318dc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b3b318dc ON journalcontentsearch USING btree (groupid, privatelayout, layoutid);


--
-- TOC entry 2701 (class 1259 OID 5291046)
-- Dependencies: 1915 1915 1915
-- Name: ix_b47e3c11; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_b47e3c11 ON ratingsentry USING btree (userid, classnameid, classpk);


--
-- TOC entry 2970 (class 1259 OID 5291206)
-- Dependencies: 1968
-- Name: ix_b480a672; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b480a672 ON wikinode USING btree (groupid);


--
-- TOC entry 2430 (class 1259 OID 5290862)
-- Dependencies: 1870 1870
-- Name: ix_b5ae8a85; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b5ae8a85 ON expandotable USING btree (companyid, classnameid);


--
-- TOC entry 2579 (class 1259 OID 5290970)
-- Dependencies: 1892
-- Name: ix_b5ca2dc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_b5ca2dc ON mbdiscussion USING btree (threadid);


--
-- TOC entry 2816 (class 1259 OID 5291109)
-- Dependencies: 1941
-- Name: ix_b5f82c7a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b5f82c7a ON shoppingorderitem USING btree (orderid);


--
-- TOC entry 2329 (class 1259 OID 5290802)
-- Dependencies: 1851
-- Name: ix_b670ba39; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b670ba39 ON bookmarksentry USING btree (uuid_);


--
-- TOC entry 2437 (class 1259 OID 5290872)
-- Dependencies: 1871 1871
-- Name: ix_b71e92d5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b71e92d5 ON expandovalue USING btree (tableid, rowid_);


--
-- TOC entry 3002 (class 1259 OID 5291246)
-- Dependencies: 1972 1972
-- Name: ix_b723b792; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b723b792 ON chat_status USING btree (modifieddate, online_);


--
-- TOC entry 2314 (class 1259 OID 5290791)
-- Dependencies: 1849 1849 1849 1849
-- Name: ix_b88e740e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b88e740e ON blogsentry USING btree (groupid, userid, displaydate, draft);


--
-- TOC entry 2664 (class 1259 OID 5291022)
-- Dependencies: 1908
-- Name: ix_b9746445; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b9746445 ON pluginsetting USING btree (companyid);


--
-- TOC entry 2532 (class 1259 OID 5290933)
-- Dependencies: 1885
-- Name: ix_b97f5608; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_b97f5608 ON journalstructure USING btree (groupid);


--
-- TOC entry 2297 (class 1259 OID 5290778)
-- Dependencies: 1846 1846
-- Name: ix_ba4413d5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_ba4413d5 ON announcementsdelivery USING btree (userid, type_);


--
-- TOC entry 2277 (class 1259 OID 5289951)
-- Dependencies: 1841
-- Name: ix_bab9a1f7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_bab9a1f7 ON quartz_fired_triggers USING btree (job_group);


--
-- TOC entry 2390 (class 1259 OID 5290838)
-- Dependencies: 1863 1863
-- Name: ix_bafb116e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_bafb116e ON dlfilerank USING btree (groupid, userid);


--
-- TOC entry 2325 (class 1259 OID 5290798)
-- Dependencies: 1850
-- Name: ix_bb51f1d9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_bb51f1d9 ON blogsstatsuser USING btree (userid);


--
-- TOC entry 2570 (class 1259 OID 5290964)
-- Dependencies: 1891
-- Name: ix_bb870c11; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_bb870c11 ON mbcategory USING btree (groupid);


--
-- TOC entry 2449 (class 1259 OID 5290876)
-- Dependencies: 1872 1872 1872
-- Name: ix_bbca55b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_bbca55b ON group_ USING btree (companyid, livegroupid, name);


--
-- TOC entry 2550 (class 1259 OID 5290950)
-- Dependencies: 1887 1887 1887
-- Name: ix_bc2c4231; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_bc2c4231 ON layout USING btree (groupid, privatelayout, friendlyurl);


--
-- TOC entry 2385 (class 1259 OID 5290835)
-- Dependencies: 1862 1862
-- Name: ix_bc2e7e6a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_bc2e7e6a ON dlfileentry USING btree (uuid_, groupid);


--
-- TOC entry 2571 (class 1259 OID 5290963)
-- Dependencies: 1891
-- Name: ix_bc735dcf; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_bc735dcf ON mbcategory USING btree (companyid);


--
-- TOC entry 2481 (class 1259 OID 5290897)
-- Dependencies: 1878 1878
-- Name: ix_bcb13a3f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_bcb13a3f ON igimage USING btree (folderid, name);


--
-- TOC entry 2482 (class 1259 OID 5290899)
-- Dependencies: 1878 1878
-- Name: ix_be79e1e1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_be79e1e1 ON igimage USING btree (groupid, userid);


--
-- TOC entry 2943 (class 1259 OID 5291198)
-- Dependencies: 1962
-- Name: ix_be8102d6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_be8102d6 ON users_usergroups USING btree (userid);


--
-- TOC entry 2584 (class 1259 OID 5290971)
-- Dependencies: 1893
-- Name: ix_bfeb984f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_bfeb984f ON mbmailinglist USING btree (active_);


--
-- TOC entry 2315 (class 1259 OID 5290790)
-- Dependencies: 1849 1849
-- Name: ix_c07ca83d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c07ca83d ON blogsentry USING btree (groupid, userid);


--
-- TOC entry 2551 (class 1259 OID 5290948)
-- Dependencies: 1887
-- Name: ix_c099d61a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c099d61a ON layout USING btree (groupid);


--
-- TOC entry 2872 (class 1259 OID 5291148)
-- Dependencies: 1949
-- Name: ix_c134234; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c134234 ON tagsproperty USING btree (companyid);


--
-- TOC entry 2938 (class 1259 OID 5291195)
-- Dependencies: 1961
-- Name: ix_c19e5f31; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c19e5f31 ON users_roles USING btree (roleid);


--
-- TOC entry 2939 (class 1259 OID 5291196)
-- Dependencies: 1961
-- Name: ix_c1a01806; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c1a01806 ON users_roles USING btree (userid);


--
-- TOC entry 2348 (class 1259 OID 5290815)
-- Dependencies: 1854
-- Name: ix_c1ad2122; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c1ad2122 ON calevent USING btree (uuid_);


--
-- TOC entry 2604 (class 1259 OID 5290987)
-- Dependencies: 1895
-- Name: ix_c1c9a8fd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c1c9a8fd ON mbmessageflag USING btree (threadid);


--
-- TOC entry 2572 (class 1259 OID 5290966)
-- Dependencies: 1891
-- Name: ix_c2626edb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c2626edb ON mbcategory USING btree (uuid_);


--
-- TOC entry 2935 (class 1259 OID 5291194)
-- Dependencies: 1960
-- Name: ix_c26aa64d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c26aa64d ON users_permissions USING btree (userid);


--
-- TOC entry 2785 (class 1259 OID 5291091)
-- Dependencies: 1934
-- Name: ix_c28b41dc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c28b41dc ON shoppingcart USING btree (groupid);


--
-- TOC entry 2622 (class 1259 OID 5291000)
-- Dependencies: 1898 1898
-- Name: ix_c28c72ec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c28c72ec ON membershiprequest USING btree (groupid, statusid);


--
-- TOC entry 3009 (class 1259 OID 5291288)
-- Dependencies: 1974 1974
-- Name: ix_c28f993b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c28f993b ON wol_meetupsregistration USING btree (meetupsentryid, status);


--
-- TOC entry 2837 (class 1259 OID 5291121)
-- Dependencies: 1943
-- Name: ix_c31a64c6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c31a64c6 ON socialrelation USING btree (type_);


--
-- TOC entry 2645 (class 1259 OID 5291012)
-- Dependencies: 1904 1904
-- Name: ix_c3a17327; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c3a17327 ON passwordpolicyrel USING btree (classnameid, classpk);


--
-- TOC entry 2519 (class 1259 OID 5290928)
-- Dependencies: 1883 1883 1883 1883 1883
-- Name: ix_c3aa93b8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_c3aa93b8 ON journalcontentsearch USING btree (groupid, privatelayout, layoutid, portletid, articleid);


--
-- TOC entry 2457 (class 1259 OID 5290882)
-- Dependencies: 1874
-- Name: ix_c48736b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c48736b ON groups_permissions USING btree (groupid);


--
-- TOC entry 2926 (class 1259 OID 5291189)
-- Dependencies: 1958
-- Name: ix_c4f9e699; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c4f9e699 ON users_groups USING btree (groupid);


--
-- TOC entry 2597 (class 1259 OID 5290983)
-- Dependencies: 1894
-- Name: ix_c57b16bc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c57b16bc ON mbmessage USING btree (uuid_);


--
-- TOC entry 2905 (class 1259 OID 5291182)
-- Dependencies: 1954 1954
-- Name: ix_c5806019; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_c5806019 ON user_ USING btree (companyid, screenname);


--
-- TOC entry 2694 (class 1259 OID 5291042)
-- Dependencies: 1914 1914 1914 1914
-- Name: ix_c7057ff7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_c7057ff7 ON portletpreferences USING btree (ownerid, ownertype, plid, portletid);


--
-- TOC entry 3020 (class 1259 OID 5291296)
-- Dependencies: 1977
-- Name: ix_c7f3d45d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c7f3d45d ON wol_wallentry USING btree (userid);


--
-- TOC entry 2552 (class 1259 OID 5290946)
-- Dependencies: 1887
-- Name: ix_c7fbc998; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c7fbc998 ON layout USING btree (companyid);


--
-- TOC entry 2981 (class 1259 OID 5291211)
-- Dependencies: 1969
-- Name: ix_c8a9c476; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c8a9c476 ON wikipage USING btree (nodeid);


--
-- TOC entry 2799 (class 1259 OID 5291098)
-- Dependencies: 1937
-- Name: ix_c8eacf2e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c8eacf2e ON shoppingitem USING btree (categoryid);


--
-- TOC entry 2749 (class 1259 OID 5291070)
-- Dependencies: 1926
-- Name: ix_c98c0d78; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_c98c0d78 ON scframeworkversion USING btree (companyid);


--
-- TOC entry 2533 (class 1259 OID 5290934)
-- Dependencies: 1885 1885
-- Name: ix_ca0bd48c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ca0bd48c ON journalstructure USING btree (groupid, parentstructureid);


--
-- TOC entry 2396 (class 1259 OID 5290841)
-- Dependencies: 1864 1864
-- Name: ix_ca2708a2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ca2708a2 ON dlfileshortcut USING btree (tofolderid, toname);


--
-- TOC entry 2438 (class 1259 OID 5290870)
-- Dependencies: 1871 1871
-- Name: ix_ca9afb7c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ca9afb7c ON expandovalue USING btree (tableid, columnid);


--
-- TOC entry 3021 (class 1259 OID 5291294)
-- Dependencies: 1977
-- Name: ix_cb1e7ce7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_cb1e7ce7 ON wol_wallentry USING btree (groupid);


--
-- TOC entry 2617 (class 1259 OID 5290996)
-- Dependencies: 1897
-- Name: ix_cb854772; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_cb854772 ON mbthread USING btree (categoryid);


--
-- TOC entry 2410 (class 1259 OID 5290851)
-- Dependencies: 1866
-- Name: ix_cbc408d8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_cbc408d8 ON dlfolder USING btree (uuid_);


--
-- TOC entry 2735 (class 1259 OID 5291065)
-- Dependencies: 1923 1923
-- Name: ix_cbe204; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_cbe204 ON role_ USING btree (type_, subtype);


--
-- TOC entry 2848 (class 1259 OID 5291134)
-- Dependencies: 1944 1944 1944 1944 1944
-- Name: ix_cc86a444; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_cc86a444 ON socialrequest USING btree (userid, classnameid, classpk, type_, status);


--
-- TOC entry 2391 (class 1259 OID 5290836)
-- Dependencies: 1863 1863 1863 1863
-- Name: ix_ce705d48; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_ce705d48 ON dlfilerank USING btree (companyid, userid, folderid, name);


--
-- TOC entry 2450 (class 1259 OID 5290873)
-- Dependencies: 1872 1872 1872
-- Name: ix_d0d5e397; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_d0d5e397 ON group_ USING btree (companyid, classnameid, classpk);


--
-- TOC entry 2605 (class 1259 OID 5290985)
-- Dependencies: 1895
-- Name: ix_d180d4ae; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d180d4ae ON mbmessageflag USING btree (messageid);


--
-- TOC entry 2922 (class 1259 OID 5291174)
-- Dependencies: 1957 1957
-- Name: ix_d1c44a6e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_d1c44a6e ON useridmapper USING btree (userid, type_);


--
-- TOC entry 2800 (class 1259 OID 5291101)
-- Dependencies: 1937
-- Name: ix_d217ab30; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d217ab30 ON shoppingitem USING btree (mediumimageid);


--
-- TOC entry 2439 (class 1259 OID 5290871)
-- Dependencies: 1871 1871 1871
-- Name: ix_d27b03e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_d27b03e7 ON expandovalue USING btree (tableid, columnid, classpk);


--
-- TOC entry 2695 (class 1259 OID 5291044)
-- Dependencies: 1914 1914
-- Name: ix_d340db76; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d340db76 ON portletpreferences USING btree (plid, portletid);


--
-- TOC entry 2849 (class 1259 OID 5291128)
-- Dependencies: 1944 1944 1944 1944 1944
-- Name: ix_d3425487; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d3425487 ON socialrequest USING btree (classnameid, classpk, type_, receiveruserid, status);


--
-- TOC entry 2483 (class 1259 OID 5290901)
-- Dependencies: 1878
-- Name: ix_d3d32126; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d3d32126 ON igimage USING btree (smallimageid);


--
-- TOC entry 2426 (class 1259 OID 5290860)
-- Dependencies: 1869
-- Name: ix_d3f5d7ae; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d3f5d7ae ON expandorow USING btree (tableid);


--
-- TOC entry 2507 (class 1259 OID 5290920)
-- Dependencies: 1881
-- Name: ix_d4121315; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d4121315 ON journalarticleimage USING btree (tempimage);


--
-- TOC entry 2303 (class 1259 OID 5290781)
-- Dependencies: 1847
-- Name: ix_d49c2e66; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d49c2e66 ON announcementsentry USING btree (userid);


--
-- TOC entry 2679 (class 1259 OID 5291030)
-- Dependencies: 1911
-- Name: ix_d5df7b54; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d5df7b54 ON pollsvote USING btree (choiceid);


--
-- TOC entry 2690 (class 1259 OID 5291036)
-- Dependencies: 1913 1913 1913 1913
-- Name: ix_d699243f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d699243f ON portletitem USING btree (groupid, name, portletid, classnameid);


--
-- TOC entry 2349 (class 1259 OID 5290810)
-- Dependencies: 1854
-- Name: ix_d6fd9496; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d6fd9496 ON calevent USING btree (companyid);


--
-- TOC entry 2668 (class 1259 OID 5291025)
-- Dependencies: 1909 1909
-- Name: ix_d76dd2cf; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_d76dd2cf ON pollschoice USING btree (questionid, name);


--
-- TOC entry 2757 (class 1259 OID 5291076)
-- Dependencies: 1928
-- Name: ix_d7710a66; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d7710a66 ON sclicenses_scproductentries USING btree (productentryid);


--
-- TOC entry 2812 (class 1259 OID 5291107)
-- Dependencies: 1940
-- Name: ix_d7d6e87a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_d7d6e87a ON shoppingorder USING btree (number_);


--
-- TOC entry 2850 (class 1259 OID 5291131)
-- Dependencies: 1944 1944
-- Name: ix_d9380cb7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d9380cb7 ON socialrequest USING btree (receiveruserid, status);


--
-- TOC entry 2484 (class 1259 OID 5290895)
-- Dependencies: 1878
-- Name: ix_d9e0a34c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d9e0a34c ON igimage USING btree (custom2imageid);


--
-- TOC entry 2995 (class 1259 OID 5291240)
-- Dependencies: 1971 1971 1971
-- Name: ix_d9e49928; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_d9e49928 ON chat_entry USING btree (createdate, fromuserid, touserid);


--
-- TOC entry 2316 (class 1259 OID 5290788)
-- Dependencies: 1849 1849 1849
-- Name: ix_da53afd4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_da53afd4 ON blogsentry USING btree (groupid, displaydate, draft);


--
-- TOC entry 2781 (class 1259 OID 5291089)
-- Dependencies: 1933 1933
-- Name: ix_da5f4359; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_da5f4359 ON shard USING btree (classnameid, classpk);


--
-- TOC entry 2769 (class 1259 OID 5291083)
-- Dependencies: 1930 1930
-- Name: ix_da913a55; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_da913a55 ON scproductscreenshot USING btree (productentryid, priority);


--
-- TOC entry 2996 (class 1259 OID 5291238)
-- Dependencies: 1971
-- Name: ix_daef230f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_daef230f ON chat_entry USING btree (createdate);


--
-- TOC entry 2317 (class 1259 OID 5290789)
-- Dependencies: 1849 1849
-- Name: ix_db780a20; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_db780a20 ON blogsentry USING btree (groupid, urltitle);


--
-- TOC entry 2339 (class 1259 OID 5290808)
-- Dependencies: 1852 1852
-- Name: ix_dc2f8927; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_dc2f8927 ON bookmarksfolder USING btree (uuid_, groupid);


--
-- TOC entry 2794 (class 1259 OID 5291096)
-- Dependencies: 1936
-- Name: ix_dc60cfae; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_dc60cfae ON shoppingcoupon USING btree (code_);


--
-- TOC entry 2499 (class 1259 OID 5290905)
-- Dependencies: 1880
-- Name: ix_dff98523; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_dff98523 ON journalarticle USING btree (companyid);


--
-- TOC entry 2906 (class 1259 OID 5291188)
-- Dependencies: 1954
-- Name: ix_e0422bda; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e0422bda ON user_ USING btree (uuid_);


--
-- TOC entry 2740 (class 1259 OID 5291067)
-- Dependencies: 1924
-- Name: ix_e04e486d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e04e486d ON roles_permissions USING btree (roleid);


--
-- TOC entry 2880 (class 1259 OID 5291152)
-- Dependencies: 1951 1951
-- Name: ix_e0d51848; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e0d51848 ON tagsvocabulary USING btree (companyid, folksonomy);


--
-- TOC entry 2318 (class 1259 OID 5290786)
-- Dependencies: 1849 1849 1849
-- Name: ix_e0d90212; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e0d90212 ON blogsentry USING btree (companyid, displaydate, draft);


--
-- TOC entry 3003 (class 1259 OID 5291248)
-- Dependencies: 1972
-- Name: ix_e17ebd79; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_e17ebd79 ON chat_status USING btree (userid);


--
-- TOC entry 2330 (class 1259 OID 5290801)
-- Dependencies: 1851 1851
-- Name: ix_e2e9f129; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e2e9f129 ON bookmarksentry USING btree (groupid, userid);


--
-- TOC entry 2627 (class 1259 OID 5291008)
-- Dependencies: 1899 1899
-- Name: ix_e301bdf5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_e301bdf5 ON organization_ USING btree (companyid, name);


--
-- TOC entry 2948 (class 1259 OID 5291177)
-- Dependencies: 1963
-- Name: ix_e4efba8d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e4efba8d ON usertracker USING btree (userid);


--
-- TOC entry 2696 (class 1259 OID 5291041)
-- Dependencies: 1914 1914 1914
-- Name: ix_e4f13e6e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e4f13e6e ON portletpreferences USING btree (ownerid, ownertype, plid);


--
-- TOC entry 2331 (class 1259 OID 5290800)
-- Dependencies: 1851
-- Name: ix_e52ff7ef; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e52ff7ef ON bookmarksentry USING btree (groupid);


--
-- TOC entry 2397 (class 1259 OID 5290840)
-- Dependencies: 1864
-- Name: ix_e56ec6ad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e56ec6ad ON dlfileshortcut USING btree (folderid);


--
-- TOC entry 2485 (class 1259 OID 5290894)
-- Dependencies: 1878
-- Name: ix_e597322d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e597322d ON igimage USING btree (custom1imageid);


--
-- TOC entry 2923 (class 1259 OID 5291173)
-- Dependencies: 1957
-- Name: ix_e60ea987; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e60ea987 ON useridmapper USING btree (userid);


--
-- TOC entry 3022 (class 1259 OID 5291295)
-- Dependencies: 1977 1977
-- Name: ix_e65ffe21; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e65ffe21 ON wol_wallentry USING btree (groupid, userid);


--
-- TOC entry 2982 (class 1259 OID 5291217)
-- Dependencies: 1969 1969 1969
-- Name: ix_e745ea26; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e745ea26 ON wikipage USING btree (nodeid, title, head);


--
-- TOC entry 2342 (class 1259 OID 5290809)
-- Dependencies: 1853
-- Name: ix_e7b95510; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_e7b95510 ON browsertracker USING btree (userid);


--
-- TOC entry 2983 (class 1259 OID 5291212)
-- Dependencies: 1969 1969
-- Name: ix_e7f635ca; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e7f635ca ON wikipage USING btree (nodeid, head);


--
-- TOC entry 2542 (class 1259 OID 5290941)
-- Dependencies: 1886 1886
-- Name: ix_e802aa3c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_e802aa3c ON journaltemplate USING btree (groupid, templateid);


--
-- TOC entry 2585 (class 1259 OID 5290974)
-- Dependencies: 1893 1893
-- Name: ix_e858f170; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_e858f170 ON mbmailinglist USING btree (uuid_, groupid);


--
-- TOC entry 2744 (class 1259 OID 5291069)
-- Dependencies: 1925
-- Name: ix_e8d33ff9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e8d33ff9 ON scframeworkversi_scproductvers USING btree (productversionid);


--
-- TOC entry 2856 (class 1259 OID 5291141)
-- Dependencies: 1945 1945
-- Name: ix_e8f34171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e8f34171 ON subscription USING btree (userid, classnameid);


--
-- TOC entry 2691 (class 1259 OID 5291038)
-- Dependencies: 1913 1913 1913
-- Name: ix_e922d6c0; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_e922d6c0 ON portletitem USING btree (groupid, portletid, classnameid);


--
-- TOC entry 2486 (class 1259 OID 5290903)
-- Dependencies: 1878 1878
-- Name: ix_e97342d9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_e97342d9 ON igimage USING btree (uuid_, groupid);


--
-- TOC entry 2606 (class 1259 OID 5290990)
-- Dependencies: 1895 1895 1895
-- Name: ix_e9eb6194; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_e9eb6194 ON mbmessageflag USING btree (userid, messageid, flag);


--
-- TOC entry 2807 (class 1259 OID 5291104)
-- Dependencies: 1939
-- Name: ix_ea6fd516; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ea6fd516 ON shoppingitemprice USING btree (itemid);


--
-- TOC entry 2332 (class 1259 OID 5290803)
-- Dependencies: 1851 1851
-- Name: ix_eaa02a91; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_eaa02a91 ON bookmarksentry USING btree (uuid_, groupid);


--
-- TOC entry 2873 (class 1259 OID 5291149)
-- Dependencies: 1949 1949
-- Name: ix_eb974d08; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_eb974d08 ON tagsproperty USING btree (companyid, key_);


--
-- TOC entry 2736 (class 1259 OID 5291064)
-- Dependencies: 1923 1923
-- Name: ix_ebc931b8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_ebc931b8 ON role_ USING btree (companyid, name);


--
-- TOC entry 2361 (class 1259 OID 5290822)
-- Dependencies: 1856
-- Name: ix_ec00543c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_ec00543c ON company USING btree (webid);


--
-- TOC entry 2669 (class 1259 OID 5291024)
-- Dependencies: 1909
-- Name: ix_ec370f10; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ec370f10 ON pollschoice USING btree (questionid);


--
-- TOC entry 2458 (class 1259 OID 5290883)
-- Dependencies: 1874
-- Name: ix_ec97689d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ec97689d ON groups_permissions USING btree (permissionid);


--
-- TOC entry 2573 (class 1259 OID 5290965)
-- Dependencies: 1891 1891
-- Name: ix_ed292508; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ed292508 ON mbcategory USING btree (groupid, parentcategoryid);


--
-- TOC entry 2646 (class 1259 OID 5291013)
-- Dependencies: 1904 1904 1904
-- Name: ix_ed7cf243; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ed7cf243 ON passwordpolicyrel USING btree (passwordpolicyid, classnameid, classpk);


--
-- TOC entry 2719 (class 1259 OID 5291052)
-- Dependencies: 1920 1920
-- Name: ix_edb9986e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_edb9986e ON resourceaction USING btree (name, actionid);


--
-- TOC entry 2868 (class 1259 OID 5291146)
-- Dependencies: 1948 1948
-- Name: ix_ee55ed49; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ee55ed49 ON tagsentry USING btree (parententryid, vocabularyid);


--
-- TOC entry 2392 (class 1259 OID 5290839)
-- Dependencies: 1863
-- Name: ix_eed06670; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_eed06670 ON dlfilerank USING btree (userid);


--
-- TOC entry 2500 (class 1259 OID 5290914)
-- Dependencies: 1880
-- Name: ix_ef9b7028; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ef9b7028 ON journalarticle USING btree (smallimageid);


--
-- TOC entry 2501 (class 1259 OID 5290915)
-- Dependencies: 1880
-- Name: ix_f029602f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f029602f ON journalarticle USING btree (uuid_);


--
-- TOC entry 2440 (class 1259 OID 5290868)
-- Dependencies: 1871
-- Name: ix_f0566a77; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f0566a77 ON expandovalue USING btree (tableid);


--
-- TOC entry 2653 (class 1259 OID 5291016)
-- Dependencies: 1906
-- Name: ix_f090c113; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f090c113 ON permission_ USING btree (resourceid);


--
-- TOC entry 2838 (class 1259 OID 5291127)
-- Dependencies: 1943
-- Name: ix_f0ca24a5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f0ca24a5 ON socialrelation USING btree (uuid_);


--
-- TOC entry 2927 (class 1259 OID 5291190)
-- Dependencies: 1958
-- Name: ix_f10b6c6b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f10b6c6b ON users_groups USING btree (userid);


--
-- TOC entry 2697 (class 1259 OID 5291043)
-- Dependencies: 1914
-- Name: ix_f15c1c4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f15c1c4f ON portletpreferences USING btree (plid);


--
-- TOC entry 2660 (class 1259 OID 5291021)
-- Dependencies: 1907
-- Name: ix_f202b9ce; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f202b9ce ON phone USING btree (userid);


--
-- TOC entry 2411 (class 1259 OID 5290847)
-- Dependencies: 1866
-- Name: ix_f2ea1ace; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f2ea1ace ON dlfolder USING btree (groupid);


--
-- TOC entry 2674 (class 1259 OID 5291029)
-- Dependencies: 1910 1910
-- Name: ix_f3c9f36; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_f3c9f36 ON pollsquestion USING btree (uuid_, groupid);


--
-- TOC entry 2813 (class 1259 OID 5291108)
-- Dependencies: 1940
-- Name: ix_f474fd89; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f474fd89 ON shoppingorder USING btree (pptxnid);


--
-- TOC entry 2386 (class 1259 OID 5290832)
-- Dependencies: 1862
-- Name: ix_f4af5636; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f4af5636 ON dlfileentry USING btree (groupid);


--
-- TOC entry 2874 (class 1259 OID 5291151)
-- Dependencies: 1949 1949
-- Name: ix_f505253d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_f505253d ON tagsproperty USING btree (entryid, key_);


--
-- TOC entry 2350 (class 1259 OID 5290814)
-- Dependencies: 1854
-- Name: ix_f6006202; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f6006202 ON calevent USING btree (remindby);


--
-- TOC entry 2474 (class 1259 OID 5290892)
-- Dependencies: 1877
-- Name: ix_f73c0982; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f73c0982 ON igfolder USING btree (uuid_);


--
-- TOC entry 2962 (class 1259 OID 5291204)
-- Dependencies: 1967
-- Name: ix_f75690bb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f75690bb ON website USING btree (userid);


--
-- TOC entry 2257 (class 1259 OID 5289947)
-- Dependencies: 1834
-- Name: ix_f7655cc3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f7655cc3 ON quartz_triggers USING btree (next_fire_time);


--
-- TOC entry 2574 (class 1259 OID 5290967)
-- Dependencies: 1891 1891
-- Name: ix_f7d28c2f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_f7d28c2f ON mbcategory USING btree (uuid_, groupid);


--
-- TOC entry 2441 (class 1259 OID 5290865)
-- Dependencies: 1871
-- Name: ix_f7dd0987; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f7dd0987 ON expandovalue USING btree (columnid);


--
-- TOC entry 2511 (class 1259 OID 5290921)
-- Dependencies: 1882
-- Name: ix_f8433677; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f8433677 ON journalarticleresource USING btree (groupid);


--
-- TOC entry 2963 (class 1259 OID 5291202)
-- Dependencies: 1967 1967 1967
-- Name: ix_f960131c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f960131c ON website USING btree (companyid, classnameid, classpk);


--
-- TOC entry 2997 (class 1259 OID 5291242)
-- Dependencies: 1971
-- Name: ix_f9966d55; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_f9966d55 ON chat_entry USING btree (fromuserid);


--
-- TOC entry 2881 (class 1259 OID 5291154)
-- Dependencies: 1951 1951
-- Name: ix_f9e51044; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_f9e51044 ON tagsvocabulary USING btree (groupid, name);


--
-- TOC entry 2612 (class 1259 OID 5290993)
-- Dependencies: 1896 1896
-- Name: ix_fab5a88b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_fab5a88b ON mbstatsuser USING btree (groupid, messagecount);


--
-- TOC entry 2553 (class 1259 OID 5290947)
-- Dependencies: 1887
-- Name: ix_fad05595; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_fad05595 ON layout USING btree (dlfolderid);


--
-- TOC entry 2931 (class 1259 OID 5291192)
-- Dependencies: 1959
-- Name: ix_fb646ca6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_fb646ca6 ON users_orgs USING btree (userid);


--
-- TOC entry 2786 (class 1259 OID 5291092)
-- Dependencies: 1934 1934
-- Name: ix_fc46fe16; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_fc46fe16 ON shoppingcart USING btree (groupid, userid);


--
-- TOC entry 2351 (class 1259 OID 5290813)
-- Dependencies: 1854 1854
-- Name: ix_fcd7c63d; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_fcd7c63d ON calevent USING btree (groupid, type_);


--
-- TOC entry 2398 (class 1259 OID 5290843)
-- Dependencies: 1864 1864
-- Name: ix_fdb4a946; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_fdb4a946 ON dlfileshortcut USING btree (uuid_, groupid);


--
-- TOC entry 2422 (class 1259 OID 5290859)
-- Dependencies: 1868 1868
-- Name: ix_fefc8da7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_fefc8da7 ON expandocolumn USING btree (tableid, name);


--
-- TOC entry 2801 (class 1259 OID 5291102)
-- Dependencies: 1937
-- Name: ix_ff203304; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_ff203304 ON shoppingitem USING btree (smallimageid);


--
-- TOC entry 3025 (class 1259 OID 5291588)
-- Dependencies: 1978
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


-- Completed on 2010-01-06 14:02:52 BRST

--
-- PostgreSQL database dump complete
--

