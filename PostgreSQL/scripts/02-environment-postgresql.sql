/* create the Full S-CT data tables */
/* Change the table suffix for different release type. _s stands for full, _d stands for delta, _s stands for snapshot */
set schema 'snomedct';

drop table if exists concept cascade;
create table concept(
  id varchar(18) not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  definitionstatusid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists description cascade;
create table description(
  id varchar(18) not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  conceptid varchar(18) not null,
  languagecode varchar(2) not null,
  typeid varchar(18) not null,
  term text not null,
  casesignificanceid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists textdefinition cascade;
create table textdefinition(
  id varchar(18) not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  conceptid varchar(18) not null,
  languagecode varchar(2) not null,
  typeid varchar(18) not null,
  term text not null,
  casesignificanceid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists relationship cascade;
create table relationship(
  id varchar(18) not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  sourceid varchar(18) not null,
  destinationid varchar(18) not null,
  relationshipgroup varchar(18) not null,
  typeid varchar(18) not null,
  characteristictypeid varchar(18) not null,
  modifierid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists stated_relationship cascade;
create table stated_relationship(
  id varchar(18) not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  sourceid varchar(18) not null,
  destinationid varchar(18) not null,
  relationshipgroup varchar(18) not null,
  typeid varchar(18) not null,
  characteristictypeid varchar(18) not null,
  modifierid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists langrefset cascade;
create table langrefset(
  id uuid not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  refsetid varchar(18) not null,
  referencedcomponentid varchar(18) not null,
  acceptabilityid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists associationrefset cascade;
create table associationrefset(
  id uuid not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  refsetid varchar(18) not null,
  referencedcomponentid varchar(18) not null,
  targetcomponentid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists attributevaluerefset cascade;
create table attributevaluerefset(
  id uuid not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  refsetid varchar(18) not null,
  referencedcomponentid varchar(18) not null,
  valueid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists simplerefset cascade;
create table simplerefset(
  id uuid not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  refsetid varchar(18) not null,
  referencedcomponentid varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists simplemaprefset cascade;
create table simplemaprefset(
  id uuid not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  refsetid varchar(18) not null,
  referencedcomponentid varchar(18) not null,
  maptarget text not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists complexmaprefset cascade;
create table complexmaprefset(
  id uuid not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  refsetid varchar(18) not null,
  referencedcomponentid varchar(18) not null,
  mapGroup smallint not null,
  mapPriority smallint not null,
  mapRule text,
  mapAdvice text,
  mapTarget text,
  correlationId varchar(18) not null,
  PRIMARY KEY(id, effectivetime)
);

drop table if exists extendedmaprefset cascade;
create table extendedmaprefset(
  id uuid not null,
  effectivetime char(8) not null,
  active char(1) not null,
  moduleid varchar(18) not null,
  refsetid varchar(18) not null,
  referencedcomponentid varchar(18) not null,
  mapGroup smallint not null,
  mapPriority smallint not null,
  mapRule text,
  mapAdvice text,
  mapTarget text,
  correlationId varchar(18),
  mapCategoryId varchar(18),
  PRIMARY KEY(id, effectivetime)
)