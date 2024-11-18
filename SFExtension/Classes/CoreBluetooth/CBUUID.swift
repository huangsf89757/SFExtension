//
//  CBUUID.swift
//  SFExtension
//
//  Created by hsf on 2023/12/27.
//

import Foundation
import CoreBluetooth

/**
The standard service UUID defined in the `Bluetooth Developer Portal` website.
It will be used to create the standard service and obtain the standard service name.
 */
public extension SFWrapper where Base == CBUUID {
    static let genericAccessUUID               = CBUUID(string: "1800")
    static let genericAttributeUUID            = CBUUID(string: "1801")
    static let immediateAlertUUID              = CBUUID(string: "1802")
    static let linkLossUUID                    = CBUUID(string: "1803")
    static let txPowerUUID                     = CBUUID(string: "1804")
    static let currentTimeServiceUUID          = CBUUID(string: "1805")
    static let referenceTimeUpdateServiceUUID  = CBUUID(string: "1806")
    static let nextDSTChangeServiceUUID        = CBUUID(string: "1807")
    static let glucoseUUID                     = CBUUID(string: "1808")
    static let healthThermometerUUID           = CBUUID(string: "1809")
    static let deviceInformationUUID           = CBUUID(string: "180A")
    static let heartRateUUID                   = CBUUID(string: "180D")
    static let phoneAlertStatusServiceUUID     = CBUUID(string: "180E")
    static let batterServiceUUID               = CBUUID(string: "180F")
    static let bloodPressureUUID               = CBUUID(string: "1810")
    static let alertNotificationUUID           = CBUUID(string: "1811")
    static let humanInterfaceDeviceUUID        = CBUUID(string: "1812")
    static let scanParametersUUID              = CBUUID(string: "1813")
    static let runningSpeedAndCadenceUUID      = CBUUID(string: "1814")
    static let automationIOUUID                = CBUUID(string: "1815")
    static let cyclingSpeedAndCadenceUUID      = CBUUID(string: "1816")
    static let cyclingPowerUUID                = CBUUID(string: "1818")
    static let locationAndNavigationUUID       = CBUUID(string: "1819")
    static let environmentalSensingUUID        = CBUUID(string: "181A")
    static let bodyCompositionUUID             = CBUUID(string: "181B")
    static let userDataUUID                    = CBUUID(string: "181C")
    static let weightScaleUUID                 = CBUUID(string: "181D")
    static let bondManagementUUID              = CBUUID(string: "181E")
    static let continuousGlucoseMonitoringUUID = CBUUID(string: "181F")
    static let internetProtocolSupportUUID     = CBUUID(string: "1820")
    static let indoorPositioningUUID           = CBUUID(string: "1821")
    static let pulseOximeterUUID               = CBUUID(string: "1822")
    static let httpProxyUUID                   = CBUUID(string: "1823")
    static let transportDiscoveryUUID          = CBUUID(string: "1824")
    static let objectTransferUUID              = CBUUID(string: "1825")
    static let fitnessMachineUUID              = CBUUID(string: "1826")
    static let meshProvisioningServiceUUID     = CBUUID(string: "1827")
    static let meshProxyServiceUUID            = CBUUID(string: "1828")
    static let reconnectionConfigurationUUID   = CBUUID(string: "1829")
    static let insulinDeliveryUUID             = CBUUID(string: "182A")
}

/**
The standard characteristic UUID define in the `Bluetooth Developer Portal` website.
It will be used to create the standard characteristic and otain the standard characteristic name.
 */
