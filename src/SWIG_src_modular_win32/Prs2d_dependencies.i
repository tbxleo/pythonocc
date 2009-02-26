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
%{
#include <Graphic2d_Array1OfVertex.hxx>
#include <Graphic2d_Buffer.hxx>
#include <Graphic2d_BufferList.hxx>
#include <Graphic2d_CBitFields8.hxx>
#include <Graphic2d_Circle.hxx>
#include <Graphic2d_CircleDefinitionError.hxx>
#include <Graphic2d_CircleMarker.hxx>
#include <Graphic2d_Curve.hxx>
#include <Graphic2d_CurveDefinitionError.hxx>
#include <Graphic2d_DetectionColorError.hxx>
#include <Graphic2d_DisplayList.hxx>
#include <Graphic2d_DisplayStatus.hxx>
#include <Graphic2d_Drawer.hxx>
#include <Graphic2d_DrawerDefinitionError.hxx>
#include <Graphic2d_Ellips.hxx>
#include <Graphic2d_EllipsDefinitionError.hxx>
#include <Graphic2d_EllipsMarker.hxx>
#include <Graphic2d_FramedText.hxx>
#include <Graphic2d_GOPtr.hxx>
#include <Graphic2d_GraphicObject.hxx>
#include <Graphic2d_HArray1OfVertex.hxx>
#include <Graphic2d_HidingGraphicObject.hxx>
#include <Graphic2d_HidingText.hxx>
#include <Graphic2d_HSequenceOfPrimitives.hxx>
#include <Graphic2d_HSequenceOfVertex.hxx>
#include <Graphic2d_Image.hxx>
#include <Graphic2d_ImageDefinitionError.hxx>
#include <Graphic2d_ImageFile.hxx>
#include <Graphic2d_InfiniteLine.hxx>
#include <Graphic2d_InfiniteLineDefinitionError.hxx>
#include <Graphic2d_Line.hxx>
#include <Graphic2d_Marker.hxx>
#include <Graphic2d_MarkerDefinitionError.hxx>
#include <Graphic2d_OverrideColorError.hxx>
#include <Graphic2d_Paragraph.hxx>
#include <Graphic2d_PickMode.hxx>
#include <Graphic2d_Polyline.hxx>
#include <Graphic2d_PolylineDefinitionError.hxx>
#include <Graphic2d_PolylineMarker.hxx>
#include <Graphic2d_Primitive.hxx>
#include <Graphic2d_Segment.hxx>
#include <Graphic2d_SegmentDefinitionError.hxx>
#include <Graphic2d_SequenceNodeOfSequenceOfBuffer.hxx>
#include <Graphic2d_SequenceNodeOfSequenceOfGraphicObject.hxx>
#include <Graphic2d_SequenceNodeOfSequenceOfPolyline.hxx>
#include <Graphic2d_SequenceNodeOfSequenceOfPrimitives.hxx>
#include <Graphic2d_SequenceNodeOfSequenceOfVertex.hxx>
#include <Graphic2d_SequenceOfBuffer.hxx>
#include <Graphic2d_SequenceOfCurve.hxx>
#include <Graphic2d_SequenceOfGraphicObject.hxx>
#include <Graphic2d_SequenceOfPolyline.hxx>
#include <Graphic2d_SequenceOfPrimitives.hxx>
#include <Graphic2d_SequenceOfVertex.hxx>
#include <Graphic2d_SetOfCurves.hxx>
#include <Graphic2d_SetOfMarkers.hxx>
#include <Graphic2d_SetOfPolylines.hxx>
#include <Graphic2d_SetOfSegments.hxx>
#include <Graphic2d_Text.hxx>
#include <Graphic2d_TextDefinitionError.hxx>
#include <Graphic2d_TransientDefinitionError.hxx>
#include <Graphic2d_TransientManager.hxx>
#include <Graphic2d_TypeOfAlignment.hxx>
#include <Graphic2d_TypeOfComposition.hxx>
#include <Graphic2d_TypeOfFrame.hxx>
#include <Graphic2d_TypeOfPolygonFilling.hxx>
#include <Graphic2d_TypeOfPrimitive.hxx>
#include <Graphic2d_VectorialMarker.hxx>
#include <Graphic2d_Vertex.hxx>
#include <Graphic2d_View.hxx>
#include <Graphic2d_ViewMapping.hxx>
#include <Graphic2d_ViewPtr.hxx>
#include <Handle_Graphic2d_Buffer.hxx>
#include <Handle_Graphic2d_BufferList.hxx>
#include <Handle_Graphic2d_Circle.hxx>
#include <Handle_Graphic2d_CircleDefinitionError.hxx>
#include <Handle_Graphic2d_CircleMarker.hxx>
#include <Handle_Graphic2d_DetectionColorError.hxx>
#include <Handle_Graphic2d_DisplayList.hxx>
#include <Handle_Graphic2d_Drawer.hxx>
#include <Handle_Graphic2d_DrawerDefinitionError.hxx>
#include <Handle_Graphic2d_Ellips.hxx>
#include <Handle_Graphic2d_EllipsDefinitionError.hxx>
#include <Handle_Graphic2d_EllipsMarker.hxx>
#include <Handle_Graphic2d_FramedText.hxx>
#include <Handle_Graphic2d_GraphicObject.hxx>
#include <Handle_Graphic2d_HArray1OfVertex.hxx>
#include <Handle_Graphic2d_HidingGraphicObject.hxx>
#include <Handle_Graphic2d_HidingText.hxx>
#include <Handle_Graphic2d_HSequenceOfPrimitives.hxx>
#include <Handle_Graphic2d_HSequenceOfVertex.hxx>
#include <Handle_Graphic2d_Image.hxx>
#include <Handle_Graphic2d_ImageDefinitionError.hxx>
#include <Handle_Graphic2d_ImageFile.hxx>
#include <Handle_Graphic2d_InfiniteLine.hxx>
#include <Handle_Graphic2d_InfiniteLineDefinitionError.hxx>
#include <Handle_Graphic2d_Line.hxx>
#include <Handle_Graphic2d_Marker.hxx>
#include <Handle_Graphic2d_MarkerDefinitionError.hxx>
#include <Handle_Graphic2d_OverrideColorError.hxx>
#include <Handle_Graphic2d_Paragraph.hxx>
#include <Handle_Graphic2d_Polyline.hxx>
#include <Handle_Graphic2d_PolylineDefinitionError.hxx>
#include <Handle_Graphic2d_PolylineMarker.hxx>
#include <Handle_Graphic2d_Primitive.hxx>
#include <Handle_Graphic2d_Segment.hxx>
#include <Handle_Graphic2d_SegmentDefinitionError.hxx>
#include <Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer.hxx>
#include <Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject.hxx>
#include <Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline.hxx>
#include <Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives.hxx>
#include <Handle_Graphic2d_SequenceNodeOfSequenceOfVertex.hxx>
#include <Handle_Graphic2d_SetOfMarkers.hxx>
#include <Handle_Graphic2d_SetOfPolylines.hxx>
#include <Handle_Graphic2d_SetOfSegments.hxx>
#include <Handle_Graphic2d_Text.hxx>
#include <Handle_Graphic2d_TextDefinitionError.hxx>
#include <Handle_Graphic2d_TransientDefinitionError.hxx>
#include <Handle_Graphic2d_TransientManager.hxx>
#include <Handle_Graphic2d_VectorialMarker.hxx>
#include <Handle_Graphic2d_View.hxx>
#include <Handle_Graphic2d_ViewMapping.hxx>
#include <MMgt_StackManager.hxx>
#include <MMgt_TShared.hxx>
#include <Handle_MMgt_TShared.hxx>
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_CString.hxx>
#include <Standard_ctype.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Failure.hxx>
#include <Standard_GUID.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_IStream.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_Macro.hxx>
#include <Standard_math.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_OId.hxx>
#include <Standard_OStream.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_SStream.hxx>
#include <Standard_Static.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_Transient.hxx>
#include <Standard_Type.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <Aspect_Array1OfEdge.hxx>
#include <Aspect_AspectFillArea.hxx>
#include <Aspect_AspectFillAreaDefinitionError.hxx>
#include <Aspect_AspectLine.hxx>
#include <Aspect_AspectLineDefinitionError.hxx>
#include <Aspect_AspectMarker.hxx>
#include <Aspect_AspectMarkerDefinitionError.hxx>
#include <Aspect_Background.hxx>
#include <Aspect_BadAccess.hxx>
#include <Aspect_CardinalPoints.hxx>
#include <Aspect_CircularGrid.hxx>
#include <Aspect_CLayer2d.hxx>
#include <Aspect_ColorCubeColorMap.hxx>
#include <Aspect_ColorMap.hxx>
#include <Aspect_ColorMapDefinitionError.hxx>
#include <Aspect_ColorMapEntry.hxx>
#include <Aspect_ColorPixel.hxx>
#include <Aspect_ColorRampColorMap.hxx>
#include <Aspect_ColorScale.hxx>
#include <Aspect_Display.hxx>
#include <Aspect_Drawable.hxx>
#include <Aspect_Driver.hxx>
#include <Aspect_DriverDefinitionError.hxx>
#include <Aspect_DriverError.hxx>
#include <Aspect_DriverPtr.hxx>
#include <Aspect_Edge.hxx>
#include <Aspect_EdgeDefinitionError.hxx>
#include <Aspect_FillMethod.hxx>
#include <Aspect_FontMap.hxx>
#include <Aspect_FontMapDefinitionError.hxx>
#include <Aspect_FontMapEntry.hxx>
#include <Aspect_FontStyle.hxx>
#include <Aspect_FontStyleDefinitionError.hxx>
#include <Aspect_FormatOfSheetPaper.hxx>
#include <Aspect_FStream.hxx>
#include <Aspect_GenericColorMap.hxx>
#include <Aspect_GenId.hxx>
#include <Aspect_GraphicCallbackProc.hxx>
#include <Aspect_GraphicDevice.hxx>
#include <Aspect_GraphicDeviceDefinitionError.hxx>
#include <Aspect_GraphicDriver.hxx>
#include <Aspect_Grid.hxx>
#include <Aspect_GridDrawMode.hxx>
#include <Aspect_GridType.hxx>
#include <Aspect_Handle.hxx>
#include <Aspect_HatchStyle.hxx>
#include <Aspect_IdentDefinitionError.hxx>
#include <Aspect_IFStream.hxx>
#include <Aspect_IndexPixel.hxx>
#include <Aspect_InteriorStyle.hxx>
#include <Aspect_LineStyle.hxx>
#include <Aspect_LineStyleDefinitionError.hxx>
#include <Aspect_LineWidthDefinitionError.hxx>
#include <Aspect_ListingType.hxx>
#include <Aspect_MarkerStyle.hxx>
#include <Aspect_MarkerStyleDefinitionError.hxx>
#include <Aspect_MarkMap.hxx>
#include <Aspect_MarkMapDefinitionError.hxx>
#include <Aspect_MarkMapEntry.hxx>
#include <Aspect_Pixel.hxx>
#include <Aspect_PixMap.hxx>
#include <Aspect_PixmapDefinitionError.hxx>
#include <Aspect_PixmapError.hxx>
#include <Aspect_PlotMode.hxx>
#include <Aspect_PlotterOrigin.hxx>
#include <Aspect_PolygonOffsetMode.hxx>
#include <Aspect_PolyStyleDefinitionError.hxx>
#include <Aspect_RectangularGrid.hxx>
#include <Aspect_RenderingContext.hxx>
#include <Aspect_RGBPixel.hxx>
#include <Aspect_SequenceNodeOfSequenceOfColor.hxx>
#include <Aspect_SequenceNodeOfSequenceOfColorMapEntry.hxx>
#include <Aspect_SequenceNodeOfSequenceOfFontMapEntry.hxx>
#include <Aspect_SequenceNodeOfSequenceOfMarkMapEntry.hxx>
#include <Aspect_SequenceNodeOfSequenceOfTypeMapEntry.hxx>
#include <Aspect_SequenceNodeOfSequenceOfWidthMapEntry.hxx>
#include <Aspect_SequenceOfColor.hxx>
#include <Aspect_SequenceOfColorMapEntry.hxx>
#include <Aspect_SequenceOfFontMapEntry.hxx>
#include <Aspect_SequenceOfMarkMapEntry.hxx>
#include <Aspect_SequenceOfTypeMapEntry.hxx>
#include <Aspect_SequenceOfWidthMapEntry.hxx>
#include <Aspect_TypeMap.hxx>
#include <Aspect_TypeMapDefinitionError.hxx>
#include <Aspect_TypeMapEntry.hxx>
#include <Aspect_TypeOfColorMap.hxx>
#include <Aspect_TypeOfColorScaleData.hxx>
#include <Aspect_TypeOfColorScaleOrientation.hxx>
#include <Aspect_TypeOfColorScalePosition.hxx>
#include <Aspect_TypeOfColorSpace.hxx>
#include <Aspect_TypeOfConstraint.hxx>
#include <Aspect_TypeOfDeflection.hxx>
#include <Aspect_TypeOfDegenerateModel.hxx>
#include <Aspect_TypeOfDisplayText.hxx>
#include <Aspect_TypeOfDrawMode.hxx>
#include <Aspect_TypeOfEdge.hxx>
#include <Aspect_TypeOfFacingModel.hxx>
#include <Aspect_TypeOfFont.hxx>
#include <Aspect_TypeOfHighlightMethod.hxx>
#include <Aspect_TypeOfLayer.hxx>
#include <Aspect_TypeOfLine.hxx>
#include <Aspect_TypeOfMarker.hxx>
#include <Aspect_TypeOfPrimitive.hxx>
#include <Aspect_TypeOfRenderingMode.hxx>
#include <Aspect_TypeOfResize.hxx>
#include <Aspect_TypeOfStyleText.hxx>
#include <Aspect_TypeOfText.hxx>
#include <Aspect_TypeOfTriedronEcho.hxx>
#include <Aspect_TypeOfTriedronPosition.hxx>
#include <Aspect_TypeOfUpdate.hxx>
#include <Aspect_UndefinedMap.hxx>
#include <Aspect_Units.hxx>
#include <Aspect_WidthMap.hxx>
#include <Aspect_WidthMapDefinitionError.hxx>
#include <Aspect_WidthMapEntry.hxx>
#include <Aspect_WidthOfLine.hxx>
#include <Aspect_Window.hxx>
#include <Aspect_WindowDefinitionError.hxx>
#include <Aspect_WindowDriver.hxx>
#include <Aspect_WindowDriverPtr.hxx>
#include <Aspect_WindowError.hxx>
#include <Handle_Aspect_AspectFillArea.hxx>
#include <Handle_Aspect_AspectFillAreaDefinitionError.hxx>
#include <Handle_Aspect_AspectLine.hxx>
#include <Handle_Aspect_AspectLineDefinitionError.hxx>
#include <Handle_Aspect_AspectMarker.hxx>
#include <Handle_Aspect_AspectMarkerDefinitionError.hxx>
#include <Handle_Aspect_BadAccess.hxx>
#include <Handle_Aspect_CircularGrid.hxx>
#include <Handle_Aspect_ColorCubeColorMap.hxx>
#include <Handle_Aspect_ColorMap.hxx>
#include <Handle_Aspect_ColorMapDefinitionError.hxx>
#include <Handle_Aspect_ColorRampColorMap.hxx>
#include <Handle_Aspect_ColorScale.hxx>
#include <Handle_Aspect_Driver.hxx>
#include <Handle_Aspect_DriverDefinitionError.hxx>
#include <Handle_Aspect_DriverError.hxx>
#include <Handle_Aspect_EdgeDefinitionError.hxx>
#include <Handle_Aspect_FontMap.hxx>
#include <Handle_Aspect_FontMapDefinitionError.hxx>
#include <Handle_Aspect_FontStyleDefinitionError.hxx>
#include <Handle_Aspect_GenericColorMap.hxx>
#include <Handle_Aspect_GraphicDevice.hxx>
#include <Handle_Aspect_GraphicDeviceDefinitionError.hxx>
#include <Handle_Aspect_GraphicDriver.hxx>
#include <Handle_Aspect_Grid.hxx>
#include <Handle_Aspect_IdentDefinitionError.hxx>
#include <Handle_Aspect_LineStyleDefinitionError.hxx>
#include <Handle_Aspect_LineWidthDefinitionError.hxx>
#include <Handle_Aspect_MarkerStyleDefinitionError.hxx>
#include <Handle_Aspect_MarkMap.hxx>
#include <Handle_Aspect_MarkMapDefinitionError.hxx>
#include <Handle_Aspect_PixMap.hxx>
#include <Handle_Aspect_PixmapDefinitionError.hxx>
#include <Handle_Aspect_PixmapError.hxx>
#include <Handle_Aspect_PolyStyleDefinitionError.hxx>
#include <Handle_Aspect_RectangularGrid.hxx>
#include <Handle_Aspect_SequenceNodeOfSequenceOfColor.hxx>
#include <Handle_Aspect_SequenceNodeOfSequenceOfColorMapEntry.hxx>
#include <Handle_Aspect_SequenceNodeOfSequenceOfFontMapEntry.hxx>
#include <Handle_Aspect_SequenceNodeOfSequenceOfMarkMapEntry.hxx>
#include <Handle_Aspect_SequenceNodeOfSequenceOfTypeMapEntry.hxx>
#include <Handle_Aspect_SequenceNodeOfSequenceOfWidthMapEntry.hxx>
#include <Handle_Aspect_TypeMap.hxx>
#include <Handle_Aspect_TypeMapDefinitionError.hxx>
#include <Handle_Aspect_UndefinedMap.hxx>
#include <Handle_Aspect_WidthMap.hxx>
#include <Handle_Aspect_WidthMapDefinitionError.hxx>
#include <Handle_Aspect_Window.hxx>
#include <Handle_Aspect_WindowDefinitionError.hxx>
#include <Handle_Aspect_WindowDriver.hxx>
#include <Handle_Aspect_WindowError.hxx>
#include <Quantity_AbsorbedDose.hxx>
#include <Quantity_Acceleration.hxx>
#include <Quantity_AcousticIntensity.hxx>
#include <Quantity_Activity.hxx>
#include <Quantity_Admittance.hxx>
#include <Quantity_AmountOfSubstance.hxx>
#include <Quantity_AngularVelocity.hxx>
#include <Quantity_Area.hxx>
#include <Quantity_Array1OfCoefficient.hxx>
#include <Quantity_Array1OfColor.hxx>
#include <Quantity_Array2OfColor.hxx>
#include <Quantity_Capacitance.hxx>
#include <Quantity_Coefficient.hxx>
#include <Quantity_CoefficientOfExpansion.hxx>
#include <Quantity_Color.hxx>
#include <Quantity_ColorDefinitionError.hxx>
#include <Quantity_Color_1.hxx>
#include <Quantity_Concentration.hxx>
#include <Quantity_Conductivity.hxx>
#include <Quantity_Constant.hxx>
#include <Quantity_Consumption.hxx>
#include <Quantity_Content.hxx>
#include <Quantity_Convert.hxx>
#include <Quantity_Date.hxx>
#include <Quantity_DateDefinitionError.hxx>
#include <Quantity_Density.hxx>
#include <Quantity_DoseEquivalent.hxx>
#include <Quantity_ElectricCapacitance.hxx>
#include <Quantity_ElectricCharge.hxx>
#include <Quantity_ElectricCurrent.hxx>
#include <Quantity_ElectricFieldStrength.hxx>
#include <Quantity_ElectricPotential.hxx>
#include <Quantity_Energy.hxx>
#include <Quantity_Enthalpy.hxx>
#include <Quantity_Entropy.hxx>
#include <Quantity_Factor.hxx>
#include <Quantity_Force.hxx>
#include <Quantity_Frequency.hxx>
#include <Quantity_HArray1OfColor.hxx>
#include <Quantity_Illuminance.hxx>
#include <Quantity_Impedance.hxx>
#include <Quantity_Index.hxx>
#include <Quantity_Inductance.hxx>
#include <Quantity_KinematicViscosity.hxx>
#include <Quantity_KineticMoment.hxx>
#include <Quantity_Length.hxx>
#include <Quantity_Luminance.hxx>
#include <Quantity_LuminousEfficacity.hxx>
#include <Quantity_LuminousExposition.hxx>
#include <Quantity_LuminousFlux.hxx>
#include <Quantity_LuminousIntensity.hxx>
#include <Quantity_MagneticFieldStrength.hxx>
#include <Quantity_MagneticFlux.hxx>
#include <Quantity_MagneticFluxDensity.hxx>
#include <Quantity_Mass.hxx>
#include <Quantity_MassFlow.hxx>
#include <Quantity_MolarConcentration.hxx>
#include <Quantity_Molarity.hxx>
#include <Quantity_MolarMass.hxx>
#include <Quantity_MolarVolume.hxx>
#include <Quantity_MomentOfAForce.hxx>
#include <Quantity_MomentOfInertia.hxx>
#include <Quantity_Momentum.hxx>
#include <Quantity_NameOfColor.hxx>
#include <Quantity_Normality.hxx>
#include <Quantity_Parameter.hxx>
#include <Quantity_Period.hxx>
#include <Quantity_PeriodDefinitionError.hxx>
#include <Quantity_PhysicalQuantity.hxx>
#include <Quantity_PlaneAngle.hxx>
#include <Quantity_Power.hxx>
#include <Quantity_Pressure.hxx>
#include <Quantity_Quotient.hxx>
#include <Quantity_Rate.hxx>
#include <Quantity_Ratio.hxx>
#include <Quantity_Reluctance.hxx>
#include <Quantity_Resistance.hxx>
#include <Quantity_Resistivity.hxx>
#include <Quantity_Scalaire.hxx>
#include <Quantity_SolidAngle.hxx>
#include <Quantity_SoundIntensity.hxx>
#include <Quantity_SpecificHeatCapacity.hxx>
#include <Quantity_Speed.hxx>
#include <Quantity_SurfaceTension.hxx>
#include <Quantity_Temperature.hxx>
#include <Quantity_ThermalConductivity.hxx>
#include <Quantity_Torque.hxx>
#include <Quantity_TypeOfColor.hxx>
#include <Quantity_Velocity.hxx>
#include <Quantity_Viscosity.hxx>
#include <Quantity_Volume.hxx>
#include <Quantity_VolumeFlow.hxx>
#include <Quantity_Weight.hxx>
#include <Quantity_Work.hxx>
#include <Handle_Quantity_ColorDefinitionError.hxx>
#include <Handle_Quantity_DateDefinitionError.hxx>
#include <Handle_Quantity_HArray1OfColor.hxx>
#include <Handle_Quantity_PeriodDefinitionError.hxx>
%};

%import Graphic2d.i
%import MMgt.i
%import TCollection.i
%import Standard.i
%import Aspect.i
%import Quantity.i
