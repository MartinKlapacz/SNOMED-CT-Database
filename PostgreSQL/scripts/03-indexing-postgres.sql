-- This is the sample indexing script. The indexing should based on the local implementation requirements.

CREATE INDEX description_conceptid_idx ON snomedct.description
  USING btree (conceptid COLLATE pg_catalog."default");
CREATE INDEX textdefinition_conceptid_idx ON snomedct.textdefinition
  USING btree (conceptid);
CREATE INDEX relationship_idx ON snomedct.relationship
  USING btree (sourceid, destinationid);
CREATE INDEX stated_relationship_idx ON snomedct.stated_relationship
  USING btree (sourceid, destinationid);
CREATE INDEX langrefset_referencedcomponentid_idx ON snomedct.langrefset
  USING btree (referencedcomponentid);
CREATE INDEX associationrefset_idx ON snomedct.associationrefset
  USING btree (referencedcomponentid, targetcomponentid);
CREATE INDEX attributevaluerefset_idx ON snomedct.attributevaluerefset
  USING btree (referencedcomponentid, valueid);
CREATE INDEX simplerefset_referencedcomponentid_idx ON snomedct.simplerefset
  USING btree (referencedcomponentid);
CREATE INDEX complexmaprefset_referencedcomponentid_idx ON snomedct.complexmaprefset
  USING btree (referencedcomponentid);
CREATE INDEX extendedmaprefset_referencedcomponentid_idx ON snomedct.extendedmaprefset
  USING btree (referencedcomponentid);