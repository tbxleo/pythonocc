/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module RWStepBasic

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include RWStepBasic_dependencies.i


%include RWStepBasic_headers.i




%nodefaultctor RWStepBasic_RWActionAssignment;
class RWStepBasic_RWActionAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWActionAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWActionAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWMassMeasureWithUnit;
class RWStepBasic_RWMassMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWMassMeasureWithUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWMassMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MassMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MassMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MassMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWEffectivityAssignment;
class RWStepBasic_RWEffectivityAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWEffectivityAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWEffectivityAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_EffectivityAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_EffectivityAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_EffectivityAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWPlaneAngleMeasureWithUnit;
class RWStepBasic_RWPlaneAngleMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWPlaneAngleMeasureWithUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWPlaneAngleMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PlaneAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PlaneAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PlaneAngleMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndLengthUnit;
class RWStepBasic_RWConversionBasedUnitAndLengthUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndLengthUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndLengthUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndLengthUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndLengthUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndLengthUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSecurityClassificationLevel;
class RWStepBasic_RWSecurityClassificationLevel {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSecurityClassificationLevel();
		%feature("autodoc", "1");
		RWStepBasic_RWSecurityClassificationLevel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SecurityClassificationLevel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SecurityClassificationLevel &ent) const;

};