public extension SFWrapper where Base == CBUUID {
    static let deviceNameUUID                                     = CBUUID(string: "2A00")
    static let appearanceUUID                                     = CBUUID(string: "2A01")
    static let peripheralPrivacyFlagUUID                          = CBUUID(string: "2A02")
    static let reconnectionAddressUUID                            = CBUUID(string: "2A03")
    static let peripheralPreferredConnectionParametersUUID        = CBUUID(string: "2A04")
    static let serviceChangedUUID                                 = CBUUID(string: "2A05")
    static let alertLevelUUID                                     = CBUUID(string: "2A06")
    static let txPowerLevelUUID                                   = CBUUID(string: "2A07")
    static let dateTimeUUID                                       = CBUUID(string: "2A08")
    static let dayOfWeekUUID                                      = CBUUID(string: "2A09")
    static let dayDateTimeUUID                                    = CBUUID(string: "2A0A")
    static let exactTime256UUID                                   = CBUUID(string: "2A0C")
    static let DSTOffsetUUID                                      = CBUUID(string: "2A0D")
    static let timeZoneUUID                                       = CBUUID(string: "2A0E")
    static let localTimeInformationUUID                           = CBUUID(string: "2A0F")
    static let timeWithDSTUUID                                    = CBUUID(string: "2A11")
    static let timeAccuracyUUID                                   = CBUUID(string: "2A12")
    static let timeSourceUUID                                     = CBUUID(string: "2A13")
    static let referenceTimeInformationUUID                       = CBUUID(string: "2A14")
    static let timeUpdateControlPointUUID                         = CBUUID(string: "2A16")
    static let timeUpdateStateUUID                                = CBUUID(string: "2A17")
    static let glucoseMeasurementUUID                             = CBUUID(string: "2A18")
    static let batteryLevelUUID                                   = CBUUID(string: "2A19")
    static let temperatureMeasurementUUID                         = CBUUID(string: "2A1C")
    static let temperatureTypeUUID                                = CBUUID(string: "2A1D")
    static let intermediateTemperatureUUID                        = CBUUID(string: "2A1E")
    static let measurementIntervalUUID                            = CBUUID(string: "2A21")
    static let bootKeyboardInputReportUUID                        = CBUUID(string: "2A22")
    static let systemIDUUID                                       = CBUUID(string: "2A23")
    static let modelNumberStringUUID                              = CBUUID(string: "2A24")
    static let serialNumberStringUUID                             = CBUUID(string: "2A25")
    static let firmwareRevisionStringUUID                         = CBUUID(string: "2A26")
    static let hardwareRevisionStringUUID                         = CBUUID(string: "2A27")
    static let softwareRevisionStringUUID                         = CBUUID(string: "2A28")
    static let manufacturerNameStringUUID                         = CBUUID(string: "2A29")
    static let IEEE11073_20601RegulatoryCertificationDataListUUID = CBUUID(string: "2A2A")
    static let currentTimeUUID                                    = CBUUID(string: "2A2B")
    static let magneticDeclinationUUID                            = CBUUID(string: "2A2C")
    static let scanRefreshUUID                                    = CBUUID(string: "2A31")
    static let bootKeyboardOutputReportUUID                       = CBUUID(string: "2A32")
    static let bootMouseInputReportUUID                           = CBUUID(string: "2A33")
    static let glucoseMeasurementContextUUID                      = CBUUID(string: "2A34")
    static let bloodPressureMeasurementUUID                       = CBUUID(string: "2A35")
    static let intermediateCuffPressureUUID                       = CBUUID(string: "2A36")
    static let heartRateMeasurementUUID                           = CBUUID(string: "2A37")
    static let bodySensorLocationUUID                             = CBUUID(string: "2A38")
    static let heartRateControlPointUUID                          = CBUUID(string: "2A39")
    static let alertStatusUUID                                    = CBUUID(string: "2A3F")
    static let ringerControlPointUUID                             = CBUUID(string: "2A40")
    static let ringerSettingUUID                                  = CBUUID(string: "2A41")
    static let alertCategoryIDBitMaskUUID                         = CBUUID(string: "2A42")
    static let alertCategoryIDUUID                                = CBUUID(string: "2A43")
    static let alertNotificationControlPointUUID                  = CBUUID(string: "2A44")
    static let unreadAlertStatusUUID                              = CBUUID(string: "2A45")
    static let newAlertUUID                                       = CBUUID(string: "2A46")
    static let supportedNewAlertCategoryUUID                      = CBUUID(string: "2A47")
    static let supportedUnreadAlertCategoryUUID                   = CBUUID(string: "2A48")
    static let bloodPressureFeatureUUID                           = CBUUID(string: "2A49")
    static let HIDInformationUUID                                 = CBUUID(string: "2A4A")
    static let reportMapUUID                                      = CBUUID(string: "2A4B")
    static let HIDControlPointUUID                                = CBUUID(string: "2A4C")
    static let reportUUID                                         = CBUUID(string: "2A4D")
    static let protocolModeUUID                                   = CBUUID(string: "2A4E")
    static let scanIntervalWindowUUID                             = CBUUID(string: "2A4F")
    static let PnPIDUUID                                          = CBUUID(string: "2A50")
    static let glucoseFeatureUUID                                 = CBUUID(string: "2A51")
    static let recordAccessControlPointUUID                       = CBUUID(string: "2A52")
    static let RSCMeasurementUUID                                 = CBUUID(string: "2A53")
    static let RSCFeatureUUID                                     = CBUUID(string: "2A54")
    static let SCControlPointUUID                                 = CBUUID(string: "2A55")
    static let digitalUUID                                        = CBUUID(string: "2A56")
    static let analogUUID                                         = CBUUID(string: "2A58")
    static let aggregateUUID                                      = CBUUID(string: "2A5A")
    static let CSCMeasurementUUID                                 = CBUUID(string: "2A5B")
    static let CSCFeatureUUID                                     = CBUUID(string: "2A5C")
    static let sensorLocationUUID                                 = CBUUID(string: "2A5D")
    static let PLXSpotCheckMeasurementUUID                        = CBUUID(string: "2A5E")
    static let PLXContinuousMeasurementUUID                       = CBUUID(string: "2A5F")
    static let PLXFeaturesUUID                                    = CBUUID(string: "2A60")
    static let cyclingPowerMeasurementUUID                        = CBUUID(string: "2A63")
    static let cyclingPowerVectorUUID                             = CBUUID(string: "2A64")
    static let cyclingPowerFeatureUUID                            = CBUUID(string: "2A65")
    static let cyclingPowerControlPointUUID                       = CBUUID(string: "2A66")
    static let locationAndSpeedUUID                               = CBUUID(string: "2A67")
    static let navigationUUID                                     = CBUUID(string: "2A68")
    static let positionQualityUUID                                = CBUUID(string: "2A69")
    static let LNFeatureUUID                                      = CBUUID(string: "2A6A")
    static let LNControlPointUUID                                 = CBUUID(string: "2A6B")
    static let elevationUUID                                      = CBUUID(string: "2A6C")
    static let pressureUUID                                       = CBUUID(string: "2A6D")
    static let temperatureUUID                                    = CBUUID(string: "2A6E")
    static let humidityUUID                                       = CBUUID(string: "2A6F")
    static let trueWindSpeedUUID                                  = CBUUID(string: "2A70")
    static let trueWindDirectionUUID                              = CBUUID(string: "2A71")
    static let apparentWindSpeedUUID                              = CBUUID(string: "2A72")
    static let apparentWindDirectionUUID                          = CBUUID(string: "2A73")
    static let gustFactorUUID                                     = CBUUID(string: "2A74")
    static let pollenConcentrationUUID                            = CBUUID(string: "2A75")
    static let UVIndexUUID                                        = CBUUID(string: "2A76")
    static let irradianceUUID                                     = CBUUID(string: "2A77")
    static let rainfallUUID                                       = CBUUID(string: "2A78")
    static let windChillUUID                                      = CBUUID(string: "2A79")
    static let heatIndexUUID                                      = CBUUID(string: "2A7A")
    static let dewPointUUID                                       = CBUUID(string: "2A7B")
    static let descriptorValueChangedUUID                         = CBUUID(string: "2A7D")
    static let aerobicHeartRateLowerLimitUUID                     = CBUUID(string: "2A7E")
    static let aerobicThresholdUUID                               = CBUUID(string: "2A7F")
    static let ageUUID                                            = CBUUID(string: "2A80")
    static let anaerobicHeartRateLowerLimitUUID                   = CBUUID(string: "2A81")
    static let anaerobicHeartRateUpperLimitUUID                   = CBUUID(string: "2A82")
    static let anaerobicThresholdUUID                             = CBUUID(string: "2A83")
    static let aerobicHeartRateUpperLimitUUID                     = CBUUID(string: "2A84")
    static let dateOfBirthUUID                                    = CBUUID(string: "2A85")
    static let dateOfThresholdAssessmentUUID                      = CBUUID(string: "2A86")
    static let emailAddressUUID                                   = CBUUID(string: "2A87")
    static let fatHeartRateLowerLimitUUID                         = CBUUID(string: "2A88")
    static let fatBurnHeartRateUpperLimitUUID                     = CBUUID(string: "2A89")
    static let firstNameUUID                                      = CBUUID(string: "2A8A")
    static let fiveZoneHeartRateLimitsUUID                        = CBUUID(string: "2A8B")
    static let genderUUID                                         = CBUUID(string: "2A8C")
    static let heartRateMaxUUID                                   = CBUUID(string: "2A8D")
    static let heightUUID                                         = CBUUID(string: "2A8E")
    static let hipCircumferenceUUID                               = CBUUID(string: "2A8F")
    static let lastNameUUID                                       = CBUUID(string: "2A90")
    static let maximumRecommendedHeartRateUUID                    = CBUUID(string: "2A91")
    static let restingHeartRateUUID                               = CBUUID(string: "2A92")
    static let sportTypeforAerobicandAnaerobicThresholdsUUID      = CBUUID(string: "2A93")
    static let threeZoneHeartRateLimitsUUID                       = CBUUID(string: "2A94")
    static let twoZoneHeartRateLimitUUID                          = CBUUID(string: "2A95")
    static let VO2MaxUUID                                         = CBUUID(string: "2A96")
    static let waistCircumferenceUUID                             = CBUUID(string: "2A97")
    static let weightUUID                                         = CBUUID(string: "2A98")
    static let databaseChangeIncrementUUID                        = CBUUID(string: "2A99")
    static let userIndexUUID                                      = CBUUID(string: "2A9A")
    static let bodyCompositionFeatureUUID                         = CBUUID(string: "2A9B")
    static let bodyCompositionMeasurementUUID                     = CBUUID(string: "2A9C")
    static let weightMeasurementUUID                              = CBUUID(string: "2A9D")
    static let weightScaleFeatureUUID                             = CBUUID(string: "2A9E")
    static let userControlPointUUID                               = CBUUID(string: "2A9F")
    static let magneticFluxDensity2DUUID                          = CBUUID(string: "2AA0")
    static let magneticFluxDensity3DUUID                          = CBUUID(string: "2AA1")
    static let languageUUID                                       = CBUUID(string: "2AA2")
    static let barometricPressureTrendUUID                        = CBUUID(string: "2AA3")
    static let bondManagementControlPointUUID                     = CBUUID(string: "2AA4")
    static let bondManagementFeatureUUID                          = CBUUID(string: "2AA5")
    static let centralAddressResolutionUUID                       = CBUUID(string: "2AA6")
    static let CGMMeasurementUUID                                 = CBUUID(string: "2AA7")
    static let CGMFeatureUUID                                     = CBUUID(string: "2AA8")
    static let CGMStatusUUID                                      = CBUUID(string: "2AA9")
    static let CGMSessionStartTimeUUID                            = CBUUID(string: "2AAA")
    static let CGMSessionRunTimeUUID                              = CBUUID(string: "2AAB")
    static let CGMSpecificOpsControlPointUUID                     = CBUUID(string: "2AAC")
    static let indoorPositioningConfigurationUUID                 = CBUUID(string: "2AAD")
    static let latitudeUUID                                       = CBUUID(string: "2AAE")
    static let longitudeUUID                                      = CBUUID(string: "2AAF")
    static let localNorthCoordinateUUID                           = CBUUID(string: "2AB0")
    static let localEastCoordinateUUID                            = CBUUID(string: "2AB1")
    static let floorNumberUUID                                    = CBUUID(string: "2AB2")
    static let altitudeUUID                                       = CBUUID(string: "2AB3")
    static let uncertaintyUUID                                    = CBUUID(string: "2AB4")
    static let locationNameUUID                                   = CBUUID(string: "2AB5")
    static let URIUUID                                            = CBUUID(string: "2AB6")
    static let HTTPHeadersUUID                                    = CBUUID(string: "2AB7")
    static let HTTPStatusCodeUUID                                 = CBUUID(string: "2AB8")
    static let HTTPEntityBodyUUID                                 = CBUUID(string: "2AB9")
    static let HTTPControlPointUUID                               = CBUUID(string: "2ABA")
    static let HTTPSSecurityUUID                                  = CBUUID(string: "2ABB")
    static let TDSControlPointUUID                                = CBUUID(string: "2ABC")
    static let OTSFeatureUUID                                     = CBUUID(string: "2ABD")
    static let objectNameUUID                                     = CBUUID(string: "2ABE")
    static let objectTypeUUID                                     = CBUUID(string: "2ABF")
    static let objectSizeUUID                                     = CBUUID(string: "2AC0")
    static let objectFirstCreatedUUID                             = CBUUID(string: "2AC1")
    static let objectLastModifiedUUID                             = CBUUID(string: "2AC2")
    static let objectIDUUID                                       = CBUUID(string: "2AC3")
    static let objectPropertiesUUID                               = CBUUID(string: "2AC4")
    static let objectActionControlPointUUID                       = CBUUID(string: "2AC5")
    static let objectListControlPointUUID                         = CBUUID(string: "2AC6")
    static let objectListFilterUUID                               = CBUUID(string: "2AC7")
    static let objectChangedUUID                                  = CBUUID(string: "2AC8")
    static let resolvablePrivateAddressOnlyUUID                   = CBUUID(string: "2AC9")
    static let fitnessMachineFeatureUUID                          = CBUUID(string: "2ACC")
    static let treadmillDataUUID                                  = CBUUID(string: "2ACD")
    static let crossTrainerDataUUID                               = CBUUID(string: "2ACE")
    static let stepClimberDataUUID                                = CBUUID(string: "2ACF")
    static let stairClimberDataUUID                               = CBUUID(string: "2AD0")
    static let rowerDataUUID                                      = CBUUID(string: "2AD1")
    static let indoorBikeDataUUID                                 = CBUUID(string: "2AD2")
    static let trainingStatusUUID                                 = CBUUID(string: "2AD3")
    static let supportedSpeedRangeUUID                            = CBUUID(string: "2AD4")
    static let supportedInclinationRangeUUID                      = CBUUID(string: "2AD5")
    static let supportedResistanceLevelRangeUUID                  = CBUUID(string: "2AD6")
    static let supportedHeartRateRangeUUID                        = CBUUID(string: "2AD7")
    static let supportedPowerRangeUUID                            = CBUUID(string: "2AD8")
    static let fitnessMachineControlPointUUID                     = CBUUID(string: "2AD9")
    static let fitnessMachineStatusUUID                           = CBUUID(string: "2ADA")
    static let dateUTCUUID                                        = CBUUID(string: "2AED")
    static let RCFeatureUUID                                      = CBUUID(string: "2B1D")
    static let RCSettingsUUID                                     = CBUUID(string: "2B1E")
    static let reconnectionConfigurationControlPointUUID          = CBUUID(string: "2B1F")
    static let IDDStatusChangedUUID                               = CBUUID(string: "2B20")
    static let IDDStatusUUID                                      = CBUUID(string: "2B21")
    static let IDDAnnunciationStatusUUID                          = CBUUID(string: "2B22")
    static let IDDFeaturesUUID                                    = CBUUID(string: "2B23")
    static let IDDStatusReaderControlPointUUID                    = CBUUID(string: "2B24")
    static let IDDCommandControlPointUUID                         = CBUUID(string: "2B25")
    static let IDDCommandDataUUID                                 = CBUUID(string: "2B26")
    static let IDDRecordAccessControlPointUUID                    = CBUUID(string: "2B27")
    static let IDDHistoryDataUUID                                 = CBUUID(string: "2B28")
}

