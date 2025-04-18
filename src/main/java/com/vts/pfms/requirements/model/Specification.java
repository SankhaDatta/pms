package com.vts.pfms.requirements.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "pfms_specification_details")
public class Specification  {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long SpecsId;
	private String SpecificationName;
	private String Description;
	private String SpecsParameter;
	private String SpecsUnit;
	private Long SpecsInitiationId;
	private Long ParentId;
	private Long MainId;
	private String LinkedRequirement;
	private String SpecValue;
	private String maximumValue;
	private String minimumValue;
	private String CreatedBy;
    private String CreatedDate;
    private String ModifiedBy;
    private String ModifiedDate;
    private String LinkedSubSystem;
    private String IsMasterData;
	private int IsActive;
}
