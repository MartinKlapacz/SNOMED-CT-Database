package com.idp.snomed.repositories;


import com.idp.snomed.models.Concept;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ConceptRepository extends CrudRepository<Concept, String> {

}