/**
 The standard descriptors UUID define in the `Bluetooth Developer Portal` website.
 It will be used to create the standard characteristic and otain the standard characteristic name.
 */
public extension SFWrapper where Base == CBUUID {
    static let characteristicExtendedPropertiesUUID              = CBUUID(string: "2900")
    static let characteristicUserDescriptionUUID                 = CBUUID(string: "2901")
    static let clientCharacteristicConfigurationUUID             = CBUUID(string: "2902")
    static let serverCharacteristicConfigurationUUID             = CBUUID(string: "2903")
    static let characteristicPresentationFormatUUID              = CBUUID(string: "2904")
    static let characteristicAggregateFormatUUID                 = CBUUID(string: "2905")
    static let validRangeUUID                                    = CBUUID(string: "2906")
    static let externalReportReferenceUUID                       = CBUUID(string: "2907")
    static let reportReferenceUUID                               = CBUUID(string: "2908")
    static let numberofDigitalsUUID                              = CBUUID(string: "2909")
    static let valueTriggerSettingUUID                           = CBUUID(string: "290A")
    static let environmentalSensingConfigurationUUID             = CBUUID(string: "290B")
    static let environmentalSensingMeasurementUUID               = CBUUID(string: "290C")
    static let environmentalSensingTriggerSettingUUID            = CBUUID(string: "290D")
    static let timeTriggerSettingUUID                            = CBUUID(string: "290E")

}