%nodefaultctor RWStepBasic_RWThermodynamicTemperatureUnit;
class RWStepBasic_RWThermodynamicTemperatureUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWThermodynamicTemperatureUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWThermodynamicTemperatureUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ThermodynamicTemperatureUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ThermodynamicTemperatureUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ThermodynamicTemperatureUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDerivedUnitElement;
class RWStepBasic_RWDerivedUnitElement {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDerivedUnitElement();
		%feature("autodoc", "1");
		RWStepBasic_RWDerivedUnitElement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DerivedUnitElement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DerivedUnitElement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DerivedUnitElement &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWExternalSource;
class RWStepBasic_RWExternalSource {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWExternalSource();
		%feature("autodoc", "1");
		RWStepBasic_RWExternalSource();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ExternalSource &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ExternalSource &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ExternalSource &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnit;
class RWStepBasic_RWSiUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnit &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean DecodePrefix(StepBasic_SiPrefix & aPrefix, const char * text) const;
		%feature("autodoc", "1");
		Standard_Boolean DecodeName(StepBasic_SiUnitName & aName, const char * text) const;
		%feature("autodoc", "1");
		TCollection_AsciiString EncodePrefix(const StepBasic_SiPrefix aPrefix) const;
		%feature("autodoc", "1");
		TCollection_AsciiString EncodeName(const StepBasic_SiUnitName aName) const;

};

%nodefaultctor RWStepBasic_RWProductDefinitionContext;
class RWStepBasic_RWProductDefinitionContext {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinitionContext();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionContext &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWLengthUnit;
class RWStepBasic_RWLengthUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWLengthUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWLengthUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_LengthUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_LengthUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_LengthUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWObjectRole;
class RWStepBasic_RWObjectRole {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWObjectRole();
		%feature("autodoc", "1");
		RWStepBasic_RWObjectRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ObjectRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ObjectRole &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ObjectRole &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWApprovalRelationship;
class RWStepBasic_RWApprovalRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApprovalRelationship();
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApprovalRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductDefinition;
class RWStepBasic_RWProductDefinition {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinition();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinition &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWRoleAssociation;
class RWStepBasic_RWRoleAssociation {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWRoleAssociation();
		%feature("autodoc", "1");
		RWStepBasic_RWRoleAssociation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_RoleAssociation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_RoleAssociation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_RoleAssociation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDocumentRepresentationType;
class RWStepBasic_RWDocumentRepresentationType {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocumentRepresentationType();
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentRepresentationType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentRepresentationType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentRepresentationType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentRepresentationType &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDocumentProductAssociation;
class RWStepBasic_RWDocumentProductAssociation {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocumentProductAssociation();
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentProductAssociation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentProductAssociation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentProductAssociation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentProductAssociation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWCalendarDate;
class RWStepBasic_RWCalendarDate {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWCalendarDate();
		%feature("autodoc", "1");
		RWStepBasic_RWCalendarDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CalendarDate &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CalendarDate &ent) const;

};

%nodefaultctor RWStepBasic_RWVersionedActionRequest;
class RWStepBasic_RWVersionedActionRequest {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWVersionedActionRequest();
		%feature("autodoc", "1");
		RWStepBasic_RWVersionedActionRequest();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_VersionedActionRequest &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_VersionedActionRequest &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_VersionedActionRequest &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource;
class RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSolidAngleUnit;
class RWStepBasic_RWSolidAngleUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSolidAngleUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSolidAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_SolidAngleUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWContractAssignment;
class RWStepBasic_RWContractAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWContractAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWContractAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ContractAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ContractAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ContractAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit;
class RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndVolumeUnit;
class RWStepBasic_RWConversionBasedUnitAndVolumeUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndVolumeUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndVolumeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndVolumeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndVolumeUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndVolumeUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWPersonAndOrganization;
class RWStepBasic_RWPersonAndOrganization {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWPersonAndOrganization();
		%feature("autodoc", "1");
		RWStepBasic_RWPersonAndOrganization();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PersonAndOrganization &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PersonAndOrganization &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PersonAndOrganization &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWOrganizationRole;
class RWStepBasic_RWOrganizationRole {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWOrganizationRole();
		%feature("autodoc", "1");
		RWStepBasic_RWOrganizationRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_OrganizationRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_OrganizationRole &ent) const;

};

%nodefaultctor RWStepBasic_RWSolidAngleMeasureWithUnit;
class RWStepBasic_RWSolidAngleMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSolidAngleMeasureWithUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSolidAngleMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SolidAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SolidAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_SolidAngleMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndRatioUnit;
class RWStepBasic_RWSiUnitAndRatioUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndRatioUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndRatioUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndRatioUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndRatioUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndMassUnit;
class RWStepBasic_RWConversionBasedUnitAndMassUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndMassUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndMassUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndMassUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndMassUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndMassUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWEffectivity;
class RWStepBasic_RWEffectivity {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWEffectivity();
		%feature("autodoc", "1");
		RWStepBasic_RWEffectivity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Effectivity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Effectivity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Effectivity &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWNamedUnit;
class RWStepBasic_RWNamedUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWNamedUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWNamedUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_NamedUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_NamedUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_NamedUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWApplicationContext;
class RWStepBasic_RWApplicationContext {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApplicationContext();
		%feature("autodoc", "1");
		RWStepBasic_RWApplicationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApplicationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApplicationContext &ent) const;

};

%nodefaultctor RWStepBasic_RWActionMethod;
class RWStepBasic_RWActionMethod {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWActionMethod();
		%feature("autodoc", "1");
		RWStepBasic_RWActionMethod();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionMethod &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionMethod &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionMethod &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWLocalTime;
class RWStepBasic_RWLocalTime {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWLocalTime();
		%feature("autodoc", "1");
		RWStepBasic_RWLocalTime();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_LocalTime &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_LocalTime &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_LocalTime &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWActionRequestAssignment;
class RWStepBasic_RWActionRequestAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWActionRequestAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWActionRequestAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionRequestAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionRequestAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionRequestAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnit;
class RWStepBasic_RWConversionBasedUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWOrganizationalAddress;
class RWStepBasic_RWOrganizationalAddress {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWOrganizationalAddress();
		%feature("autodoc", "1");
		RWStepBasic_RWOrganizationalAddress();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_OrganizationalAddress &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_OrganizationalAddress &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_OrganizationalAddress &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductDefinitionFormationRelationship;
class RWStepBasic_RWProductDefinitionFormationRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinitionFormationRelationship();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionFormationRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionFormationRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionFormationRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionFormationRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWIdentificationAssignment;
class RWStepBasic_RWIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWIdentificationAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWIdentificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_IdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_IdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_IdentificationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndTimeUnit;
class RWStepBasic_RWConversionBasedUnitAndTimeUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndTimeUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndTimeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndTimeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndTimeUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndTimeUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndRatioUnit;
class RWStepBasic_RWConversionBasedUnitAndRatioUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndRatioUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndRatioUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndRatioUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndRatioUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndRatioUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWGroup;
class RWStepBasic_RWGroup {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWGroup();
		%feature("autodoc", "1");
		RWStepBasic_RWGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Group &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Group &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Group &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDocumentRelationship;
class RWStepBasic_RWDocumentRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocumentRelationship();
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit;
class RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWDocumentFile;
class RWStepBasic_RWDocumentFile {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocumentFile();
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentFile();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentFile &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentFile &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentFile &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDateRole;
class RWStepBasic_RWDateRole {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDateRole();
		%feature("autodoc", "1");
		RWStepBasic_RWDateRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DateRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DateRole &ent) const;

};

%nodefaultctor RWStepBasic_RWProductDefinitionFormation;
class RWStepBasic_RWProductDefinitionFormation {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinitionFormation();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionFormation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionFormation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionFormation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionFormation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDerivedUnit;
class RWStepBasic_RWDerivedUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDerivedUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWDerivedUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DerivedUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DerivedUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DerivedUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndAreaUnit;
class RWStepBasic_RWSiUnitAndAreaUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndAreaUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndAreaUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndAreaUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndAreaUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWAction;
class RWStepBasic_RWAction {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWAction();
		%feature("autodoc", "1");
		RWStepBasic_RWAction();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Action &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Action &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Action &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWAddress;
class RWStepBasic_RWAddress {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWAddress();
		%feature("autodoc", "1");
		RWStepBasic_RWAddress();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Address &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Address &ent) const;

};

%nodefaultctor RWStepBasic_RWExternallyDefinedItem;
class RWStepBasic_RWExternallyDefinedItem {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWExternallyDefinedItem();
		%feature("autodoc", "1");
		RWStepBasic_RWExternallyDefinedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ExternallyDefinedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ExternallyDefinedItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ExternallyDefinedItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWIdentificationRole;
class RWStepBasic_RWIdentificationRole {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWIdentificationRole();
		%feature("autodoc", "1");
		RWStepBasic_RWIdentificationRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_IdentificationRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_IdentificationRole &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_IdentificationRole &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndPlaneAngleUnit;
class RWStepBasic_RWSiUnitAndPlaneAngleUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndPlaneAngleUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndPlaneAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndPlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndPlaneAngleUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWExternalIdentificationAssignment;
class RWStepBasic_RWExternalIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWExternalIdentificationAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWExternalIdentificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ExternalIdentificationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDateAndTime;
class RWStepBasic_RWDateAndTime {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDateAndTime();
		%feature("autodoc", "1");
		RWStepBasic_RWDateAndTime();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DateAndTime &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DateAndTime &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DateAndTime &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndLengthUnit;
class RWStepBasic_RWSiUnitAndLengthUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndLengthUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndLengthUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndLengthUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndLengthUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWLengthMeasureWithUnit;
class RWStepBasic_RWLengthMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWLengthMeasureWithUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWLengthMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_LengthMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_LengthMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_LengthMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndVolumeUnit;
class RWStepBasic_RWSiUnitAndVolumeUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndVolumeUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndVolumeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndVolumeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndVolumeUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWCertification;
class RWStepBasic_RWCertification {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWCertification();
		%feature("autodoc", "1");
		RWStepBasic_RWCertification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Certification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Certification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Certification &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWContractType;
class RWStepBasic_RWContractType {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWContractType();
		%feature("autodoc", "1");
		RWStepBasic_RWContractType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ContractType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ContractType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ContractType &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWPlaneAngleUnit;
class RWStepBasic_RWPlaneAngleUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWPlaneAngleUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWPlaneAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PlaneAngleUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit;
class RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductDefinitionWithAssociatedDocuments;
class RWStepBasic_RWProductDefinitionWithAssociatedDocuments {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinitionWithAssociatedDocuments();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionWithAssociatedDocuments();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionWithAssociatedDocuments &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionWithAssociatedDocuments &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionWithAssociatedDocuments &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWApprovalPersonOrganization;
class RWStepBasic_RWApprovalPersonOrganization {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApprovalPersonOrganization();
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalPersonOrganization();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalPersonOrganization &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalPersonOrganization &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApprovalPersonOrganization &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWApprovalRole;
class RWStepBasic_RWApprovalRole {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApprovalRole();
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalRole &ent) const;

};

%nodefaultctor RWStepBasic_RWCoordinatedUniversalTimeOffset;
class RWStepBasic_RWCoordinatedUniversalTimeOffset {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWCoordinatedUniversalTimeOffset();
		%feature("autodoc", "1");
		RWStepBasic_RWCoordinatedUniversalTimeOffset();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CoordinatedUniversalTimeOffset &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CoordinatedUniversalTimeOffset &ent) const;

};

%nodefaultctor RWStepBasic_RWApprovalStatus;
class RWStepBasic_RWApprovalStatus {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApprovalStatus();
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalStatus();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalStatus &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalStatus &ent) const;

};

%nodefaultctor RWStepBasic_RWDocumentProductEquivalence;
class RWStepBasic_RWDocumentProductEquivalence {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocumentProductEquivalence();
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentProductEquivalence();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentProductEquivalence &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentProductEquivalence &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentProductEquivalence &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWCharacterizedObject;
class RWStepBasic_RWCharacterizedObject {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWCharacterizedObject();
		%feature("autodoc", "1");
		RWStepBasic_RWCharacterizedObject();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CharacterizedObject &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CharacterizedObject &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_CharacterizedObject &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWGroupRelationship;
class RWStepBasic_RWGroupRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWGroupRelationship();
		%feature("autodoc", "1");
		RWStepBasic_RWGroupRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_GroupRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_GroupRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_GroupRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductContext;
class RWStepBasic_RWProductContext {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductContext();
		%feature("autodoc", "1");
		RWStepBasic_RWProductContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductContext &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWOrdinalDate;
class RWStepBasic_RWOrdinalDate {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWOrdinalDate();
		%feature("autodoc", "1");
		RWStepBasic_RWOrdinalDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_OrdinalDate &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_OrdinalDate &ent) const;

};

%nodefaultctor RWStepBasic_RWPersonalAddress;
class RWStepBasic_RWPersonalAddress {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWPersonalAddress();
		%feature("autodoc", "1");
		RWStepBasic_RWPersonalAddress();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PersonalAddress &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PersonalAddress &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PersonalAddress &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWMechanicalContext;
class RWStepBasic_RWMechanicalContext {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWMechanicalContext();
		%feature("autodoc", "1");
		RWStepBasic_RWMechanicalContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MechanicalContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MechanicalContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MechanicalContext &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWApproval;
class RWStepBasic_RWApproval {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApproval();
		%feature("autodoc", "1");
		RWStepBasic_RWApproval();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Approval &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Approval &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Approval &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProduct;
class RWStepBasic_RWProduct {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProduct();
		%feature("autodoc", "1");
		RWStepBasic_RWProduct();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Product &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Product &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Product &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDimensionalExponents;
class RWStepBasic_RWDimensionalExponents {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDimensionalExponents();
		%feature("autodoc", "1");
		RWStepBasic_RWDimensionalExponents();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DimensionalExponents &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DimensionalExponents &ent) const;

};

%nodefaultctor RWStepBasic_RWRatioMeasureWithUnit;
class RWStepBasic_RWRatioMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWRatioMeasureWithUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWRatioMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_RatioMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_RatioMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_RatioMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWNameAssignment;
class RWStepBasic_RWNameAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWNameAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWNameAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_NameAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_NameAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_NameAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWUncertaintyMeasureWithUnit;
class RWStepBasic_RWUncertaintyMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWUncertaintyMeasureWithUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWUncertaintyMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_UncertaintyMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_UncertaintyMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_UncertaintyMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDocumentType;
class RWStepBasic_RWDocumentType {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocumentType();
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentType &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWOrganization;
class RWStepBasic_RWOrganization {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWOrganization();
		%feature("autodoc", "1");
		RWStepBasic_RWOrganization();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Organization &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Organization &ent) const;

};

%nodefaultctor RWStepBasic_RWSecurityClassification;
class RWStepBasic_RWSecurityClassification {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSecurityClassification();
		%feature("autodoc", "1");
		RWStepBasic_RWSecurityClassification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SecurityClassification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SecurityClassification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_SecurityClassification &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductConceptContext;
class RWStepBasic_RWProductConceptContext {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductConceptContext();
		%feature("autodoc", "1");
		RWStepBasic_RWProductConceptContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductConceptContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductConceptContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductConceptContext &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductDefinitionRelationship;
class RWStepBasic_RWProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinitionRelationship();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWMeasureWithUnit;
class RWStepBasic_RWMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWMeasureWithUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWConversionBasedUnitAndAreaUnit;
class RWStepBasic_RWConversionBasedUnitAndAreaUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWConversionBasedUnitAndAreaUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndAreaUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndAreaUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndAreaUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndAreaUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWPersonAndOrganizationRole;
class RWStepBasic_RWPersonAndOrganizationRole {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWPersonAndOrganizationRole();
		%feature("autodoc", "1");
		RWStepBasic_RWPersonAndOrganizationRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PersonAndOrganizationRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PersonAndOrganizationRole &ent) const;

};

%nodefaultctor RWStepBasic_RWDateTimeRole;
class RWStepBasic_RWDateTimeRole {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDateTimeRole();
		%feature("autodoc", "1");
		RWStepBasic_RWDateTimeRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DateTimeRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DateTimeRole &ent) const;

};

%nodefaultctor RWStepBasic_RWProductType;
class RWStepBasic_RWProductType {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductType();
		%feature("autodoc", "1");
		RWStepBasic_RWProductType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductType &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWWeekOfYearAndDayDate;
class RWStepBasic_RWWeekOfYearAndDayDate {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWWeekOfYearAndDayDate();
		%feature("autodoc", "1");
		RWStepBasic_RWWeekOfYearAndDayDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_WeekOfYearAndDayDate &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_WeekOfYearAndDayDate &ent) const;

};

%nodefaultctor RWStepBasic_RWPerson;
class RWStepBasic_RWPerson {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWPerson();
		%feature("autodoc", "1");
		RWStepBasic_RWPerson();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Person &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Person &ent) const;

};

%nodefaultctor RWStepBasic_RWApplicationProtocolDefinition;
class RWStepBasic_RWApplicationProtocolDefinition {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApplicationProtocolDefinition();
		%feature("autodoc", "1");
		RWStepBasic_RWApplicationProtocolDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApplicationProtocolDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApplicationProtocolDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApplicationProtocolDefinition &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWProductDefinitionEffectivity;
class RWStepBasic_RWProductDefinitionEffectivity {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductDefinitionEffectivity();
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionEffectivity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionEffectivity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionEffectivity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionEffectivity &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDate;
class RWStepBasic_RWDate {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDate();
		%feature("autodoc", "1");
		RWStepBasic_RWDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Date &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Date &ent) const;

};

%nodefaultctor RWStepBasic_RWCertificationAssignment;
class RWStepBasic_RWCertificationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWCertificationAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWCertificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CertificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CertificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_CertificationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWContract;
class RWStepBasic_RWContract {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWContract();
		%feature("autodoc", "1");
		RWStepBasic_RWContract();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Contract &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Contract &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Contract &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWApprovalDateTime;
class RWStepBasic_RWApprovalDateTime {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApprovalDateTime();
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalDateTime();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalDateTime &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalDateTime &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApprovalDateTime &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndSolidAngleUnit;
class RWStepBasic_RWSiUnitAndSolidAngleUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndSolidAngleUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndSolidAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndSolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndSolidAngleUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWProductRelatedProductCategory;
class RWStepBasic_RWProductRelatedProductCategory {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductRelatedProductCategory();
		%feature("autodoc", "1");
		RWStepBasic_RWProductRelatedProductCategory();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductRelatedProductCategory &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductRelatedProductCategory &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductRelatedProductCategory &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndMassUnit;
class RWStepBasic_RWSiUnitAndMassUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndMassUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndMassUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndMassUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndMassUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWCertificationType;
class RWStepBasic_RWCertificationType {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWCertificationType();
		%feature("autodoc", "1");
		RWStepBasic_RWCertificationType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CertificationType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CertificationType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_CertificationType &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDocument;
class RWStepBasic_RWDocument {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocument();
		%feature("autodoc", "1");
		RWStepBasic_RWDocument();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Document &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Document &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Document &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWEulerAngles;
class RWStepBasic_RWEulerAngles {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWEulerAngles();
		%feature("autodoc", "1");
		RWStepBasic_RWEulerAngles();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_EulerAngles &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_EulerAngles &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_EulerAngles &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWMassUnit;
class RWStepBasic_RWMassUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWMassUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWMassUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MassUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MassUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MassUnit &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWGeneralProperty;
class RWStepBasic_RWGeneralProperty {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWGeneralProperty();
		%feature("autodoc", "1");
		RWStepBasic_RWGeneralProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_GeneralProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_GeneralProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_GeneralProperty &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWApplicationContextElement;
class RWStepBasic_RWApplicationContextElement {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWApplicationContextElement();
		%feature("autodoc", "1");
		RWStepBasic_RWApplicationContextElement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApplicationContextElement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApplicationContextElement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApplicationContextElement &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWSiUnitAndTimeUnit;
class RWStepBasic_RWSiUnitAndTimeUnit {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWSiUnitAndTimeUnit();
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndTimeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndTimeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndTimeUnit &ent) const;

};

%nodefaultctor RWStepBasic_RWProductCategory;
class RWStepBasic_RWProductCategory {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductCategory();
		%feature("autodoc", "1");
		RWStepBasic_RWProductCategory();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductCategory &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductCategory &ent) const;

};

%nodefaultctor RWStepBasic_RWProductCategoryRelationship;
class RWStepBasic_RWProductCategoryRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWProductCategoryRelationship();
		%feature("autodoc", "1");
		RWStepBasic_RWProductCategoryRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductCategoryRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductCategoryRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductCategoryRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWGroupAssignment;
class RWStepBasic_RWGroupAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWGroupAssignment();
		%feature("autodoc", "1");
		RWStepBasic_RWGroupAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_GroupAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_GroupAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_GroupAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWActionRequestSolution;
class RWStepBasic_RWActionRequestSolution {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWActionRequestSolution();
		%feature("autodoc", "1");
		RWStepBasic_RWActionRequestSolution();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionRequestSolution &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionRequestSolution &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionRequestSolution &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepBasic_RWDocumentUsageConstraint;
class RWStepBasic_RWDocumentUsageConstraint {
	public:
		%feature("autodoc", "1");
		~RWStepBasic_RWDocumentUsageConstraint();
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentUsageConstraint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentUsageConstraint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentUsageConstraint &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentUsageConstraint &ent, Interface_EntityIterator & iter) const;

};