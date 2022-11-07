package com.idp.snomed.models;

import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
@Getter
@Setter
@ToString
public class Concept {

    @Id
    @Column(name = "id")
    String id;

    @Column(name = "active")
    Character active;

    @Column(name = "moduleid")
    String moduleId;

    @Column(name = "definitionstatusid")
    String definitionStatusId;

    @Column(name = "effectivetime")
    Character effectiveTime;
}