public extension SFWrapper where Base == CBUUID {
    
    /**
     Obtain the UUID name
     If the UUID is the standard service UUID return the standard name
     If not, return the UUIDString as the name.
     */
    var name : String? {
        if base == CBUUID.sf.genericAccessUUID {
            return "Generic Access"
        } else if base == CBUUID.sf.genericAttributeUUID {
            return "Generic Attribute"
        } else if base == CBUUID.sf.immediateAlertUUID {
            return "Immediate Alert"
        } else if base == CBUUID.sf.linkLossUUID {
            return "Link Loss"
        } else if base == CBUUID.sf.txPowerUUID {
            return "Tx Power"
        } else if base == CBUUID.sf.currentTimeServiceUUID {
            return "Current Time Service"
        } else if base == CBUUID.sf.referenceTimeUpdateServiceUUID {
            return "Reference Time Update Service"
        } else if base == CBUUID.sf.nextDSTChangeServiceUUID {
            return "Next DST Change Service"
        } else if base == CBUUID.sf.glucoseUUID {
            return "Glucose"
        } else if base == CBUUID.sf.healthThermometerUUID {
            return "Health Thermometer"
        } else if base == CBUUID.sf.deviceInformationUUID {
            return "Device Information"
        } else if base == CBUUID.sf.heartRateUUID {
            return "Heart Rate"
        } else if base == CBUUID.sf.phoneAlertStatusServiceUUID {
            return "Phone Alert Status Service"
        } else if base == CBUUID.sf.batterServiceUUID {
            return "Batter Service"
        } else if base == CBUUID.sf.bloodPressureUUID {
            return "Blood Pressure"
        } else if base == CBUUID.sf.alertNotificationUUID {
            return "Alert Notification"
        } else if base == CBUUID.sf.humanInterfaceDeviceUUID {
            return "Human Interface Device"
        } else if base == CBUUID.sf.scanParametersUUID {
            return "Scan Parameters"
        } else if base == CBUUID.sf.runningSpeedAndCadenceUUID {
            return "Running Speed And Cadence"
        } else if base == CBUUID.sf.automationIOUUID {
            return "Automation IO"
        } else if base == CBUUID.sf.cyclingSpeedAndCadenceUUID {
            return "Cycling Speed And Cadence"
        } else if base == CBUUID.sf.cyclingPowerUUID {
            return "Cycling Power"
        } else if base == CBUUID.sf.locationAndNavigationUUID {
            return "Location And Navigation"
        } else if base == CBUUID.sf.environmentalSensingUUID {
            return "Environmental Sensing"
        } else if base == CBUUID.sf.bodyCompositionUUID {
            return "Body Composition"
        } else if base == CBUUID.sf.userDataUUID {
            return "User Data"
        } else if base == CBUUID.sf.weightScaleUUID {
            return "Weight Scale"
        } else if base == CBUUID.sf.bondManagementUUID {
            return "Bond Management"
        } else if base == CBUUID.sf.continuousGlucoseMonitoringUUID {
            return "Continuous Glucose Monitoring"
        } else if base == CBUUID.sf.internetProtocolSupportUUID {
            return "Internet Protocol Support"
        } else if base == CBUUID.sf.indoorPositioningUUID {
            return "Indoor Positioning"
        } else if base == CBUUID.sf.pulseOximeterUUID {
            return "Pulse Oximeter"
        } else if base == CBUUID.sf.httpProxyUUID {
            return "Http Proxy"
        } else if base == CBUUID.sf.transportDiscoveryUUID {
            return "Transport Discovery"
        } else if base == CBUUID.sf.objectTransferUUID {
            return "Object Transfer"
        } else if base == CBUUID.sf.fitnessMachineUUID {
            return "itness Machine"
        } else if base == CBUUID.sf.meshProvisioningServiceUUID {
            return "Mesh Provisioning Service"
        } else if base == CBUUID.sf.meshProxyServiceUUID {
            return "Mesh Proxy Service"
        } else if base == CBUUID.sf.reconnectionConfigurationUUID {
            return "Reconnection Configuration"
        } else if base == CBUUID.sf.insulinDeliveryUUID {
            return "Insulin Delivery"
        } else if base == CBUUID.sf.deviceNameUUID {
            return "Device Name"
        } else if base == CBUUID.sf.appearanceUUID {
            return "Appearance"
        } else if base == CBUUID.sf.peripheralPrivacyFlagUUID {
            return "Peripheral Privacy Flag"
        } else if base == CBUUID.sf.reconnectionAddressUUID {
            return "Reconnection Address"
        } else if base == CBUUID.sf.peripheralPreferredConnectionParametersUUID {
            return "Peripheral Preferred Connection Parameters"
        } else if base == CBUUID.sf.serviceChangedUUID {
            return "Service Changed"
        } else if base == CBUUID.sf.alertLevelUUID {
            return "Alert Level"
        } else if base == CBUUID.sf.txPowerLevelUUID {
            return "Tx Power Level"
        } else if base == CBUUID.sf.dateTimeUUID {
            return "Date Time"
        } else if base == CBUUID.sf.dayOfWeekUUID {
            return "Day Of Week"
        } else if base == CBUUID.sf.dayDateTimeUUID {
            return "Day Date Time"
        } else if base == CBUUID.sf.exactTime256UUID {
            return "Exact Time 256"
        } else if base == CBUUID.sf.DSTOffsetUUID {
            return "DST Offset"
        } else if base == CBUUID.sf.timeZoneUUID {
            return "Time Zone"
        } else if base == CBUUID.sf.localTimeInformationUUID {
            return "Local Time Information"
        } else if base == CBUUID.sf.timeWithDSTUUID {
            return "Time With DST"
        } else if base == CBUUID.sf.timeAccuracyUUID {
            return "Time Accuracy"
        } else if base == CBUUID.sf.timeSourceUUID {
            return "Time Source"
        } else if base == CBUUID.sf.referenceTimeInformationUUID {
            return "Reference Time Information"
        } else if base == CBUUID.sf.timeUpdateControlPointUUID {
            return "Time Update Control Point"
        } else if base == CBUUID.sf.timeUpdateStateUUID {
            return "Time Update State"
        } else if base == CBUUID.sf.glucoseMeasurementUUID {
            return "Glucose Measurement"
        } else if base == CBUUID.sf.batteryLevelUUID {
            return "Battery Level"
        } else if base == CBUUID.sf.temperatureMeasurementUUID {
            return "Temperature Measurement"
        } else if base == CBUUID.sf.temperatureTypeUUID {
            return "Temperature Type"
        } else if base == CBUUID.sf.intermediateTemperatureUUID {
            return "Intermediate Temperature"
        } else if base == CBUUID.sf.measurementIntervalUUID {
            return "Measurement Interval"
        } else if base == CBUUID.sf.bootKeyboardInputReportUUID {
            return "Boot Keyboard Input Report"
        } else if base == CBUUID.sf.systemIDUUID {
            return "System ID"
        } else if base == CBUUID.sf.modelNumberStringUUID {
            return "Model Number String"
        } else if base == CBUUID.sf.serialNumberStringUUID {
            return "Serial Number String"
        } else if base == CBUUID.sf.firmwareRevisionStringUUID {
            return "Firmware Revision String"
        } else if base == CBUUID.sf.hardwareRevisionStringUUID {
            return "Hardware Revision String"
        } else if base == CBUUID.sf.softwareRevisionStringUUID {
            return "Software Revision String"
        } else if base == CBUUID.sf.manufacturerNameStringUUID {
            return "Manufacturer Name String"
        } else if base == CBUUID.sf.IEEE11073_20601RegulatoryCertificationDataListUUID {
            return "IEEE11073-20601 Regulatory Certification Data List"
        } else if base == CBUUID.sf.currentTimeUUID {
            return "Current Time"
        } else if base == CBUUID.sf.magneticDeclinationUUID {
            return "Magnetic Declination"
        } else if base == CBUUID.sf.scanRefreshUUID {
            return "Scan Refresh"
        } else if base == CBUUID.sf.bootKeyboardOutputReportUUID {
            return "Boot Keyboard Output Report"
        } else if base == CBUUID.sf.bootMouseInputReportUUID {
            return "Boot Mouse Input Report"
        } else if base == CBUUID.sf.glucoseMeasurementContextUUID {
            return "Glucose Measurement Context"
        } else if base == CBUUID.sf.bloodPressureMeasurementUUID {
            return "Blood Pressure Measurement"
        } else if base == CBUUID.sf.intermediateCuffPressureUUID {
            return "Intermediate Cuff Pressure"
        } else if base == CBUUID.sf.heartRateMeasurementUUID {
            return "Heart Rate Measurement"
        } else if base == CBUUID.sf.bodySensorLocationUUID {
            return "Body Sensor Location"
        } else if base == CBUUID.sf.heartRateControlPointUUID {
            return "Heart Rate Control Point"
        } else if base == CBUUID.sf.alertStatusUUID {
            return "Alert Status"
        } else if base == CBUUID.sf.ringerControlPointUUID {
            return "Ringer Control Point"
        } else if base == CBUUID.sf.ringerSettingUUID {
            return "Ringer Setting"
        } else if base == CBUUID.sf.alertCategoryIDBitMaskUUID {
            return "Alert Category ID Bit Mask"
        } else if base == CBUUID.sf.alertCategoryIDUUID {
            return "Alert Category ID"
        } else if base == CBUUID.sf.alertNotificationControlPointUUID {
            return "Alert Notification Control Point"
        } else if base == CBUUID.sf.unreadAlertStatusUUID {
            return "Unread Alert Status"
        } else if base == CBUUID.sf.newAlertUUID {
            return "New Alert"
        } else if base == CBUUID.sf.supportedNewAlertCategoryUUID {
            return "Supported New Alert Category"
        } else if base == CBUUID.sf.supportedUnreadAlertCategoryUUID {
            return "Supported Unread Alert Category"
        } else if base == CBUUID.sf.bloodPressureFeatureUUID {
            return "Blood Pressure Feature"
        } else if base == CBUUID.sf.HIDInformationUUID {
            return "HID Information"
        } else if base == CBUUID.sf.reportMapUUID {
            return "Report Map"
        } else if base == CBUUID.sf.HIDControlPointUUID {
            return "HID Control Point"
        } else if base == CBUUID.sf.reportUUID {
            return "Report"
        } else if base == CBUUID.sf.protocolModeUUID {
            return "Protocol Mode"
        } else if base == CBUUID.sf.scanIntervalWindowUUID {
            return "Scan Interval Window"
        } else if base == CBUUID.sf.PnPIDUUID {
            return "Pn PID"
        } else if base == CBUUID.sf.glucoseFeatureUUID {
            return "Glucose Feature"
        } else if base == CBUUID.sf.recordAccessControlPointUUID {
            return "Record Access Control Point"
        } else if base == CBUUID.sf.RSCMeasurementUUID {
            return "RSC Measurement"
        } else if base == CBUUID.sf.RSCFeatureUUID {
            return "RSC Feature"
        } else if base == CBUUID.sf.SCControlPointUUID {
            return "SC Control Point"
        } else if base == CBUUID.sf.digitalUUID {
            return "Digital"
        } else if base == CBUUID.sf.analogUUID {
            return "Analog"
        } else if base == CBUUID.sf.aggregateUUID {
            return "Aggregate"
        } else if base == CBUUID.sf.CSCMeasurementUUID {
            return "CSC Measurement"
        } else if base == CBUUID.sf.CSCFeatureUUID {
            return "CSC Feature"
        } else if base == CBUUID.sf.sensorLocationUUID {
            return "Sensor Location"
        } else if base == CBUUID.sf.PLXSpotCheckMeasurementUUID {
            return "PLX Spot-Check Measurement"
        } else if base == CBUUID.sf.PLXContinuousMeasurementUUID {
            return "PLX Continuous Measurement"
        } else if base == CBUUID.sf.PLXFeaturesUUID {
            return "PLX Features"
        } else if base == CBUUID.sf.cyclingPowerMeasurementUUID {
            return "Cycling Power Measurement"
        } else if base == CBUUID.sf.cyclingPowerVectorUUID {
            return "Cycling Power Vector"
        } else if base == CBUUID.sf.cyclingPowerFeatureUUID {
            return "Cycling Power Feature"
        } else if base == CBUUID.sf.cyclingPowerControlPointUUID {
            return "Cycling Power Control Point"
        } else if base == CBUUID.sf.locationAndSpeedUUID {
            return "Location AndSpeed"
        } else if base == CBUUID.sf.navigationUUID {
            return "Navigation"
        } else if base == CBUUID.sf.positionQualityUUID {
            return "Position Quality"
        } else if base == CBUUID.sf.LNFeatureUUID {
            return "LN Feature"
        } else if base == CBUUID.sf.LNControlPointUUID {
            return "LN Control Point"
        } else if base == CBUUID.sf.elevationUUID {
            return "Elevation"
        } else if base == CBUUID.sf.pressureUUID {
            return "Pressure"
        } else if base == CBUUID.sf.temperatureUUID {
            return "Temperature"
        } else if base == CBUUID.sf.humidityUUID {
            return "Humidity"
        } else if base == CBUUID.sf.trueWindSpeedUUID {
            return "True Wind Speed"
        } else if base == CBUUID.sf.trueWindDirectionUUID {
            return "True Wind Direction"
        } else if base == CBUUID.sf.apparentWindSpeedUUID {
            return "Apparent Wind Speed"
        } else if base == CBUUID.sf.apparentWindDirectionUUID {
            return "Apparent Wind Direction"
        } else if base == CBUUID.sf.gustFactorUUID {
            return "Gust Factor"
        } else if base == CBUUID.sf.pollenConcentrationUUID {
            return "Pollen Concentration"
        } else if base == CBUUID.sf.UVIndexUUID {
            return "UVIndex"
        } else if base == CBUUID.sf.irradianceUUID {
            return "Irradiance"
        } else if base == CBUUID.sf.rainfallUUID {
            return "Rainfall"
        } else if base == CBUUID.sf.windChillUUID {
            return "Wind Chill"
        } else if base == CBUUID.sf.heatIndexUUID {
            return "Heat Index"
        } else if base == CBUUID.sf.dewPointUUID {
            return "Dew Point"
        } else if base == CBUUID.sf.descriptorValueChangedUUID {
            return "Descriptor Value Changed"
        } else if base == CBUUID.sf.aerobicHeartRateLowerLimitUUID {
            return "Aerobic Heart Rate Lower Limit"
        } else if base == CBUUID.sf.aerobicThresholdUUID {
            return "Aerobic Threshold"
        } else if base == CBUUID.sf.ageUUID {
            return "Age"
        } else if base == CBUUID.sf.anaerobicHeartRateLowerLimitUUID {
            return "Anaerobic Heart Rate Lower Limit"
        } else if base == CBUUID.sf.anaerobicHeartRateUpperLimitUUID {
            return "Anaerobic Heart Rate Upper Limit"
        } else if base == CBUUID.sf.anaerobicThresholdUUID {
            return "Anaerobic Threshold"
        } else if base == CBUUID.sf.aerobicHeartRateUpperLimitUUID {
            return "Aerobic Heart Rate Upper Limit"
        } else if base == CBUUID.sf.dateOfBirthUUID {
            return "Date Of Birth"
        } else if base == CBUUID.sf.dateOfThresholdAssessmentUUID {
            return "Date Of Threshold Assessment"
        } else if base == CBUUID.sf.emailAddressUUID {
            return "Email Address"
        } else if base == CBUUID.sf.fatHeartRateLowerLimitUUID {
            return "Fat Heart Rate Lower Limit"
        } else if base == CBUUID.sf.fatBurnHeartRateUpperLimitUUID {
            return "Fat Burn Heart Rate Upper Limit"
        } else if base == CBUUID.sf.firstNameUUID {
            return "First Name"
        } else if base == CBUUID.sf.fiveZoneHeartRateLimitsUUID {
            return "Five Zone Heart Rate Limits"
        } else if base == CBUUID.sf.genderUUID {
            return "Gender"
        } else if base == CBUUID.sf.heartRateMaxUUID {
            return "Heart Rate Max"
        } else if base == CBUUID.sf.heightUUID {
            return "Height"
        } else if base == CBUUID.sf.hipCircumferenceUUID {
            return "Hip Circumference"
        } else if base == CBUUID.sf.lastNameUUID {
            return "Last Name"
        } else if base == CBUUID.sf.maximumRecommendedHeartRateUUID {
            return "Maximum Recommended HeartRate"
        } else if base == CBUUID.sf.restingHeartRateUUID {
            return "Resting Heart Rate"
        } else if base == CBUUID.sf.sportTypeforAerobicandAnaerobicThresholdsUUID {
            return "Sport Type for Aerobicand Anaerobic Thresholds"
        } else if base == CBUUID.sf.threeZoneHeartRateLimitsUUID {
            return "Three Zone Heart Rate Limits"
        } else if base == CBUUID.sf.twoZoneHeartRateLimitUUID {
            return "Two Zone Heart Rate Limit"
        } else if base == CBUUID.sf.VO2MaxUUID {
            return "VO2Max"
        } else if base == CBUUID.sf.waistCircumferenceUUID {
            return "Waist Circumference"
        } else if base == CBUUID.sf.weightUUID {
            return "Weight"
        } else if base == CBUUID.sf.databaseChangeIncrementUUID {
            return "Database Change Increment"
        } else if base == CBUUID.sf.userIndexUUID {
            return "User Index"
        } else if base == CBUUID.sf.bodyCompositionFeatureUUID {
            return "Body Composition Feature"
        } else if base == CBUUID.sf.bodyCompositionMeasurementUUID {
            return "Body Composition Measurement"
        } else if base == CBUUID.sf.weightMeasurementUUID {
            return "Weight Measurement"
        } else if base == CBUUID.sf.weightScaleFeatureUUID {
            return "Weight Scale Feature"
        } else if base == CBUUID.sf.userControlPointUUID {
            return "User Control Point"
        } else if base == CBUUID.sf.magneticFluxDensity2DUUID {
            return "Magnetic Flux Density 2D"
        } else if base == CBUUID.sf.magneticFluxDensity3DUUID {
            return "Magnetic Flux Density 3D"
        } else if base == CBUUID.sf.languageUUID {
            return "Language"
        } else if base == CBUUID.sf.barometricPressureTrendUUID {
            return "Barometric Pressure Trend"
        } else if base == CBUUID.sf.bondManagementControlPointUUID {
            return "Bond Management Control Point"
        } else if base == CBUUID.sf.bondManagementFeatureUUID {
            return "Bond Management Feature"
        } else if base == CBUUID.sf.centralAddressResolutionUUID {
            return "Central Address Resolution"
        } else if base == CBUUID.sf.CGMMeasurementUUID {
            return "CGM Measurement"
        } else if base == CBUUID.sf.CGMFeatureUUID {
            return "CGM Feature"
        } else if base == CBUUID.sf.CGMStatusUUID {
            return "CGM Status"
        } else if base == CBUUID.sf.CGMSessionStartTimeUUID {
            return "CGM Session Start Time"
        } else if base == CBUUID.sf.CGMSessionRunTimeUUID {
            return "CGM Session Run Time"
        } else if base == CBUUID.sf.CGMSpecificOpsControlPointUUID {
            return "CGM Specific Ops Control Point"
        } else if base == CBUUID.sf.indoorPositioningConfigurationUUID {
            return "Indoor Positioning Configuration"
        } else if base == CBUUID.sf.latitudeUUID {
            return "Latitude"
        } else if base == CBUUID.sf.longitudeUUID {
            return "Longitude"
        } else if base == CBUUID.sf.localNorthCoordinateUUID {
            return "Local North Coordinate"
        } else if base == CBUUID.sf.localEastCoordinateUUID {
            return "Local East Coordinate"
        } else if base == CBUUID.sf.floorNumberUUID {
            return "Floor Number"
        } else if base == CBUUID.sf.altitudeUUID {
            return "Altitude"
        } else if base == CBUUID.sf.uncertaintyUUID {
            return "Uncertainty"
        } else if base == CBUUID.sf.locationNameUUID {
            return "Location Name"
        } else if base == CBUUID.sf.URIUUID {
            return "URI"
        } else if base == CBUUID.sf.HTTPHeadersUUID {
            return "HTTP Headers"
        } else if base == CBUUID.sf.HTTPStatusCodeUUID {
            return "HTTP StatusCode"
        } else if base == CBUUID.sf.HTTPEntityBodyUUID {
            return "HTTP EntityBody"
        } else if base == CBUUID.sf.HTTPControlPointUUID {
            return "HTTP ControlPoint"
        } else if base == CBUUID.sf.HTTPSSecurityUUID {
            return "HTTPS Security"
        } else if base == CBUUID.sf.TDSControlPointUUID {
            return "TDS Control Point"
        } else if base == CBUUID.sf.OTSFeatureUUID {
            return "OTS Feature"
        } else if base == CBUUID.sf.objectNameUUID {
            return "Object Name"
        } else if base == CBUUID.sf.objectTypeUUID {
            return "ObjectType"
        } else if base == CBUUID.sf.objectSizeUUID {
            return "Object Size"
        } else if base == CBUUID.sf.objectFirstCreatedUUID {
            return "Object First-Created"
        } else if base == CBUUID.sf.objectLastModifiedUUID {
            return "Object Last-Modified"
        } else if base == CBUUID.sf.objectIDUUID {
            return "Object ID"
        } else if base == CBUUID.sf.objectPropertiesUUID {
            return "Object Properties"
        } else if base == CBUUID.sf.objectActionControlPointUUID {
            return "Object Action Control Point"
        } else if base == CBUUID.sf.objectListControlPointUUID {
            return "ObjectList Control Point"
        } else if base == CBUUID.sf.objectListFilterUUID {
            return "Object List Filter"
        } else if base == CBUUID.sf.objectChangedUUID {
            return "Object Changed"
        } else if base == CBUUID.sf.resolvablePrivateAddressOnlyUUID {
            return "Resolvable Private Address Only"
        } else if base == CBUUID.sf.fitnessMachineFeatureUUID {
            return "Fitness Machine Feature"
        } else if base == CBUUID.sf.treadmillDataUUID {
            return "Treadmill Data"
        } else if base == CBUUID.sf.crossTrainerDataUUID {
            return "Cross Trainer Data"
        } else if base == CBUUID.sf.stepClimberDataUUID {
            return "Step Climber Data"
        } else if base == CBUUID.sf.stairClimberDataUUID {
            return "Stair Climber Data"
        } else if base == CBUUID.sf.rowerDataUUID {
            return "Rower Data"
        } else if base == CBUUID.sf.indoorBikeDataUUID {
            return "Indoor Bike Data"
        } else if base == CBUUID.sf.trainingStatusUUID {
            return "Training Status"
        } else if base == CBUUID.sf.supportedSpeedRangeUUID {
            return "Supported Speed Range"
        } else if base == CBUUID.sf.supportedInclinationRangeUUID {
            return "Supported Inclination Range"
        } else if base == CBUUID.sf.supportedResistanceLevelRangeUUID {
            return "Supported Resistance Level Range"
        } else if base == CBUUID.sf.supportedHeartRateRangeUUID {
            return "Supported Heart Rate Range"
        } else if base == CBUUID.sf.supportedPowerRangeUUID {
            return "Supported Power Range"
        } else if base == CBUUID.sf.fitnessMachineControlPointUUID {
            return "Fitness Machine Control Point"
        } else if base == CBUUID.sf.fitnessMachineStatusUUID {
            return "Fitness Machine Status"
        } else if base == CBUUID.sf.dateUTCUUID {
            return "Date UTC"
        } else if base == CBUUID.sf.RCFeatureUUID {
            return "RC Feature"
        } else if base == CBUUID.sf.RCSettingsUUID {
            return "RC Settings"
        } else if base == CBUUID.sf.reconnectionConfigurationControlPointUUID {
            return "Reconnection Configuration Control Point"
        } else if base == CBUUID.sf.IDDStatusChangedUUID {
            return "IDD Status Changed"
        } else if base == CBUUID.sf.IDDStatusUUID {
            return "IDD Status"
        } else if base == CBUUID.sf.IDDAnnunciationStatusUUID {
            return "IDD Annunciation Status"
        } else if base == CBUUID.sf.IDDFeaturesUUID {
            return "IDD Features"
        } else if base == CBUUID.sf.IDDStatusReaderControlPointUUID {
            return "IDD Status Reader Control Point"
        } else if base == CBUUID.sf.IDDCommandControlPointUUID {
            return "IDD Command Control Point"
        } else if base == CBUUID.sf.IDDCommandDataUUID {
            return "IDD Command Data"
        } else if base == CBUUID.sf.IDDRecordAccessControlPointUUID {
            return "IDD Record Access Control Point"
        } else if base == CBUUID.sf.IDDHistoryDataUUID {
            return "IDD History Data"
        } else if base == CBUUID.sf.characteristicExtendedPropertiesUUID {
            return "Characteristic Extended Properties"
        } else if base == CBUUID.sf.characteristicUserDescriptionUUID {
            return "Characteristic User Description"
        } else if base == CBUUID.sf.clientCharacteristicConfigurationUUID {
            return "Client Characteristic Configuration"
        } else if base == CBUUID.sf.serverCharacteristicConfigurationUUID {
            return "Server Characteristic Configuration"
        } else if base == CBUUID.sf.characteristicPresentationFormatUUID {
            return "Characteristic Presentation Format"
        } else if base == CBUUID.sf.characteristicAggregateFormatUUID {
            return "Characteristic Aggregate Format"
        } else if base == CBUUID.sf.validRangeUUID {
            return "Valid Range"
        } else if base == CBUUID.sf.externalReportReferenceUUID {
            return "External Report Reference"
        } else if base == CBUUID.sf.reportReferenceUUID {
            return "Report Reference"
        } else if base == CBUUID.sf.numberofDigitalsUUID {
            return "Number of Digitals"
        } else if base == CBUUID.sf.valueTriggerSettingUUID {
            return "Value Trigger Setting"
        } else if base == CBUUID.sf.environmentalSensingConfigurationUUID {
            return "Environmental Sensing Configuration"
        } else if base == CBUUID.sf.environmentalSensingMeasurementUUID {
            return "Environmental Sensing Measurement"
        } else if base == CBUUID.sf.environmentalSensingTriggerSettingUUID {
            return "Environmental Sensing Trigger Setting"
        } else if base == CBUUID.sf.timeTriggerSettingUUID {
            return "Time Trigger Setting"
        }
        return nil
    }
}

